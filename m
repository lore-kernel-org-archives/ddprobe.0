Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7923D301D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776243454; cv=none; b=AFgif8Kfg+x/VP14DbocOsKgpPOH1TbZgke4AFbvfVfmBhr2vjAiZ+bpUVfXmlQaPP2QWMMvXX6Lm666pawM+u6UEB5gZY1kaoKH01JvnQC2iV5KTT2uszhkNGUsoexBsaiLEi/bhyrP8GWJEAjRM53O9mYn3Pt3CcUfy/O1WYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776243454; c=relaxed/simple;
	bh=OkmdGy2BsFZJ/JGKrTTB8FqMkpN4odiJ9c0h3Kqgulo=;
	h=To:Subject:From:Message-Id:Date; b=BtCPz8OOVpWxigLdRA1bISaMZTpNqJbvCuXnRJYyhGMwH6pV/+XLVGGWvS77m4lhoCDI3pKLCXFJvZoNucJBf7Akpp+Oa1E9rT4O361dQOdPc5XozbnoqNq0FIgkPXMDqfhfflc52aQBjIcm/3m8xa8AFbdynqOPKB6mZmSQiTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HX+EA1d2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HX+EA1d2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C67C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776243453;
	bh=OkmdGy2BsFZJ/JGKrTTB8FqMkpN4odiJ9c0h3Kqgulo=;
	h=To:Subject:From:Date:From;
	b=HX+EA1d2ewhJ7pahVsrIEj/Ts6XMd5a4UhrKCOb3BDt+ru7886qLqGlgLtmJ/vYw9
	 WU3/UmTPbtHKELpZuW5nWwCldoLxoFJhdQ0mU2erN7sYVKCMm7K9+DXDre1I6g6j4N
	 fYvwPG/FY8HISIEYqNspl3/pcU/vHTJwnb/hr/kRNdfUf3tSp9vd97N7LVJCqOWaal
	 /oRDT9IL5TtOcksOz1yRrbujOWjr5tQdk3QRRkbp99LSNYmlM6fb2SXlkeaA8UgD6O
	 9EUwHTQAkUBRP7Dlf4Rk/4VYy+gwWQU2BBQr9pSKhyQMgOTdxHX1lrSOcACh3fxatg
	 xoVFXxwwRbnOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA96AFA0C5B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 08:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177624345368.1828.11436795899761368600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8041521e36e6a92a7043880e11e77bdad288e7b810e4257d710ca81898299a8b
Date: Wed, 15 Apr 2026 08:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776243453
