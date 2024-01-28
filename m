Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2028B24B41
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706452097; cv=none; b=r1dy1ad/NrbWRp9HDAIij+q6Q3fk5sOq2/hywvGH73lXa9CyzLEiNal4Yp5ITJ8Hh1ssh23cPngN9TXhGDSWe/IKRPypmE4qb62Y03MUOlLr8Ysckt+aEBYJDw0exV/ttYPPh8ntrGkqTqFApaTYdKLPOdERw6m9jlgjs6xB2O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706452097; c=relaxed/simple;
	bh=fznIjJqqAxMBeSK0EEwjJl5nl4TV6N7vvUdTL9RPf6M=;
	h=To:Subject:From:Message-Id:Date; b=W88iqBqJVfIlUIoPCYH/QsZGo9EkaU58QLNaf+FEvULdZO/m4+GWyMMUkuttcitAY6ZRzuvbEvfOEtW41dvyxnWyBix2KfHU3kQ4SUti/cKdfoENKC/G1ExPTTukpTwq8Rj0HIYB7M8WOr6OAu810bfUpZrsCoCksw48sqAFTVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0CE+7rA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0CE+7rA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85FE8C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706452096;
	bh=fznIjJqqAxMBeSK0EEwjJl5nl4TV6N7vvUdTL9RPf6M=;
	h=To:Subject:From:Date:From;
	b=l0CE+7rA0dhsRq07WQRigcTom8HP/6ajpdmVSr0v1yhpLgKW7jcHPeKyAQajqvSz4
	 9OVM8tUhT5u2MRD0uBasnWofpAPvlBjtCLtAdkRdJA0j9cjhgoIvN7UiptOE9m5Mah
	 LMuObcHNpiSxzWQ79xiE0pM/AL/d98fXrlkrz63tvB3x8C6seTmxhR7JNUkxysgcXt
	 B1t3rgRUstbySNfTm4qQTtsJVRHP5M7VIZMJP0PRG1mwKM1GLv/c4xOJt/gVJsxYhk
	 VxTubVOMGUu/riFxcbr42AUyd8TOHEZdFlQR4X/eQ5qsBCe5AGJBFJaPuASk2XGAg/
	 NvWnG5Fu578dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FF6C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170645209640.11098.5044980173167928512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee254a453ad9a8b9e8b694c3a30afcd6b93966161274189acce3a5c1580ccb1
Date: Sun, 28 Jan 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706452096
