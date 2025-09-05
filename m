Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7C92F7ACC
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757090394; cv=none; b=bgS+4zrhrSWZjinnDMv2p9QWyqJPUT5A7sClYH+WJxxbYJe7S+WdYGn16brjlgB9KEAxdYHrobbezUZG/CXBELDJV0zjFbLUUe4tbAyJaBnBAhPE+IiN7unMMnS+SlcWmJKjCkbOef5RGqjzE0DZt7bV2yEaYkMxhgMC+GPUuRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757090394; c=relaxed/simple;
	bh=IlPvs2J04EbA9RIiZBeYMSS95Tw5H6R6SgRJr64BaTk=;
	h=To:Subject:From:Message-Id:Date; b=ZggAj4yidiq23IUx2Qx0vM3rIlDN0rItV8MxN/im+0j4A0u3hMvKNZY2N3BOlpH/tGqa1AcUvWJYjquaRp7F+frdaUeNJv68WJUN9E3QEcuDNMNAJO7NaYnx8qbtR7vTA2QOCnDntCMZwHaP2CJHfPdS/2yipgyaC2B+2UORsJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiWdSnuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiWdSnuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F769C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757090393;
	bh=IlPvs2J04EbA9RIiZBeYMSS95Tw5H6R6SgRJr64BaTk=;
	h=To:Subject:From:Date:From;
	b=fiWdSnuJxaLko2W+8kkrHeN/ILERSyyMVlnqxohldo6Xfs7YcYR9OnGwXDzaIajkO
	 Vf23YND/RLL7ZXHF0b7IK5RgL1JuLKubcWiikysty1kUsctgED0JUY9UqX7gXpxUp2
	 9a7BWub6RYB7YJm7wXfTbS1RvB9QC/CG1GjAjCXcr4St9JxCnz61tKaYndoSM4gdo9
	 Dx20iYh8+3wN9I0lu8aeTzOBZhJI0nwEDwMeKjGlnx7UuVk2cBoJbMj2Akyb7Y0IVx
	 Lu3PF4vwZs4BDWG1EaWYKUzxBw3xzgsrvxNdfqMaXHqKOiYA6j4GH//D9k9ofx0wHH
	 5QK1YjAV6cquA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA46CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709039357.15239.15017490436317477875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77a14b34f43574d3221d7aabe3ff81ab7856e2a943e262a1d367bff51d0b91f
Date: Fri, 05 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757090393
