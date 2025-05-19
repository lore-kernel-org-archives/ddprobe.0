Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C44F26A0F9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747643994; cv=none; b=BuWCLy06zdByPT+/24MfqCNDZLtUkAc+nsgLE+t6o5QlYBJ7X0tvg0qp0lkl9ag7rQb2O34HyvvcIBIH25c+zyl7qfkTec5inFX7r6fJGDs1/wPafTsfGtGdQtsrIPW/huvnylJcuAT1D7kuVH6ka8QFqmeN/fLO/1GHAhaxG+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747643994; c=relaxed/simple;
	bh=ymEbcWld+qyFxX1iSB2OHa7n09NO+EPLilDN3q6PPYM=;
	h=To:Subject:From:Message-Id:Date; b=LtIrXNIcRxDzzG5K6AUt8lVQOGjXp6obs/sjD8Fo2lfuzvc0DXzN21xc9KF2CvDcjKFxYe5isv67lf8iVHIsrHaS9JTvMW+55hrQyl4DbWPIiHb6FGVZfKayqMEL8Uf6RoVk9rIR1z78sVC0a13A/YcsRi5YrIybe3hu9YxuVY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm1N53GF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm1N53GF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E76CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747643993;
	bh=ymEbcWld+qyFxX1iSB2OHa7n09NO+EPLilDN3q6PPYM=;
	h=To:Subject:From:Date:From;
	b=dm1N53GFonQFj3b4XM59qg1F5vtCxOUVAzD1+U4wjZPpiBDsXoMyix8y4oZFcX6Vp
	 RuPo0JL2wCAUKHzDdN2fV76QCHDBgqFkj2RpyKRf01NGHNhzvraiM7hX0rcB5aTE1r
	 cTlYh9mq5gluKwtyDJBZbMzmGFuNKgjoaPh85DOGYiyKarxiuCTd6T0QVaccGiIt2J
	 Liz8jaBGDn1AXoYFFypmnolHkRmkeCtUS2eao/h745rmDf43tJro0zxG/xcNoRADK2
	 PKTkZ6Zm36DxgSfpRVbB2+F4mfsWezxmxnHK2fq6xCFGySlUOy/F6kwSG7IivnJ7u0
	 pTLkUJhTynong==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37FC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764399357.29243.13388821850674028865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d82bcd7d21a9868cc25e60bb5c6b81344bdb90048fa448f27f5b117551028e
Date: Mon, 19 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747643993
