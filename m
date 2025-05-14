Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F98156C6F
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747255194; cv=none; b=IqqgyBS9euKJwcdXAkHNf45fywWTYnbf6Gbi3vXFby/z4za3fB61RmMTJVEU02gRvFAn2lp0Co+R7/pZFZQ42LcX/BsRn8DnxakFd1TN3548s8SK+LT65Y3/KRmNJI9SdfQ5b2XW8slfsvZwQQRbxDSdnD8KZuAvgkV55tLjFrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747255194; c=relaxed/simple;
	bh=Tnvzzb61Il4+35sXc1y9TeAVkH2xYOJOWNNtTTDs1FA=;
	h=To:Subject:From:Message-Id:Date; b=G7zID5iIRwSqjn21a+TOHt+cWNMt8yyov+I/KLh/G/q+Yz9aM5Z+Bl8/AoS3NIVFtB+Lqkc7+0f3QD7rnI9kAlzHLLyYFr13I9wquqAoOZFcQ66/QD7aus5Ya27cEJeyBpAza3WfAE2Ce2QUpfiAtFhL6t0yFzdKUKxbBlM4qI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oq+MiLtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oq+MiLtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13A2C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747255193;
	bh=Tnvzzb61Il4+35sXc1y9TeAVkH2xYOJOWNNtTTDs1FA=;
	h=To:Subject:From:Date:From;
	b=oq+MiLtq4/wzEE5ZjJWPcSQvsmynF1k9pMbOSrjOSfSG0HxHz5RDbAg8IhOTOeUWv
	 53UTdjrNMxU948y79xEFjoJxOi9UcSzKuP90g1E77+Evl6euZCZDXYEn/I7v6+Or4e
	 AjsGVouflHmBZK6Kbkm9bhP9sPdg1foxoRfHEZQNYLBJ0/7lLfyFF3VIRrX/F+EfsA
	 qr9RCHJAHPLptj6iE7BnOjr6xD3h2vb5jZ64SruxrXqffVYshnmMqiVmdczcVsjeLH
	 yWuALluHxkNlq7sX951K/YcACZgE/C2YlyD4noMaSomOpTQ5dVS74pxeqCcnh8Xhtz
	 eNoF3SYiT5LPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4CC3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725519357.12254.1557674137881654398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7233b6270e1dd1460a77e1bee123eafa8a4d7f94970bd0d87388bb565a5511
Date: Wed, 14 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747255193
