Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2991383B9
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711234697; cv=none; b=RGMgExoqJXwmCpoxll6ZgB3G2fOxb1/QDSatq6G7vnkf4EwefFjIJm9XooL3maUC6tTJ/orHhVT6y8Lcel1qTnwlvURXhHji/4sIO6/OayhULuZaZS4SbfRGfkewGAh+CUlLFNo8Q78uA8eXqGTH4ZNz6JMrRwBZ07SAGyK23qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711234697; c=relaxed/simple;
	bh=aC8tbhOOJiVuuRbzeFbRPGzJxel5xt39L4SYjtDcJSI=;
	h=To:Subject:From:Message-Id:Date; b=Gi8TjqxpDgj0d2ehrbc/4zQKavWfgrhAIZEzWp7BLhUsmSf9V0msDuDBN/I/eVYhAqc0Ho/HneWMN3OGeuyNznd3ypN23AYzEAJHIAvZ3sh8OeXs+17W2knIEiO7pDM45gM38GQG6Io1ogNrMZ0I6Jp0FUhEpyjk5ixZT5vcNKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuomMYik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuomMYik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D789C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711234696;
	bh=aC8tbhOOJiVuuRbzeFbRPGzJxel5xt39L4SYjtDcJSI=;
	h=To:Subject:From:Date:From;
	b=KuomMYik1WZia9D+AKf8qTFzDDxIpyzlBdfZMh/PdZnIHwS7TUuePWscOSmyPEAi1
	 umUaOzFhhL1oYGExrpHRF4pSui8F6sY2Fb99oDGCTclV2Y542dnmntArGck2I5d8kl
	 DO2g4U7O6PfajeYBRrZfURlIFsS/FQbWt2WeoSG7VyuhFxeoWaxHi/gxAlpjYBiwt/
	 ypgOMp/y3QafxVYWYInczXtNtXR2aVHnLCyIwdCchzpMrGBS4PZhLe5Gc6SwdSKMJP
	 fxaPNj5n6BVKjXziShuBeXKya9LAqIygdg/ALBL0I3cdvGfs+uP7uKENvNblXT57XE
	 GsT/n7BQCmG4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A928C54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171123469642.19227.523709374697835839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9fba6a49df8ed851de0a1fe5c1b96fa7d8cb3d62ea897e88a3269641d0fad6
Date: Sat, 23 Mar 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711234696
