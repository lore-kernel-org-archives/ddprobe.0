Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6130717837D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720005923; cv=none; b=IdTiTc/hD2ZDXCtBVa23TNEfeuP5+gUGzQ9MpZEDo3//ZcODIOSyASJ0Z714sVCRZa9uKT65hAMNJQuBgNRZyrDg/Dl/u/BlQRTW0lkTLbIoH3qsJ/grKBdKpSlRXtg5kzEfJ2lG1DKidIcF0tQRy8Ciw1aLQHoCO+OpYmW1ibI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720005923; c=relaxed/simple;
	bh=ctyE/RH3iQoBMHeCE6BZ8vpZy0MsZAsZdCdYCbzQaSQ=;
	h=To:Subject:From:Message-Id:Date; b=qbZeu46QHBXgYeSWhyprUddWf4yDrnof2hZxp7mLDGVohHUZv9hADCRL6iMxsGLbF5D4OB3BPG1S+PqutRo6TevrdwO4nK8tc1RzXvc5kEkTgLssA1K0Aod2tOqCwCHMuA5LbVM9f/vzCc8JEccIAjpqMmBTPpTCkjTYviTlKzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2/w783K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2/w783K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D860FC4AF0B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720005922;
	bh=ctyE/RH3iQoBMHeCE6BZ8vpZy0MsZAsZdCdYCbzQaSQ=;
	h=To:Subject:From:Date:From;
	b=B2/w783K+pLLV2iG3jcEUiGq+V4DrSlQ6bS6BhGAGIrm/slTokwqN/HA8g4Zkkk0B
	 HBo2T0J4ml/ZE2pTgt6DEa1AyEnS4dY4YRoBBiXXzXZjiM8MAT+UcG8IaxQ+5di8g3
	 1l9g3Uf7Yjn7RjAow4AGYUTMG6VgeNVTyxW1hyoGnEPlYBGNZQVTO0luyKtR4xHVeX
	 E2ai+lNTqEnbV0sYrWmEN0FcLxUj1Qoe0lv1hRiscGIVgWkt4WpP9kJgHdyQWNoKrz
	 K8iUJzTndFLOEbAfK+AIS3nz21gXyBs0vnC/5Se9KiKzY8UbfQp6ALHY+wgDGGfMBA
	 w48LoXLLeOBuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75C5C41513
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 11:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000592279.14068.6631250307629168022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb62436c3f0b56e1bdb3c3b8e21e0470cb8698b21663cc6767f28836d142b371
Date: Wed, 03 Jul 2024 11:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720005922
