Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097E863B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767040434; cv=none; b=Eiw89oi9c3b51JVUj5ObebZVhSUAQ1XpmxCJt0SR9X9g+SsGMawCtt45e/fVTiL0SsNGPGZ2KxJ9hmFgk++ACptsLKlFXLuIBDiz3GrjSQb+sTq42xJvW0xFO2ANysfs+Oksg01tuKkZzuVleAdZl7kwNBGAUO0/ZJFoFCTu55M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767040434; c=relaxed/simple;
	bh=ZKS75sVWPyEcFXGu6fdUmdxCh4XCg6hpY1wXgRBlfKs=;
	h=To:Subject:From:Message-Id:Date; b=IsI6DIk+uEtmvOYMllrkMfVBBSXk0P8Ney0VKFxpSoWbKUuOTwH6gkGFJ0p+Zz1pd5r2BFa6CrtSDCylQ+YO0zHgANVZvQ9wB/4nmAA/4J4TaKo11oK47kBwUSx/x/fGS/6BSBcDpG2ZszQQ5DWIR7Dehx8SeVifyf+4Sop79d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7Df3LT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7Df3LT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A358FC116D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767040433;
	bh=ZKS75sVWPyEcFXGu6fdUmdxCh4XCg6hpY1wXgRBlfKs=;
	h=To:Subject:From:Date:From;
	b=o7Df3LT6OKHFagEQroADEIt5NRzKfPInFFoYfGU5ET4QCHt5q8SB8vHXf+Ny9q4ai
	 C5jsCPq38pcSi3/SAtzpi7ZbtcZgarvrCtmJtbhtjcWD21x27aLWM46d44zcuA8DuY
	 KB+QwRo3VUGRitRw+NguNWK9pVlZ+PBoP+CDddtCAT9AitjkmVgMaht/x3PU/wfx/8
	 x+BFZ8vZmihB4ISjwVuH/ogaizcN8cop1eEd2gMuWkiKePyEy+J+q4kDASY3Plm8+q
	 GDXkNGmKaBEY3ZWmqkWfBqapWFCyRKdV/CjY/zOOSEoU5VAI65aA+QxNYfT1vXP0mV
	 m3tFPiejcxCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9354EE92FD8
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704043358.24090.14604666622488644026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e193144591a7623d56e5decc3f7ee8a58a1c764cd5e571ab25b29bc2383ecda7
Date: Mon, 29 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767040433
