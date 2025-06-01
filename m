Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409A54A32
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748786396; cv=none; b=QgIZ9xCCLYmMeySiDsYT6oJrW0POOwsK6LMjNhQ1hdPE/xNI2FB7zPA8te4HWabN1of8jWU/9Tt5S+2TXpqVBAx1XNS2g2M6X6exFESY8rrvw0gw5fMYc0vwm20LbWIQ13gYQKeSzWQn+S8Y3pNMdLUfHyAgG6U1JmCxdmayXxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748786396; c=relaxed/simple;
	bh=qyX/KWZWdC5wKrTr5qORwuPJzk6wQc23SUV7x2849WQ=;
	h=To:Subject:From:Message-Id:Date; b=ux3r63sRboy5Ot00NcZQnYaZnZwVH+9qCHGXDEcwZMt7xVF1dtIxC2VKmaqD9asn60VcUCCDGiXc5sYXUuZEqLDJ5MaNncbq4fZ5AU216issiNQwoBGwpHT8pu7oxZfGKR09EHyHhM6l4wy6x+k2+j2QmNZiJZgAKm5n9StVqyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPntFnPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPntFnPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FDEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748786393;
	bh=qyX/KWZWdC5wKrTr5qORwuPJzk6wQc23SUV7x2849WQ=;
	h=To:Subject:From:Date:From;
	b=JPntFnPm/clHL0X4qhFXUUsJHqFDj5dwo9aVTk3FxjR/Jc/eiIw/emLBkm2hkPC61
	 kOXU+nugy2MBVxXf3b/eu2wDGvKNgVbz+mrANsPR+NzPGG+n498OrZHabcjncDBAGG
	 wZkge6T56YS9Sh9MAOWotBzowaoHLC1wnTT3G9rx20DKr+s/eySocISB6PEA9+UIeA
	 YfyefihfqHczkdmzjNzKXdFERj57yA3MrKzjp6n5yG+7zbH27hEpTBabs6nXrrXf8E
	 CtvAXKvAjyWA1Iu9APi1sOJOmyclaVcDhKI8lprkzvJCDQZanCrWxEY9XXZ9b1syHy
	 sdIFvUXjb4rlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E872C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878639357.15055.7085692397361663208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc4e53698c0e25953f37765c7c740fba861ec1cb13a1e023070b8927a576aeb
Date: Sun, 01 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748786393
