Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1483421771C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768038234; cv=none; b=EBErPBu4yRrjsfb+1lpsBLt5CTuT35Am8dQ5eE8W3IqYJn4ahfDiVRrGLk46nU056yjo5QvI2NPtZ6hn5e70YoF76lpo+DULD0poBKO7NSLqohgIj+GcFIi/wgLrUh13qB6M4YmtgjPx6L3hwRSIALhlUTNAfEhLxOm6P2tmSl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768038234; c=relaxed/simple;
	bh=elsf5lHReqjI/Ushakhpuw1CTPr6OWCT6jwMxvvReSY=;
	h=To:Subject:From:Message-Id:Date; b=Zr5nVTa/khX9+8ZW8xWqGa4C1yHvcL+ydXnwWMHlq8fW1XxCQr8j0EidcAimCGhDF8DCAo8am2wwJblYOSBUZSFNSBUQ7yDe/Ih+qaM9dHGfmZk2xhwYNl3jlYYK7b64I+U5KWRxFu9Q9WMR9b1QuZbepS7PN/WzXobo3xKfs1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1BWuRjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1BWuRjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A618EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768038233;
	bh=elsf5lHReqjI/Ushakhpuw1CTPr6OWCT6jwMxvvReSY=;
	h=To:Subject:From:Date:From;
	b=t1BWuRjU77fNry3kRD8s4B1+I+xG63veOhCRNxVSZqdzEHBu1KCrExFH7eDMgs0w8
	 koZTdvoNP3f5eJRFTv4IVuQdt8Q1PrmLhSuAQFpaaeeZDa0I40z7rSaKnFgV7e55hS
	 /9Sv+YOyFgXYQR42NZaB27H2B/YgQqvxbh6z2FcA3EdlhsAtrx4It7lFHQ2Ud6MVrl
	 xo50JPZui/lXx1wn8gYNdz7gPPozCaTL4Eke3N7dkT6sgFzL5xSy5MGyg9IftIiy82
	 kZckA1HorinFjKJK5rPMJYOZPJLB25wRwmSTC3kbz3ItEFHYuXyZJ+hJ8NwSTBQeTy
	 MnOw6M5FRbnTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B0D277D9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803823357.26571.6645169110511488311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd2a9c1950b8c88f79eab7459faf676d8aa769e14ee600168569bd4b6d8c1ef
Date: Sat, 10 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768038233
