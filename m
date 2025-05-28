Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6D31531E3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748413794; cv=none; b=hdHVWjwlQ0xSgb+qzpuficlzencVnKrKHbq1NR57U60HrBjpBKwCF5Br/+kjPagBl+uNU6ORwOohMqxyCZ5FUjJNP9XOCqUY6DftRarj9yZoAa6dtZby6q1Qh88omWpETOw2diwhp/3VHYXl4B/riBnO6coQtzcAR4zhUXDVb+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748413794; c=relaxed/simple;
	bh=2xdEpNmVn7DcPKVtghPqOg8wrnUIDmD+Ra2EWQY8tkg=;
	h=To:Subject:From:Message-Id:Date; b=uvQQCIvj32Yb3pD8td5++4qFBh3l2HPnDZzo2stWwVGrmq5aHi5foPVs5zZyDyLXiv80DW7iNyUjJnle8Kdwpl/3CFwW6KJx44noKyfdwBuW8cEC+BetPS21MeyJWPBzwbLX8oU9UCCRzRResvvs8vGcfG0AUK/+R5jzsokWGTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw+8Aecj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw+8Aecj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA311C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748413793;
	bh=2xdEpNmVn7DcPKVtghPqOg8wrnUIDmD+Ra2EWQY8tkg=;
	h=To:Subject:From:Date:From;
	b=Tw+8AecjGyxeFwluefRUfGSudiNnHmMNmFADc0WgUTWvaBDQ5NSQTM2S1HWjAZ4j8
	 SwzttE3ChrYGP1aPn5CEVUh5x2kiz6HzlD1eads77vNp3XrioSSYrDPL929ig07qaO
	 HzrFjRQqY/USqV2pMNMNHT5IL7r1ZbksyLYxBPElxzgBc+PKwriam57Dp7/k+a7nkL
	 aopWbj+aVUuvzLuLYkv0ViYKEkUGZ2g1qTnq0c6Er80kAnm4lnzQYfkOh723/g4KYp
	 0dQtDN4/uCPwlqm9q3A0B4Ap2XCRnJUKsX3oX9TJsnjIfS2InZo3fb0TudvzPpy08N
	 TKtt/M0Ebf60g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99489C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841379362.3590.17707032738526500126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce66465039f1b6f48fe6a8934968915d677957ac04965ca0ecfb4dbcfddf022f
Date: Wed, 28 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748413793
