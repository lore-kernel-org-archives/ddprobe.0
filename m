Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D32242D72
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769986434; cv=none; b=fQq4EYGFVs9dhdpRkncDVFaDzPRVfM3Be2azWYni+3GnS2XF2GqsUksOqRQIO2h4JWFJQwTi9vXWQctxo70yFY/Cjl7AuNKNRbEe7FdrF4yPITeTmB/94Is7To/LCvl7nzT7kuGyPJ/5Vqge1eHis6AzOh4XUWrJaLTqlbdUvt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769986434; c=relaxed/simple;
	bh=MvkAqn2M1dFCrsmaSfZ5aYOd4+FmcwSBkCf3Gav/3OE=;
	h=To:Subject:From:Message-Id:Date; b=iJhVF55zrKXU1YXJ58PQf+md1BN5zB1SYvpe+U1J2RTFJv9zku46lhe9StwUK8GFeKUD6Xic/FOtnTIomVbxY9pRgi2ZWHIQixAMxWorDPT7JfPZGoZC0i4eoSdrn5uhCWhNCveuf6z/X1S3lnOITSXnuqxxbh0F4EkPi3OlvWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg/Zixrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg/Zixrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11A2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769986433;
	bh=MvkAqn2M1dFCrsmaSfZ5aYOd4+FmcwSBkCf3Gav/3OE=;
	h=To:Subject:From:Date:From;
	b=Vg/Zixrbb8ZPCpWR3zQlrtdc38s4OLhRA5nmIzPN9OiwYgZIi7OHkshUbL0jNEoGm
	 jgCvDLRX2HSBKeoPuXLS+B8fj4ZvJ3m/oPf9L49ak/fHT/3OdYWV5s9U2SrhB4dNPg
	 lCaav2hxTGpXOFYfZr8pm5V7Ed/aNv9VoqtVoKo82ytneKxX6mR+Fz2pfQMB8vPqeT
	 egruYEe5uRbQnRYIk4OnNXWslXxFOUAZsVNPhdHlTllUs+rXIwjuTIXZxN7oiFOylC
	 xKrZpFdDVdkQI1bzPf0mfyyGHaesoAwRBF7pE5hDtsfNACGQwSyz5H9H6F3xqHblUj
	 m0GWHgYWsIwWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995E4E6529E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998643360.28639.13716502077671482037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85d42a1f5b0b0aff368cd02759d84a3ac8824bbcbc15bc86818b82b773e351a
Date: Sun, 01 Feb 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769986433
