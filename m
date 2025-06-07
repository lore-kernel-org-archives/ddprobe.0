Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E212210FB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749305394; cv=none; b=JRpXqivtR483/uA4/VV2+cdvJM+nFY+/umtWhzcHeNDpq/aVVgWvtb9gqVfBjHlOws3xPe5nBlVKGqQ0fsAsvxV5aAMM8JvUn0lz4Peq9p0D+MHjqhSpxBtiFjb2X3Z4AOpD0iex+y0KVjGf67hIxzf37YA0wD2D0YxrQ7s9RfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749305394; c=relaxed/simple;
	bh=GtfOa7en9oT1bkltLPDDPWK2qpLEiwtC0BGs5L9SOHw=;
	h=To:Subject:From:Message-Id:Date; b=mZNLGjKFDzWj9H4ltCxK0XJSFrV2Phn2WX2Fnb8Iw/hCXZXta9/g1hUIdZTrRnxSHHKlo0Vd1AVeyBnDt2GeaUHWXtb/8WlpEsnVWzo6/w7NRCGgGg3x83Ayrf6L0Uce6LapK7VxL4ZcxQ2qr41bng2SpbZY9jxWF5sVUqL+0yM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mkg2YCb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mkg2YCb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0774C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749305393;
	bh=GtfOa7en9oT1bkltLPDDPWK2qpLEiwtC0BGs5L9SOHw=;
	h=To:Subject:From:Date:From;
	b=Mkg2YCb2eiwfBw9HeV39WIhuSakCCgSg/vURJZX/fjTdAfz6YkCoKoWnCfWKO2CK2
	 d5brpj7Tvsg0H050dcExUqN4prnm4emT1TgPgQaQor0dwi5SL1C5J+IfFF4+x4ULux
	 TI5bkfQp/LpSHEQvFQ/QQAdEnPVxV/rw2vYujDKY9M0nlhCJtcap7C/xLGsYH7VYzk
	 RNv19XG/sAqDgJqRIyeAaw1aN9/IwLRbsxmFYIAXr1pbYimrPodWN6rOFpHwWjwjOI
	 KV93Rbdwo8zB2/ipv1J6CHrGgSabaGOFaSp4Z/QRRc/4e4e6tpOcVi9B8dd9sqq5dC
	 slfr6dNPBv//A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F558C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930539357.25220.2440693109105084732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf16c71757d90985ab200322451ee9390d77fd7aa9047cb3f05d9637a7cd6052
Date: Sat, 07 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749305393
