Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DD625F98B
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750863596; cv=none; b=p4xfk9oTjp0crbJApsw+aFUrTBH/JEbtiK8hKbo/wcBlEC0zpB7Wyp4MYe7icd88fh/zrZFv9cBd6D2VZxALr4BXFIpQM7Drty71aQ+46Q+jVShlfhQsIpZkoIrlifhnMtp5uDXbw9W4od2usedSA3EOQv1EltJS9SFdaBLIzQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750863596; c=relaxed/simple;
	bh=Q7wAGG0U/67buSHg/q9CM6kkk8g2n5fAdMbk8l4NQVU=;
	h=To:Subject:From:Message-Id:Date; b=RaZt6A4QW4y0Rclai75dH8AYm6vVV+lXDUwJ+tTzUazyMh+uF4pHD0AfqNyddCNsvG1Su+lvV8PONxooiLVLjuwNKR8Ye5mVwQLzvBaj9XYjmD77dN3sDxM1JLQrp/00YCRXVmMr4fId161U6P6W6KWxlVbGpLKNRWslKLlgF+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEhQf9bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEhQf9bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4955C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750863593;
	bh=Q7wAGG0U/67buSHg/q9CM6kkk8g2n5fAdMbk8l4NQVU=;
	h=To:Subject:From:Date:From;
	b=MEhQf9bbiP7zmo2Ae44gyeRK2UoSZk6OxKEIsTw6SKOrngkzH01FOJ9KtZ9bhwZBD
	 d8lQAFa3qrigcg8ULi0I12DgHl/RuwCQSoD6eO3wipjLn2vpjOiMCCO8DVtWvXnqcm
	 QV8BZVVx+rUMLBm+83sll0g2jkhPE1KlIh1DTypvKjBF/sK1nX4Vv96xCqepgTppJm
	 vgd3YBcdWHNsbpvua/txvcPNyPzttyeRvEM9LWa74Gk4ViVknGrQUkiqh1JHpY52YD
	 vv9bZCHRKS6FO3YW5geopwK+Nzrmo+9okq6iYXm7P2ykfuX78pNt6ywLW2ZaQRHwls
	 kedfE/v86f8tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE6C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086359359.11288.67021752376906473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423b8a74c021b46f0759172224e67e7853491cb824c4db8c192809ce4db694d3
Date: Wed, 25 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750863593
