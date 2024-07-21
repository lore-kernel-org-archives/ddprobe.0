Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500EDDDBC
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721555754; cv=none; b=YbNVhiiVZzvYjR/0l2ynQpYYOua0tf1KcqlITup1l/mIKjDT2U5fpowZtikcmAzoOcMVGM1GiAXmPj6sB9ZRx8PQk1+knHbiO66JRMekz3EKN+QRlV6S8WV/JO4gqoijZRfhYh/VOOhogKjsgXuDJliogiOVAYLjdF3S7ODLmc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721555754; c=relaxed/simple;
	bh=INvQRZKruQcHJolGefDR9BisEotoo6Pf85qXA0Z+Yws=;
	h=To:Subject:From:Message-Id:Date; b=QpyKsMGSTeDJq1N07IMCXThLbcxW2NkclEaBb1JSfESUQxaJoJyM+RgrbzwWm8rn17fG0aHoC7hrBcpY2775t52CoBWp518RWwNukHgEfI25caErGuF6V38HXbcAvKK6I5j5bLm8y5871vUh7/bpYvfYRp2ydcBOjYbBING+l+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eeCVrnrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eeCVrnrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54B3C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721555753;
	bh=INvQRZKruQcHJolGefDR9BisEotoo6Pf85qXA0Z+Yws=;
	h=To:Subject:From:Date:From;
	b=eeCVrnrbrmIrAbq9jCqLgysxbSpnfclRNcy+91icHso2uhhfXgiYRPRSK8T7qp86Y
	 Mhz5GBJSjs3oHkxETswgT3licBLbNoCffXtmGPrVUgK+pt4kizWzW7foBbKG6+7spy
	 +uxzExVrCwczGIfPHdCN+omOmfnUwjgxoExTC2cMu5Z521uKWq6qY028y+RrKIz/o1
	 YbJbEn1S5AjZOu2bZKro2auu3o2pYyUSXTgBhWW019XpTbCEFd6yL2SiXYE83wFWIa
	 DMGGCyadx3x/5GstnCZsjbNDxMuNHhzjI7E12hT6fkvzxePZo587RlCzWPbNCFZp0u
	 0nuCqNswbF4fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF132C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155575370.10329.13759732738783021556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44c6c6cb6219a326a7dd4514b39c2f893b208f1060ec354dc749f7d74d13dbb1
Date: Sun, 21 Jul 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721555753
