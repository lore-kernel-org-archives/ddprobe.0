Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4077E4E66DB
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788534034; cv=none; b=YZ64EkDwOLaYlHWYmQv5chhMMUmOhOUOQvBADlBz7DxEpuB7u8FMdCTG0Gx1EYmt43PhkCQR2wgHvmRC3ztlfjv0F0ouV6T8Pn2pGl1Ii3+3PLPEagPGW758kksH1PCSdbBGwSWJVFlo4yXwPv24OzvMzOyd0T0Ow/aT+L1FxYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788534034; c=relaxed/simple;
	bh=HImAFzsp1t0s6WZAzE2B61JGCsCSPrikYuRuyeuDOic=;
	h=To:Subject:From:Message-Id:Date; b=nO3T5sP02JfHr/4u670Q2O+BDdL0LQECqvxw3j4NbbwV7E9en9eZa0OxZONfLn/eqHmPDI+GsdR7ealVSf9VmnTk4d8Xp5YIXXUNb9Dt6dFJ8sz5JOWAvtllsL3xzn2cwaiTvBqUNQvNhB7FEsImKFHyQr79tjYoRK3TmzzoV+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Urmaq7gZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Urmaq7gZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73C8C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788534033;
	bh=HImAFzsp1t0s6WZAzE2B61JGCsCSPrikYuRuyeuDOic=;
	h=To:Subject:From:Date:From;
	b=Urmaq7gZNFyRXv3yAC/LxuLFhON4BBhLuzkR091uC1AvluXqRTvMdPLY/6JGjr5se
	 pX286WdAWDPOv2uDLrWXz6XTodgH7R1Axi1Qfmt0SJtd+ERKrhvjlLZR11xzFkolUb
	 A0UChAC6UG0g+bG2WmbUIgKCF0urKy0nu2e3Vrtc+ehiveitRW+vA3ZEgPos4Mx8M0
	 lUPHprDbSXqU/GjMtJj2XbDhLGPV4R9c7P61wB1ocCKsGJ+aqhhkgLrgUtb6asp3YT
	 Q9SCtB55LXwihX1ZoF7LbCvxwNN94Rj2vslp7BwgKCSBz0If32TO1sPiRVl43z1z2A
	 B5GxDpuE15y+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B31C79F87
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853403372.31031.9782764974354611300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c454b640a059e9e34a77508f66979703d8a7fea8fd97147842061c74ca4a0c13
Date: Fri, 04 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788534033
