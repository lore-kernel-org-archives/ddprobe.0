Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532E44405
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720337183; cv=none; b=c429zVln63kx0OyO2ueZakrLNT/yJHOzAHTNOEgxdVOVeUr8EqkkijI82U2R2OeH+LxorOYGuX+q00wn1Joqon2JJiaSuBo6b9NcyMA+gITJ+XL5wtIRUXojmRKf6IMLjXwQElMaxIquygmej30B3nTC8fLtYEVAmaDoFcNNMAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720337183; c=relaxed/simple;
	bh=mefxuXQagODypiPI/Njjn2Q/3uXm/NSzQUqZ4H08C1Q=;
	h=To:Subject:From:Message-Id:Date; b=bZk86iosAuY0Zk5rOnpHkmbam2pbSvZPSluozYI3D3xZXW0ZMvnZlxbDEqV1bdtCT6PvkLNbu/XADAEl4cRohQVTvRiO/1Iaq7MPrnn3hFRWXGUvUs1EP4Q/UljeiXWEWGg1pFL6P7Kvg1wmro5M2UrL9Vtyez3o4AfUELXsmkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnbYTmLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnbYTmLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6A0C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720337182;
	bh=mefxuXQagODypiPI/Njjn2Q/3uXm/NSzQUqZ4H08C1Q=;
	h=To:Subject:From:Date:From;
	b=pnbYTmLZmSeosFYtNj+qPdH7zVfEB27xUMWMBPZ++zV/jzcmSRr4MUOqLwhZw8jSe
	 l2S0nyzBY+5Bjh63n7pJV2q6NnMicQLQ3iY9FzRUOp1cnKRWiZSt+gHFu3YrdjuMcu
	 uXE63worpjED6BCSPJxd6vAoyPe1eUlcwPNsRFScJhIMvXMVZhrMbGs8WeuCbIblh1
	 BEcPtX5o7V6tcO2G3JX8HpZKnCG3MqQqwXQXiWWTX+g6SQFoCjY82Bc4wYhDf75loX
	 TbrjdSOUsWzHrT20BwKtvAWWehpGFQsnnBLAAatmstEnEudV3wEb5Sc8YC9i8GqoJF
	 Lnbx6Ig56YSxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7392C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033718278.19797.4874430381659742270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a29650bef79f46ace84852d9b40c85aac4b38486acc0df015c28b3d16185fa17
Date: Sun, 07 Jul 2024 07:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720337182
