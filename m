Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A27210A11
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 16:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722704155; cv=none; b=iaA7cDUXXZBQrRnqYS/rQs66mjDbX6FK2d5aHUaYpneqdYFk9W4Ysdyib8HPuiQcBE3HAXNZtUudrUNa6eoFUWVLgsc552fs68FUa0GLo8bFepLBRfSiYpLye6OS0xQhy1ZZzTOkYwT/6VpYmL66Z0oyCEtvU1JpmOzCw4UwH/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722704155; c=relaxed/simple;
	bh=D2n/RVaOI/xAJt9yGFPJcRNfYJG2wDk8BWeD/rVP9f0=;
	h=To:Subject:From:Message-Id:Date; b=i7tw/dMKD9FthjGWpFagv/b7FBmmBXfn7gFbR0hj0r3aKFucLDGAhkTuTIp13lMfoE08Q8lC96FwvZe8PrHdntH7SYXYwnOJAz9Ml9hNcbEYWUE1dvfzRjkUQngQZ8LrG4yaO/HI4s6JrxbxHMp4KzbJffi4ReDjk/GRsGLLhCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8sysmfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e8sysmfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA36C4AF0A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722704154;
	bh=D2n/RVaOI/xAJt9yGFPJcRNfYJG2wDk8BWeD/rVP9f0=;
	h=To:Subject:From:Date:From;
	b=e8sysmfl72MyHL+0rAcSiJ2GIRbOplsMvPeKcQjUrUdKNj9QfH2r8nPj5RTCVzHP4
	 jEU1mh0nE1GwLw9r7BpUh1BWHa4fsddMRAey5sGUEQbeBCd7Fq1N6666hH4bJ+cCZF
	 9RSk20yHt0kn/aLg0kOKMxLDLcI3VZX2COmKAQ3T6yOrE7kmaKmAgZjvIWPAHaGWa1
	 tkvYZhoO5QaVvf0YnI5KZ3llQGRlWHCCfbL6diGr40raxFbh5hItcBnzixHVR6QVp4
	 eWmeBFGe1GBNIhW2jZiHRIMMobLn0tywsPsdOlmBKu1ZkMp/hTFAUh3Jt4UFs0e8ix
	 xPSRDZ2oY/ewA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A656CC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172270415362.26313.18286765961380840750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf202fe679bfbe67097ac822724b56778ff5e520f85f85978b2b97d353ac16e
Date: Sat, 03 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722704153
