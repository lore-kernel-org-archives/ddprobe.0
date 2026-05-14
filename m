Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1D93A5420
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778751634; cv=none; b=MEBivrdh8d19s2/sZ/7cjaxPH/oymPGSoKoGxlBJ/+fdphw7/lopA5GSnydOoxOPljbp1S2uqLu5gvy91EQEZfXfPCYTNPoaRed0Z80wEFE0z8B7eG38vBedqu99mKTo0UWZ5rn16ss+R/VzgFg33Ui6e1bjkoQUeuznyHIIE2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778751634; c=relaxed/simple;
	bh=asuKc6DOmt5WQxHPBUvwzvpItnPTy8m8oK+DmAH/CKA=;
	h=To:Subject:From:Message-Id:Date; b=FtfZCeVDqcLhgNhQ//3/Yhz1Afxhu3CpaTPtzQWZtjgO3STY2+IfKVjcFRdd9HHRm6oBPsPSZr5eUlqNZ7pjGmUeqHqnyMzgSIcVGz1eBp6vbsIA6dpQrLA2VaHPx4ONucYxZSaGVQjq8UG0jE0MPE4CHGsOmz+KOykIym7x8Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0XkrnML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0XkrnML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31FEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778751633;
	bh=asuKc6DOmt5WQxHPBUvwzvpItnPTy8m8oK+DmAH/CKA=;
	h=To:Subject:From:Date:From;
	b=b0XkrnMLlxdfKStUm5ZG+/F5B5J2ILZDwKeyIyia4ZqaS6oymHm8A3i+auPvat5X7
	 zDPhCIeORuRKI2g3JJvIbdBkCl2N2EBpHF9K7tB2yGDwrf7E9+MOT9nfhQwkol4zK4
	 Vx/ccOLdb5TaevuefzEWY0NdsUN6c/+LWsqhJNdc3s0NBzSBJJr4+H1aI2OLBPk0lq
	 QokrJJNi10sb9NYs1e8cGzW4wCnq05fe7VlGOLszkTOW0H4Hp19h+am4WQauzdF2qi
	 1ANTl32CNs97GBkqJY4tkhEa9irtg30qwvX7R8Av60dchiko3pZQcDU45e8H1BvxyU
	 qfChFXo/SuDmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C16CD4F3E
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875163371.4509.14792636692784926323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794db4d0ad6d2f7cc295a08a39ed60291bc3171a2918452023309e5f6eafa391
Date: Thu, 14 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778751633
