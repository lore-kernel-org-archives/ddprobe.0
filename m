Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CF825D1E6
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760416194; cv=none; b=nDl9uLoBGAu7nmfskrZ8VHHjGbDPX/xzFDfZYLxnr6yU9iC5hUrKkTZ3K82J8xtzRX1if7aJbYriqq7iG5DT1PWKgnwi0pN5KSfI895UT4hmIEc2BUTvKOStUdR1NAWJZjpTMDF8EUczEPWQ3afWMwoF/aNzg1qamAzOIOiUaBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760416194; c=relaxed/simple;
	bh=jyCKUpOCiecOjlVNIyzjQ4E1qCXLNZTkjskttV062aM=;
	h=To:Subject:From:Message-Id:Date; b=HYVoCV4T4WC7EK1wetjiT8E6kKaP2d+nlVG9tjzRvTZ4lVYAeXmeJj53JAJrRP6kin22qrJquqmeRzHbHPrqmiD30SSRyV1eX2ndLXkg6hyKwRbqllw8gP3s8y62Oz4Aktso2pOwqAQ2z4BtG3EDssng6ebTOI8FefTicfgEspY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANC6gjfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANC6gjfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B39C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760416193;
	bh=jyCKUpOCiecOjlVNIyzjQ4E1qCXLNZTkjskttV062aM=;
	h=To:Subject:From:Date:From;
	b=ANC6gjfjKfT1f8MZs3BhA/47XVO8GpNhkgH0oBxHn/nBAu9okHQcQYNM9VWXufr+b
	 VI7FtJ+yFJ6ji5Iy/cMfMFDtktLg1u6rpLIYHXYphJh0bxB1Y5FWAREmAjRNA+ilX3
	 0Vo3hoXCS4Ronl9Ewnd5Iz9VGJ3pec618wsH1IGxAhcgLu5qqB8J+hydhdeWoocPDT
	 ofeJcyLUrwD8L749A7p/r+au12SaJ7BWuFDs4eKagzXts1UtQapA3rLUFhtgTxAfCt
	 w2/v3Mfnn1SjSAKIJoVaQRU0z3fOKbmjCVGwTi6yAzFpUjZr0+u0DdyGetgoB6JpNl
	 T8dkfmO/FBudQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4AFCCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041619363.20682.7764727690852390798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681b0377e6243ca10fca0a83e5e41f11ba064e9cc0604ade8d9273e5f1ec3b2d
Date: Tue, 14 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760416193
