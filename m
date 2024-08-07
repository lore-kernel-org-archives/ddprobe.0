Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158911E4AF
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723038954; cv=none; b=p5nkVXWL7pbHgghxAGksyMgpUGOkQR9KmGPh8pyLbJProkMEPtlhM/hWT2pLsVf80hdxinII1gRW6AuK/iem1Iy9MwLQgXt0MQn72RaOc/mjG0v9sS+2PAszHz8+/3AwkOpjnxXzsvgYwzPoaOgFDY2hH9MeqFgm98GxWP4OWmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723038954; c=relaxed/simple;
	bh=q6JzN5/lSMteNVRJfiMCcnqM5XwkqmT0qyyUUZAOQIE=;
	h=To:Subject:From:Message-Id:Date; b=O7zjrviTK/jtOuLkBECdWT5Lnkyish0/hPnLwJLLVS2GjY4j/ar6fLHN+wVoPxfQnef1guDb+OiHOsTUJKA79cTHtFSNcBmAJdf3mN4kaNXbSaxdrNck1l4vIJ3BbxbAmrtNy9EFehBt76vVJERGCEHSdRgsN/psLrXJwVwhIEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuulimKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuulimKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FB1C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723038953;
	bh=q6JzN5/lSMteNVRJfiMCcnqM5XwkqmT0qyyUUZAOQIE=;
	h=To:Subject:From:Date:From;
	b=EuulimKiOGKSXb45nQBVLkQt3HUTrZC89hS27qNFsCTmRrmCHTHPpyM5W0tQVtpY2
	 LbXcf+zjYtzAYsgF06Ggzm5IHtGYzSn6iXjdi9JLViqq4WLhM6HmOBGbVT/HVKMpfN
	 rzmFVPcQktDH572B3VOAO/wjvfrMCNgP5ZeJtEQxF/apUXE1NcMecAEfNhGe3tI0Xp
	 Fv3Za8WL5RnuonBT2/+waKBEar+pcvZ8QVM85rhN2RY/InvlVXrArzs+fHRfe7VyEj
	 dz3kRJx/nnM3W3EOycwAiODFS1HcCe5STaBybEoyKrT+YefvmIi1X7CtX3gY9AL5Ex
	 ldP/VT3h3p+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9331EC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172303895359.15097.13370388324919405151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44e847df73436d1290eab71810e1ef0acd380cf8f89baeeb8b06182296ed8d9
Date: Wed, 07 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723038953
