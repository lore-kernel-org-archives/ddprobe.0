Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5683314A8C
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 17:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715188343; cv=none; b=hRwQG2kTP97Ka+9TjZOn9gf7qFyfTYFrSaYye91gtmpaThHLNhvctZL+WVBxL2cKzH7mgxb9+Fqs1s8H8trF77jsLHgREqdxRyXywAodlnEVZge332QUX72MWAblKVjNr0yUaDj7wGYzkoJTxLKC2aG8RueMzzAO2LwaIZnIjDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715188343; c=relaxed/simple;
	bh=3BWZB3hvjAGi2PpoPKWvlX3+TGpj5wWIhHdO9Lsymxo=;
	h=To:Subject:From:Message-Id:Date; b=DvhV7rLF5pVGRZk20nR8yQfUFNCorlZ3RHAU32pIcjtXO4oiGMrClEQ+fX9aa8xVkyTuKiK7szdGbalsLrwiXhLc4XDTgMz3z+Z8d1ePF2jLLaTxBgQKeWnX3cCn58UXMyOYuN5lO65hw0C+Ct82TSacjRT25G5v1d17A/hbi5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHRox9Zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHRox9Zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F32D4C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715188343;
	bh=3BWZB3hvjAGi2PpoPKWvlX3+TGpj5wWIhHdO9Lsymxo=;
	h=To:Subject:From:Date:From;
	b=vHRox9ZxjZDdjGRayog+ZTW+pLa5HvDayMQydEk9Ex0x5BQdgSA/bTGxC9TAEktR3
	 kVBciWApN7D4WT74uSbVAv75m5f1oE38AMKB5StPN+Zmy8hdTIEwFAGKKMajskheln
	 1IeIDkZy1GMU5OMJ6HUmLJ+AxTzmOhi9SXLOw9v454SMZkFj90YgaNpdgYci1VXTHe
	 eLV8yDkPvQ4e/VBHWhNDHJmO8qWHO2qCWGFrXtnIgJpbnYAjojIOcGFvwY4+r4BiSu
	 e01P5GFbVZi+N/m6AN2M7YrMzvbIOytoRVESwr96H77oUl7856wXWyMtu4EbvPXkYu
	 tQJvqsKQ23LrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9CB8C19F4F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171518834281.16753.337405130634877347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18e668958e45a517b37e90240b7f79adc271298a654d3a0acd9cc1e042c88e3
Date: Wed, 08 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715188342
