Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC4C172BA9
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713377963; cv=none; b=QbdRRPLLYvMt+sPjZ71a1FPsiU0QlcfWgqiBK//xa8DPXHo+6raM/+k4Bn8efPnOHuioPwvUBP49CVEWiYy72dnEBlvzncotkwf19AaRB6ATloEPrlfbHELhh84aM6/ifwzgm5BgKLig1ZVI2di9BFjoYnnp8G+DROQuw4+/xII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713377963; c=relaxed/simple;
	bh=KBx+LYqWmzUKRLtdZeNB3jbxda/bl4kLaO8cQDeJe4g=;
	h=To:Subject:From:Message-Id:Date; b=aW1wg93I25r31KMFBL5yuUYBHhugjjvUzi2D2jyqpZzqC/rZwmvUa6GI/XMr3KzEH1VQZv56mhGRQbX18SRSMYYgyr1jO8BOy//rT2ZuFk7gOSJB8y+N9ygDlvDM1CHIztvwv3hUOrFyx36NXMnFgFmafR+ekUspoh8Wlxs9wWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wms+VZ64; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wms+VZ64"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F12C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713377962;
	bh=KBx+LYqWmzUKRLtdZeNB3jbxda/bl4kLaO8cQDeJe4g=;
	h=To:Subject:From:Date:From;
	b=Wms+VZ64uH95fQTtjGt3LBZp55e0zpT9go01gxJzuJJr29t5CQUfUdyOnfFOlKPAF
	 RUiJOtAHyP+ZNGuPXCW0roXxBG6M1NzAQtuLHLmz4gZqUF3iuu+CbKmZxaqZyZoVNh
	 hr0UJp78OPmDfuORc2KOZiiCWhXXIKTX37+bnbeOO8IaJpBl6Nz77XpFD0QgDw8l83
	 YUmtx/hPTG0Sq5pm9PR6RLmMKh7UtTbI1GCdGRhhbeqgQHqqnEIT+WiO0la9mcYPxU
	 GzIxAfi9/BvIbVPCt7fhYBhBcxpsIML6A7xFWEfuI5AxywxWf9JSa8ytpJ3uEMQHmA
	 iW1AcHXOTdw5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5ACFC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 18:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171337796279.32401.6672986013802886697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af644271b1991771b854db40c42ce85bcc61c587f83cd3fcd824d8b73a236ac
Date: Wed, 17 Apr 2024 18:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713377962
