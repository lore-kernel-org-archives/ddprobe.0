Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8362AE78
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763192994; cv=none; b=rEWjJt9h4keiEpO0Q+6qgjgHfIAGLz0klqf7EHzDgn1Zl8fDoDLVI6qIqN1Xn7gf28C+HSBPZTBwM3xRmHgRkt/pDotR8j2bKv3mpo7Jqyc5ADEZOvQr0ftrVa46TqHSqxJbNQGE+wSdHgt95M1k/Rz8Smc6QtTqvv3n/8tzxHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763192994; c=relaxed/simple;
	bh=AiTzEWiWIsaXbzQObDHT3s02GAVjXcw72ETnTGifvJ4=;
	h=To:Subject:From:Message-Id:Date; b=af4/kzb7mfCNpQ0gG4/bxGeY+yyQ2ZtYxdUiMQ84qtqpEvFCvO3ZHOukxTF3oT7cB4/F1Yq+i8AYZhsG3NO1+FlZS+bTjdxGxUWeEKBeHyEd7D1iOI7Obtex0GnFh1DHbJL90tNHuIU7lL50drgY9JKQ50+n/A3kGVI7WBecIxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gna1j+T3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gna1j+T3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7B6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763192993;
	bh=AiTzEWiWIsaXbzQObDHT3s02GAVjXcw72ETnTGifvJ4=;
	h=To:Subject:From:Date:From;
	b=gna1j+T3jnyFFkmklYitq1AOLnOD5qXvAIDUAWN96U3myy5+AjRNXReS8ZqcX/5YL
	 1gkhOpX60VkHog/JRZuFxWRDOg0pgwkzQIl1lEjBpYmf4a+eQT1zTnc4osT/MGsR7x
	 loBhK2gRAcKuFX68z4TYgIZ1CV1LPo6yan9uSSFbxv9NLkmlkkhsRLaodPmBo/TcsH
	 PTNOrgMw173Xvd8BU9+gP8VsX0fEchFREIzeHpNrjI55k/sijsuSHG+vdwd6Byh90R
	 wn80XgnFkt3LzgPaPzmDJu7tkH0eo+PJva2cuCvG7VEYBkXotQIo/5Y65923+U1wSE
	 vkXvoHBCgb3yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6AA3CEACFC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319299364.19583.3141523816134417979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3245825bdeb6fb33069b80d5c3cc5ea1f0756977235bf8f61dc5ac579d74c65
Date: Sat, 15 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763192993
