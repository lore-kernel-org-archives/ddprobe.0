Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EC71078B
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716261143; cv=none; b=OamkzK8jYs6g1OGFBrDmKcGQZy//uHlHYXzemsMr+3XNkeAMZQuXP5AJnNRy4zX+UWHHy75QTn01jr2D8VRvRE/kf2fW09iAa2Wa2gTm62++JVVKriia8n/RX2i0EovzO9iTf0skUbM4yA3F2b1Fy5SFMjlVeA2xyuEZjiDAIug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716261143; c=relaxed/simple;
	bh=qdQbViudp0OycNORpjoyHnZRQW66kNE2yKPMBA1a0Jw=;
	h=To:Subject:From:Message-Id:Date; b=AhyUXJGqRGtOdOBImBs8xVrBxt7faJhxQ0mZ2ottM7e8dVD/2M/35VOiygTH2KhooIRnX9jGBLNs1n/8frqlEpn2AsmuUN8rusqzN5NslZg+RTWwWUyb4AdBIkp2P6/6pcrB6KzH0gkiphai5lszy86gvCEzEEqBGN2GxLBbLg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtfepSXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtfepSXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D9CC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716261142;
	bh=qdQbViudp0OycNORpjoyHnZRQW66kNE2yKPMBA1a0Jw=;
	h=To:Subject:From:Date:From;
	b=YtfepSXb/6X++tmsj/EWhSFssjT/W5xmrjE2BQpJtOFl9EQcM+R6MFyaO6YiUFbZe
	 Ov2sM4pizMbuOSW9x22GB3foPo8EFP0GFKx34OSAe1bt1kV/ZobBou8qLe+5c/nPp9
	 O0J97b/D89gMgpzCN9mNH8RlL7bbGR4cWlc13/zn7dL8VSOmLxhTYRGtk4Gme/QzXc
	 cdXzo9JEhVzPWbYo97WOg4wHNi/fsqfnSJRtP1n3fcc9lKD/mSQRqGRWfC2WAR58VC
	 /noJ8V5MAobTqf2AoFMqTPQEX4avDdCCi/pjIuNPyNnowNxdLwLmO8+Ujbdx08j2Xv
	 He7CPYlDFOg5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A7DC25B77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171626114277.30245.2874217752223341790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 390642514c31f124e6f7121ce78eb851ed94be00dd4b523c95ad83109dbb495a
Date: Tue, 21 May 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716261142
