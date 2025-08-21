Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE2A2D3A9F
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755767394; cv=none; b=n+5YjH/Jc5PkKIULldjqYI/dVeEKDLLBEF7ofCHjAr6sFjWS+vfEBVUFD5IXRxq3XEaGES1HfgVM+EhewWMq5MdHMATiO+eh6gVzKaJhn33OGdQ8pc35bwS1KuFLr0m3wXGNeC7yQQeOn89caf/wXDWM3sKX90+80TBmnBfqkg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755767394; c=relaxed/simple;
	bh=qVNstO9Y8wP91gN5mHNJUK+oAWapEnHWQNUfPq70zvI=;
	h=To:Subject:From:Message-Id:Date; b=uVBBuv+S62XkQmM8NG/mEtrweESTQ3sLmBhTK7jBnEBvZSboVvvfhwZqUSPMKRWicyMtAp9SD2p/+PCKEJn1Vmmky1iD0hCVtnxDOM6YzLiztBzuhrvhU46ZQo/sa1YIHDFeBw7oszzizmXxzc15e6FOV1/sivpw/1FAKlwEAu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBjQOld2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBjQOld2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA4FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755767393;
	bh=qVNstO9Y8wP91gN5mHNJUK+oAWapEnHWQNUfPq70zvI=;
	h=To:Subject:From:Date:From;
	b=DBjQOld2nTQ0ZVvPG6s0MgKES9YiWnzKD4dixneyjsxZnNXxohxPPM7X2m1ioIPkC
	 f7lqsVArQPj237wOKJyuTam6bGLyZmNS2iI3+LEc+IA3jAJZMSyVw8GhPyuEYU6KyF
	 WLAO9+1gKYM4SM3p8GAUtN4SWMSO9AJf13ognF5K9f55Qzhbu4woIHCs3LkT6HoSrT
	 S/APC/csoVukbcy2lANPcLGUMXjkQjPcbpl0wY+8RrBpIA80NvkNFkK394O4zm/nRl
	 Z8FFIgxyML6i0ReaGlOSM5fA9j9Ddset92Z21F9xf1IDD/Hpqzbcsa1u1uAkXgCU+9
	 SplTl51htSoQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F975CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576739358.7440.8932025292913562468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a7d4225aeac49193642cf64f86f4e2d1cc773c9de32094468ff6a683e0b9a2
Date: Thu, 21 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755767393
