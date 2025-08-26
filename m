Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D5C2F83D3
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756197594; cv=none; b=Pr3/vBKgs+sANw5BtdSYWRYxIZR7wEk1o7HBou7xQerEN8/pxIdFBnvCB98n/obvn5M48RlGMhs96EPFzK+iS2lUR71Sf4XJL84IDr1G+Ip7KS+bAMhyW4qHVewt4gh2qFkTjFzNdGClssTbdrIxZEBUaA13goQOxrJ7rsl9NFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756197594; c=relaxed/simple;
	bh=LDrK/21O2jPwWt3L3np4MCjn8T6i5WgGv5jLvPziwhg=;
	h=To:Subject:From:Message-Id:Date; b=qwjY25pzaA03VYZJqh9lMrpZYNU//RtiHm85gmem/OYW9L/yysUl9G8jFavNLmo1IeRo2ICtWjNaW4ikHM7wuTTGgW7SRVwresB+74tk631EaneNchsqyeVSq1g3tJ9tbzIS7cuiMY5kUWH2BwBRer8eR3NX2s6wRYrbj49V9Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOyLkBqR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOyLkBqR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2F7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756197593;
	bh=LDrK/21O2jPwWt3L3np4MCjn8T6i5WgGv5jLvPziwhg=;
	h=To:Subject:From:Date:From;
	b=rOyLkBqR7R13pCBFYGibdNFu/uVIvRPP3vPL5bvHlOtmN/axNaUo9X4V0YTWMxIDi
	 Fd66vU9ACLXfc0AaQqCxntot1t6LeMtetYuLFlR4Hut1fktK7ZPSX4R6zON+ASoAyL
	 j1/8hyZZrEcnPJ+OneCgpBYeQh5RIOHBZvU1DqLVFIaEDW4Ndv4b7RFcav2ojezVHD
	 YIQ5XHFM8ItRhzG7rDxm51CFu0vXyRI+aUrv/LKtFCbX9kXkORrDEP/pzczwKW8Bbj
	 LtZ9wbtLm+vNQAVibWmfxoIpT9yzowBhPgFZ1BsgjpNPVX/wrWoJ7RMYtmmHFk0knV
	 uq/ecxvTEyf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC9BCA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619759357.8473.5568613400158829294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b600ee37f508bae47b2acbf569e001e5f71027698584764e848492a6541e6d40
Date: Tue, 26 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756197593
