Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FC9320CCF
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766490833; cv=none; b=VUN0KcMWs+nWlsmvWLqabh2UY3JolJrmLx25oX5AH9/xjpODJertZZ4ZcXPPc2tKpMsG4vXcjfL+ymUCFukH/H9IeHn75tGy4EXtJH63ps0NC+a4p07PME1NqcD/UO377QIJDolvSYNNgKFmildxXTnYQvMw2RbDGj2J6M3TvVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766490833; c=relaxed/simple;
	bh=cfYDhahyRD0dJNunUaA0PCoSXbJtCtlAXzRmZbFQygs=;
	h=To:Subject:From:Message-Id:Date; b=qR+WThaSIW+POVYZltkTu7PlF6B3FPuSmMuTEHGO4ZbqceFHcv3kf4NDWFV/8uyQFGN2e84T95K+Sm+HHt5xau8XY1B3pG8UnUL/jkUxAyFHU+Ai4KgfXejqIveypsaEBz8Y44Fc8D00PDkwhYfrYF3JHewD1ioOSgrVwMF7Iiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJnv/Cp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJnv/Cp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B9C9C116D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766490833;
	bh=cfYDhahyRD0dJNunUaA0PCoSXbJtCtlAXzRmZbFQygs=;
	h=To:Subject:From:Date:From;
	b=MJnv/Cp+6q+Fmvw6clS0dMrJZOCyMKGAQ3vMzgRPiAbB4ra8kwBCpwAUYwwemWSGz
	 i1DDzZ/VuYNb/b8RTs0UWNTtvua7thSbJRp1VhX7PviOEef44nLFXonAPSmBSFtQxt
	 RGHqypdig5ixxguhxUKMmocKFLq7BkPXduVbasd8C3Uh4Hz2ZO9LF3/30qigb/trLi
	 G8ER2ftvpPSP+n8en8r0RNh+ENJkMOYZgzYdjDwdVICvTWTCuadeu7hqv4XmKyhP7t
	 lCAhtFsiSSKIrxJubRkyApC/ZrlIY/xFymzXvg46Mw5I8nlsJpfhxt3WRhIRt2Ahda
	 FPa1uc32aTIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F845E6B272
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649083358.9638.9472762768366083333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b6eb23182845beea5a1df5d1362ab6ec9827d695dd7476ce487e15ffc5c5fd
Date: Tue, 23 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766490833
