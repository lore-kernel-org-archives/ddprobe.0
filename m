Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2616228F4
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731729354; cv=none; b=WRgdaKfMfbwUvKAK10IcAZQOI6bhGCHGGrQLNaoTYywk9q0kNd6ByK/B9DXhcezB6a5hR9CMMjkkd4iNhReVSdeQUkU4HTWi4MgxIVXO9E9KfWTzuLQg9QPond/SiscT+0LsLU4mvfFFA1sjZMCicSzzl6O2R94gh3LLbEUzPJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731729354; c=relaxed/simple;
	bh=OC586NAcaedfVCiCMKF1yPNySZdN+g5uGcLGGrPTABU=;
	h=To:Subject:From:Message-Id:Date; b=nP7Dle7dwNNPsmKzOJoDfv0/5/ioyRI+KuTQTN+XwXRKqy4k+xGbruh0DMQKlxy/TiKUWyoOpOPLcxvxnPbc6y8fZoq/SN82NXAGTLc8SElz5dpkUAxtRgqpWzezxbDlvb2lndDZ9O41RNkF5IU05dzeeZqOtZIyYmzHK+py2J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffTwgZsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffTwgZsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A896CC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731729353;
	bh=OC586NAcaedfVCiCMKF1yPNySZdN+g5uGcLGGrPTABU=;
	h=To:Subject:From:Date:From;
	b=ffTwgZsgS0hSiaUUqrx6v+fG12nMTP2dH5J7Ux461bsroe8PTxqKWKPPCfEq1Tg/D
	 AUgandO2p72XhR//Tu28Ot+skiSabL443TdrqM5c+Rz8u65/zYmHnRd8eDvqOuvvh2
	 PMn6ReBxLUqAU1hmX0XrlxWQ6eVOr0ZZDwsPQDJfirXwcdpSzaxqN8eUzjbnh8ql+D
	 xJyeo8WTv9fijm10MSkinYnXYbpul4l+3FCN20FQY2TqDuFVQbsyBBNZU21qrHLuOP
	 OQBGZo92CAd1pdVOwh4Evp0YGeWYlJoP919/EQHveUdtY6Gg0QrsanTCOVqg8uk/ju
	 vQ4bGWyC5KRwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2D9D68BE1
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173172935359.16532.7612249158645794439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 532df3d812f9a532178555c935b37304b11dbb02b32ad2d8e191d59adadd5a96
Date: Sat, 16 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731729353
