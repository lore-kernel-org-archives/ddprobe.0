Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E8E3B0AD0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775752654; cv=none; b=gIJ1IvrMvAZfj8ASwE+da6Cm6Z+mbn5HGL9gsvyyOciQ0H+T/nQQ3yankKLjkKNqHx1ulsbd3EUf0uyuBKtPI2pPtQpuUrmJlMMS9sxYMRUFzI5GBICI1cZzt/JKYWIRO04IES05f1zt2rZeOVN5SgCm6hkVXY4U+AViUP6SQDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775752654; c=relaxed/simple;
	bh=lUvewmI+FPRTBhwUln/Fhc61/lcGE0bYu8AMJ5yyXEo=;
	h=To:Subject:From:Message-Id:Date; b=BupR/adqwYVTaZoL02k9c4Q1c6bfXmkLRVueUAjpbpii/Z0dcuNvtcARgvo6OML921JDXt+If3biWl+ew5SB25quJTDxZEhjWXDC9Fv8YCjzcQdRfFo/ciPoH3ZBZN0SZw9ZUrchtpZaGNC414O0yvuFVJrD65l6mYW+V5Daajw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYpjFX+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYpjFX+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF940C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775752653;
	bh=lUvewmI+FPRTBhwUln/Fhc61/lcGE0bYu8AMJ5yyXEo=;
	h=To:Subject:From:Date:From;
	b=VYpjFX+/1X+wFqxRb2ui9g69xZSivo860F/KlIsQtMqELHv6GIGx8VZllVeafovjf
	 pkqP/7LzyuO0tHIFEP+ZP2/ghPadPCLCLjomr9SREuPyBD1oErSuTltXEKhNeinV5E
	 z/+VmDDgyHUbtUsYDyx1ZgKlUTDUH2pALuHTo5ITzxKS+4tZ/UnZoEk9x1Us9fvpM1
	 wTKsflEKYXJhMIIurHB8L7oXEQ2/ul9TfLWxV2JUlvYS4pohHwoNJVeqG8wbNmaBqy
	 rLNFrpgplHB4VZWFM3R/GKfAzPIkQIDPF9dwDzNN2MOmE9w1wP/sZTzb/31lDnZHd1
	 9W30AhHm2Ng5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA2EF364A1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575265370.27468.7091451775068491315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d84d728ddaaea003f8b6d252e8a54260e05576e2ce92c6a9495a4b671504a40
Date: Thu, 09 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775752653
