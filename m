Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4AF3546F2
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784101714; cv=none; b=i4D6tnC9SL0acvn2oX92tSVdq9HUvVjSkK/UiE8W2ZihCDg3qogdh59Y8Bfj9VPTovGvklgRXv5bo+GXlmaz6t3HeBXljQ3yK2OqssT4lhFBtfvmgO2yozUdk3/Y6G2AqCI9PjRD7fu7ry8jQjO18Bd68w2fdUouK9tF1wHOU88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784101714; c=relaxed/simple;
	bh=e7aoXXrGBi96Hwdj/m9MaGnj9vDAJSfg7flEJFGSqEA=;
	h=To:Subject:From:Message-Id:Date; b=Pi5mixuI2MlFUzj5/cBhJ9cuhTXUGM6QnFRM/qeBrBBNBMHNZIMBkHzDefhAS9/hRYNeS0oN/YiZdNC60hNUGsFQGxnMF0p9y1mS1mXgtOC/ImHVR18zSrbkDLptgTOt65yWc7LiraViKotH24reE52HUtzlgY4/DXP7lsGPamY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kxof5DdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kxof5DdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFA7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784101713;
	bh=e7aoXXrGBi96Hwdj/m9MaGnj9vDAJSfg7flEJFGSqEA=;
	h=To:Subject:From:Date:From;
	b=Kxof5DdKgtfbpNvWREtNsS0B0LOIcfgk9NZh8wRUbTWxJZTfBlbQHikZOqQzd+EfR
	 A3IKTGdoIGoqQd3Bu3j/ro0dqzKL2vz/QsFUwdva7yNqfiAgYjJAHBhWSAPGS+nI1U
	 WEo3ujhyd/AXSbCIVydP7aAklNvybNoXfsUBWKqs8TSRZoZxjxIcIpCzwcvkwsjfKC
	 tfWt1RLzRNYWdiBcEoZUINaRxWVTREZVggiXfoplzELXBEYmluI9cP1XtFMcKL/+MP
	 39hUEFDV+3u6XalBBP2qa9dxrGJHfttnMINwf4S3cMEoexyzaDtk+Tx3CZD+JFYyDp
	 ceqqeUPfoMW5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B8C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410171368.3264.14664028672261821487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69c44bc1472c21bee12ae3626cb605a386f891e17568d6153b56071e2fc1f7f6
Date: Wed, 15 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784101713
