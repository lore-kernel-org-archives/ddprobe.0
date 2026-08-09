Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECC24B0493
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786308034; cv=none; b=XHYtRqY9fNOqXCdgyKIXsIwptNLakYY0P72K07rit8cVHd8ckvVy1UX2Ea/Yli+RIT7MsYl91SE+gMW/c5ub2tbL/VWcJ/GFkrUty6eQT9zH4/m2Mb119DuA7GfjkdNQ+z8D5loNUUfimXGRmvfIZl/gomwIJaTyPCjPBwRHO8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786308034; c=relaxed/simple;
	bh=MNFfAtkQsdwM4QZ1YiBCLICe4pqTBrJodpF/Y7wQv9A=;
	h=To:Subject:From:Message-Id:Date; b=NEMTZhZFSWZsjUUmYh5ONM8BqP5rQaLGcAhtEzDIaDQO95s3NEoSk5j4jtu1c1PaUHlX942DXbiHD9Vl3Q+bxDmPKijeS7P+u+OLuxpIxBaydo2FsxnInJ++7e/m6EnGgc7LOPVn1xjbo/DnhauWQB/1StN2zcJudqcrAKvMOAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QwnTAfYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QwnTAfYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDA9BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786308034;
	bh=MNFfAtkQsdwM4QZ1YiBCLICe4pqTBrJodpF/Y7wQv9A=;
	h=To:Subject:From:Date:From;
	b=QwnTAfYt0UZKvz5GZBhQzxfDl1rTyUAq5/hkhojqCZhH+6DvmfPX88Oel6qcSkcoy
	 WgzVCCvxfoHuoXEXjA96+1xk2B4KLkT/cWF9ZbpX3OOVEchmKNYGOzJV5c5MoU4ROG
	 GNcNDVi25k3ULwLunQabo4vBrj3oC3VYymyZW6YB54J97goaRe1z6iCQx0PU00PHWv
	 MUxHouLh+GEwjFaWUdCw0ire332BSecSN+D6dw88OXaGkwgff6oRg2FXAVHJY9F5oq
	 bEaeIJe/Ik+g7Zi8M0rIqi+NDR5izM+GGeFiWvDjvuVrj/SWlEXnUjK+2mZfwKYFAA
	 PIKL0/8X0QUuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF436C5AD55
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630803369.17062.16955959681846253007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a6291fac8cf50f0d1b83925c82f7b08f0b1ae8623093740a161ebc33e544d6
Date: Sun, 09 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786308033
