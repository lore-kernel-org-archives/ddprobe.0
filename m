Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F010C218845
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774403094; cv=none; b=aMrgiSg82SyjS59Uu6+HdRE1lA6/jh2SyUqpJFwXaDCL6/sPWmR29OeliOcWmBScDocvAsyCfaU2WQIWYaD3cZ0tTfh2kefFMK6pdiAt1r7uFUXDzdhbmMwn69rBORgRnzuWaNY8sHlT0pXl81/95wNVknL/BVjOIY/LAqZ5EyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774403094; c=relaxed/simple;
	bh=uVtzuuzmu4pYwv5RSI7NLIAsbYaUPXxUEnInHFHWb0s=;
	h=To:Subject:From:Message-Id:Date; b=UoxYq2MN4/ic5R9JELtUr6ceI9D9lYl42vAje8KMr9Uj5itR14gnWbKZhP/tJ2+chsCs6/NrCIjV0XFg20iY7ZGwXU34evbQWh3zpu6MnNGPFUweRQGXmpMrAJ3XcRoRhbd+jdOF+7+++Cxvx4rlP+LxLeaW2KA3VOd6QmpTRYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2ZLqbJy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2ZLqbJy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E42C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774403093;
	bh=uVtzuuzmu4pYwv5RSI7NLIAsbYaUPXxUEnInHFHWb0s=;
	h=To:Subject:From:Date:From;
	b=I2ZLqbJyLDNclTA49B5D945vxsjw7ON7fdOnQ4nyQxklEKgYuG6E6YsiMkjnYPMSB
	 cJ+q0Bd4bEX1UayBGoW0eQWGDXtP1+hGjXO+YwxLR7ZgtupZS3wZbdwEjE+UUDGfUu
	 f34TGF4IcjeKln1u1rW/pGzQf1dPNowQIl39anSUf7XFoXEed50Ytfyn/x2YcuJ53W
	 h8PORCZo80u12JcTL951aigM9W6QPDxBcihD4PicXfkdREamOtmKSbn971IpKR31de
	 hkeVGqsJi6Q1RHM33Z7KxZCg1eUBnV+M00zY+Pd1d41JHjcGyhAVvOZ4NcSq/Ra7MO
	 hCvMdxgapdkKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93536108B91E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440309359.23644.18144387825222285801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69b2317ac1637d11247bd90f035475a5226184c5bec340dc7b215e694ff025a
Date: Wed, 25 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774403093
