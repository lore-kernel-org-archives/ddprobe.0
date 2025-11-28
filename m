Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2615630EF85
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764331974; cv=none; b=dnRFZuHsYo2LtGZ16hC78RqBnq1yk+62kvoWoi1dbHo5dclMlTQy0YEmEpn8a2rcw3cUPQ+436KSzmB76MastBMxSHx8HqHBAsGUCVncc8znvP+VGMAYKJUzVfBXliW9QfCdPpr+DwMnhH0jRU9WT0KPeirdtwx+BzgU3NLFCC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764331974; c=relaxed/simple;
	bh=Z8eqpiy9Lq5FRpzIgcX4+3iNGeQUDPk/3p92W4hl8GM=;
	h=To:Subject:From:Message-Id:Date; b=FrAhs/OtS2TYmUFiS3meNrIwDRUMaFXDnfyb6dH5lzq6erCNfL4RXZQQJJSeroau1khQviIpFcpdYjsZI7oJgisueUzmAgOjGO3ybbxmTJj0AJdJgCn1Tw8dDSp+kHQ0fs0achzZtW4x9wDL4zoo6TmlRewpKebfiuyLmcPOvEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5pP5y7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5pP5y7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B19C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764331973;
	bh=Z8eqpiy9Lq5FRpzIgcX4+3iNGeQUDPk/3p92W4hl8GM=;
	h=To:Subject:From:Date:From;
	b=F5pP5y7GQSooKZMrXUIJ+gwfIArCk5V3l2uP+Lp/TjUDHVYj8DnCm3kcVOsz5mxoC
	 IqbGjAPWBqaeG2VedCu27ZFwo63keDIrh3w0UrnpvHxNAap/HznrhJcQfiOHRvg1GS
	 0bpC+U4SPcUggUdxxK2iXZC67ay+f4JYdFdcOxORU6OCpJqUm/4gM+Bycv0COIQK1o
	 zGieGf+urfelDcA4it9JRjY4lyE1FnviNQ4LGaubLreKNRIDvxuRyeCYbCugfMsuAa
	 Kh52L5a9y6IGteO7eJB+0dtU3xO0ZK+dlRS38H8hhx1qjLz12gJF3UGYWCphZFs1tQ
	 QYhku4TYxTAlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91631CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433197358.5326.5540127052859676315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8986686a406e9b3ca87473b9943706b42f77a00c94ea66b5def48fe20765d24
Date: Fri, 28 Nov 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764331973
