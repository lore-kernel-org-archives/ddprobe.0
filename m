Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFD554650
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717260863; cv=none; b=Nsx0UILZ8aBeIOg0NZa2gPFkwUFFhek7pmepwEmRt8l6EMb2QZ4La7A5YhJJ7vx9Y2Cwwv1TlWAXxDhDWsSSkEMATGCGDIIqVxn2SW9/nEiqJ6zbFJXsAsRqDVSFWGKQjlKeKti01ERC3eSE0qqoo3G52/d1swOmAR0WguGe3ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717260863; c=relaxed/simple;
	bh=mQrRFP79FlbWMHdXEpdVPe/nAUvjVMz4D/8AqudWYLw=;
	h=To:Subject:From:Message-Id:Date; b=MvTA0KtmvitCBiAfIxjD3yxVoU0/+CXXIyFfkj5y9pa9LR0wAgzL9a/NGc/pdgv+XEpr/hCDxSrUpJ/epO306yMYW+1R+rHkzSapDFIJGu6Ts4n/rjhkbqmq2eQ1H3MjY3EqciwTbHE78hnREpyZ4QAiXVJHnUn8AhTssaB9YtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuXPD5bp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuXPD5bp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC47C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717260862;
	bh=mQrRFP79FlbWMHdXEpdVPe/nAUvjVMz4D/8AqudWYLw=;
	h=To:Subject:From:Date:From;
	b=fuXPD5bplz8j2YJLl1OeAgbEYiYafXF8aSOg97T7xfomPh8H4KsVONts52faV5OQk
	 jCyTE/LQcT3PNK4OjsUgvqFU5RpA2vcUz9NPb8DDwmCgrV6CK8ohCXqbN8xbzoSnHD
	 NQsG1Fh6+mTuasHSYtnotaeVvoW+sp4yL2ouj/p640Le1f9dfZ00Khl9vdaVTVyoW/
	 dV4vSVJAHL0CDWOxCBzGLKmE0VWM7ti3PwOqjPfvfEkYJvZx5vqFgS43PNtUdI0rgn
	 LGBIDw6GywqCytaCwhlQ/dLTOs0DT35kSen2FJT82jb6QowHn+J8MN8N3e6cZmbhCW
	 dQGPxGX8kUF2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BE4C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 16:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726086278.21892.17878765987121632503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00763c543cb112292ccedb3a96c0a9f0494df540a7cc58f5906999664c25b658
Date: Sat, 01 Jun 2024 16:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717260862
