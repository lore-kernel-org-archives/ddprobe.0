Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3DB149C4D
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745659194; cv=none; b=h3hU9/wfmMhDFmkA5mjlbJya8LKXJ/ocIdXE1GCnMS2icYRhU47UqjAIUKinnxkAtkxc7C8dT0Henkay0mdkWSOyHJFZ2qhE4Bm96I0BOvfk/P4bt53/caIFouVdXfSu08s0lGuUajIYo62fqEUpIDRvD6Sy0QVA2vRe/crkJXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745659194; c=relaxed/simple;
	bh=UZaeX193DxwLZ0BAXHUx67wb0XCMnwTZqeV4e0gTNGw=;
	h=To:Subject:From:Message-Id:Date; b=hI48WjgI9GuwYwqF+ixfREiI8p40SKvJOFD7bNFzCI7IjbK3sHvu1bKCLszWPKavcrwO6DDAf45ebXrWEL6bY5GTtSiLs3UACHHLb0yTG9Gd5BOd3PsmOQsJ+Nde+lrpEgLUo6n2Awn1WrZ9oTUsA2M7UnamTGeMzxjVMFznIGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNnwEqnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNnwEqnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BCAC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745659193;
	bh=UZaeX193DxwLZ0BAXHUx67wb0XCMnwTZqeV4e0gTNGw=;
	h=To:Subject:From:Date:From;
	b=pNnwEqnwZniPHnuxxig5i/SyerED86gULKn1CUoYyYRg6naGsuM2lAW8jgt/h3C/a
	 qV94zPj6H2LBdS/CEWcNGJHaHRFT6ylxGt19f1L4H32Xziak4L3rwxxIRPCCycFcdW
	 xOnliyxDDuGSRM6SqfTbOKFYf6gQJitOVyAWMCGetr10YR7DgyzhpFP+ARIdnu7MKr
	 f8syF+f6pRTIBGbyVEHrnxFhUbEk5Nau00oQn0vYeYrGgQVtXu1dwKBYuVkMjwut5A
	 7Z3dVlFoJaf49Z2cCuHNFrLcJQG3Sqzd4WPIDTgTqqWH4sOAkccMbjXX/JFg6SNY38
	 AhaUglDrM5YsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932F5C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565919357.16346.9846707622029607981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9f7f5f196ee7051337df3db7775a66e61ae4c8ac36ba252dd6c979445b4885
Date: Sat, 26 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745659193
