Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D74E39A4A0
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788267034; cv=none; b=K3oprf0nfQdYnbVHfJ7DvvHqJYAZMk06S5WZefVpiXghLM3FO1/z3JPdwbtIrWpJMlhf6kbrzrcps5xY2Iw7SbLeXT9b9lFoe0kVWKqwipoDEM+mMqhVNXitLDiMzlaHA/xWYRu5IDK72NDGwDilp7aYXcKjEKa56/GAnEX2GBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788267034; c=relaxed/simple;
	bh=9/uqxY/EbpiSMBDSH05I2Vnaefw+e61+RgdXgPVyxjY=;
	h=To:Subject:From:Message-Id:Date; b=TP2czulwDkGPYkIo25AZxCtK+SdXvvA8PNNMcmJRzRQzE/Uo7P0oz090AvjMpqd53NoqDS7FiCK+TOC8yXkc4JDYD8H3QTilY8yR0/4wmsrgeRD7TzbyfFWp1kzh7CVnyDBRU/oKQw/vokPgQrs5ZNQ5UFRAFvTkPQvlL15tDZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjmwAEXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjmwAEXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD28C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788267033;
	bh=9/uqxY/EbpiSMBDSH05I2Vnaefw+e61+RgdXgPVyxjY=;
	h=To:Subject:From:Date:From;
	b=MjmwAEXaaz+JDl9thg/tUP8EORoapCIyvY9A4SzliDxgRAMSO+SebF2ZGay4UiACb
	 KIINjxhJ5akeSBFpCq6G30Q4MQr2GiG5HJ5KYa4BieZg7ZxjQWMUqXj+JpdBIn58UB
	 V+C1+veqBJt84y1+IUtX6C/ICog9EmDwgW2tztJaYGDsijjZWJ7SHFDS9x/gHQdj2z
	 n9qf38hR8Dj8LFPDwJKotdlZgMmrNdTQLtHNECfeN2hwDbshRV7KIkswxHX/KFSDkL
	 omehL8vZqYXbaooq1a6ohmkNeHwCLzbQgaI3aCCdgQ5iqA2DMm1ElUeQLqwcXSX97r
	 PO1P+ISS4XXKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA34CC61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178826703368.20546.17984626318226569261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9030ade01179ed1b7f6d0b3b3004e6c162524e8b43376c4c34de57eb0db659
Date: Tue, 01 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788267033
