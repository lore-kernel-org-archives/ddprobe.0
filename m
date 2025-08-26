Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E9CDF72
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756180794; cv=none; b=BDJ3BREa/G8Z9LbnKQ3l4gXpYT5vEXrgSbF/1CjMqX2xNbJuyiPA1JaoE+wnN82JJ8jRbXNVpoP/AYWyNwrpiwde4L+HYKr02z1B5vYlshkfxlE59HkHy34UljDtwGjh44fU/8SCm4fLgNp7QAXdaMQA9ELN43oVZTiYDvI7IJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756180794; c=relaxed/simple;
	bh=820f6Szld/2eTcxmTCeTJSh5KKiMou/W5eYOtjx3jRU=;
	h=To:Subject:From:Message-Id:Date; b=IVmi4wEmDvkCIgNFFzidUdGaOlARF7oJfPw+ic1FHwPd/IjeIlYPOaE0UB8QKh8Q6CteJhH5qkZ8LFvPSoPnKZQqmRkU7zHatjGM2jq5XB6b8M6oG2QPeqiyVCGwvy7pLc0075pccgrus8wccq2UJLQD823M3A7tx+uNIAtCaII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfqCRP1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfqCRP1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DE2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756180793;
	bh=820f6Szld/2eTcxmTCeTJSh5KKiMou/W5eYOtjx3jRU=;
	h=To:Subject:From:Date:From;
	b=QfqCRP1ihNryzrMgLvG3y7DbmMMQvsr0+94xgBwGmsPr60cFVTEQ9MbwYNjGIVxt5
	 YXTR5P0WNbgpMd5V2CW88d/aBgfkLi/1CMZGPFVPwAtqMQLlfWXWzFMTP6Szdg1K6M
	 rTdPt5orYwzsocD6aj0WHd/jtl8vLgACsQTE6q8g+PQiZlsnQlQLv2X+EdWqNJhrk3
	 6KPKCEsEvUAJ4w1WCBEzDan+D5nC7kjyQcCF5agFci2yd6EGniY8qPB8Ip9xjpdUqd
	 jE6lhH0hC1zxotjU2A944RUTztpTlD6at1H5ahWUn12fPIlw1EhkHF/tVhjDR+VWZZ
	 SZg61bFgOxNew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F5CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618079358.31919.8787403228965921312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22446ffd8f493fd7392c38395c3e31d0920898cd35a3e48b0f59530b7110506
Date: Tue, 26 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756180793
