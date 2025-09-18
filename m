Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D519823C507
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758213593; cv=none; b=RETbRG5ZJuNzrMZiR7rGf6vLe/B8BfH1lyX2OiuNzQ5ArLLE0HiVsyOPYjyOi2nNKfRt7aHnPYFXRdLQ6jRFb5cNIjZH4HN6ykzHP5rKHoaCB6V45v8LN+tyKzpw76hPQs+klEMLrd5V5nrrIUqdwFvrEa0fl2Rrg8vk2Zc5wyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758213593; c=relaxed/simple;
	bh=pIED45hTbUrWQ/qmmMid9qrkBi5Zq1MYleyBjRhVZVc=;
	h=To:Subject:From:Message-Id:Date; b=hZjhkan2CaD4F8kjopPkRC7Nc+niTpoxaMJ0nrUtDopetuOr/ZI9F7/7zxEGpvEA2l1kWhMgxKj33/XsUr2faunTIPcpvtLn9l3l0D5QkXev4LZt0SXUwV9IDpKthUD+po2blm9pcxzVtgo4y1fnNFwV+A0YKJgs3qcQskArchM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6fu9vxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6fu9vxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F61EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758213593;
	bh=pIED45hTbUrWQ/qmmMid9qrkBi5Zq1MYleyBjRhVZVc=;
	h=To:Subject:From:Date:From;
	b=S6fu9vxbeekYozhBMq3VR/vr+LHIXcy9IMy6ajGaCg28cYP+kbgJAEkRzMhx1wbBU
	 0f6QLXZ6fKOfqbYJDV8PIzRAvPCDbvIKKj0le2TmQd1+POu88A2nP0IA38HAUMm22x
	 j8CffHyrbPTWpJcy+RSJxA8FVYRfB2z42nYJv5BJM/JH1Jv1Z6sfkcSn15j1ukpgr1
	 ivH+CjKgESOnO2zKuia1X/CMc+ykfQBCWm9iknWjPIv9MIJDo/+6saivCTcOlJHIma
	 DvOeHXGj0ekRr+3s7J5HgE4Y+oynn26S1DyKGWN/qCTf/CoFNk2oXzIPQqJxIBe2sM
	 YRpQ2P2A1AKyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FDCCA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821359358.5557.13500982311679924875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab5318e96f799fc80c4e7a5a48f354eb763249c5341bb50d0a147c92dc261ae
Date: Thu, 18 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758213593
