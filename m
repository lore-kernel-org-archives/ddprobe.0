Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E111643A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720951823; cv=none; b=qqcGj1FjRw2y45rwJoBHrp51bwPxIUbbK3lqjxlloBXmt3xfSifZBFOVfI9K283n8b0NaClAbR+10x3oz9bPkUh+qPwrHZLUdAnvM8/9oQ+nVaLLauvR8aU307/aPUZS17PTPJ9SJP8dHjZVKBokxbfikOM1ohuo5e40ZtYHhGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720951823; c=relaxed/simple;
	bh=KZ+TJP9IQ2dgR97LRgtMkkWBC3EUib4k36ubtyb5XsE=;
	h=To:Subject:From:Message-Id:Date; b=SFntjhaYL8XIYMjZrqpOmoc0+fTmgzEJK/MMYQikpGf12t3c9AWeNDT9VtoCoMrgo+46QTqbqmEIb2sPWB2aY31vIVIEoIrUQIHvAm3tBkRggyuOVxTeHFMo1LM7xVbicT5e4evyRyy2VDbngL3cggSkhELq2noiaSohJDAWejI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzETOHnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzETOHnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AE1C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720951822;
	bh=KZ+TJP9IQ2dgR97LRgtMkkWBC3EUib4k36ubtyb5XsE=;
	h=To:Subject:From:Date:From;
	b=lzETOHnq5u4dvZYelLYUjdaPpNDPSTV35dTYHINavJHZf3HmQ7l10T68kfcdhy2I7
	 +hjKZdjo9iBsFkAZVZrP0zN9j8gmrmfBii8gpIPFhYuriXaGd/ikl0s2Q9ZnsirM70
	 Lxzcm9Zw3Jqk80pGO5kHLvxl2BD9xXt1Vd288mpZlwVm9k8SDO8oAJYEb2SGS7L3Sv
	 +dPzIZL1/3NGqjdI6IEBVf6AaNcPT3pDOxB2/RDQHKaI6lYNLP8RRxbv5CXoLn3b0n
	 B5/5KGICN61In1EnFIPHTFuSt8fYpxM+5Q9nezM1UiLmTNUzbpdVvmTgppxB84hb2z
	 VdWIV5Iuwh9eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C41C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 10:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172095182275.15187.15456234825204571203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b61d6bd83965f0e6be61580bfc9d826d32851639c78600108bd04dc6212aaf
Date: Sun, 14 Jul 2024 10:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720951822
