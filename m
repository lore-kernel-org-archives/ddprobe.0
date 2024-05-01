Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518505490E
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714561343; cv=none; b=Rt1bFZ7xf6vFgG2G6CJdAFRb9u8eKfxaV1n9MpRQdIdGAz58251rFUrWhIY10Wq8ImBVfbgpbsRbvswgmMCFQhZPXxjShptHm9srFKAQxKDd8O4M0M1e3t/vTcGqJ8GJtWaSsnUqDpH6PDZJC3kSbHXeMkChM5JhRr/hPOfhxb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714561343; c=relaxed/simple;
	bh=CiyZwpVuqO1pikYcJcjDChhBqNaAJTSbwC58s7Zt8k0=;
	h=To:Subject:From:Message-Id:Date; b=V+InEKvKmBBK8FZfic3iHcnx/tml2hZyQVEN7mqAK5eygLowTgtHtTxIdmplHehzdx8u/bLihZintVp2p6FlvHkh9sqSLfEdCBwSPHDD63sM2A6Jfs5FR1lfAR/R8gHx/pcAwFJc8OhARRekLbFW/cdf1vBqsQHKQgT/99wYVio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPVz+Ty+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPVz+Ty+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E36C113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714561342;
	bh=CiyZwpVuqO1pikYcJcjDChhBqNaAJTSbwC58s7Zt8k0=;
	h=To:Subject:From:Date:From;
	b=YPVz+Ty+QXFhvjNDma23n3Y7UBbMwJINbPS9OwzPVJx2P+LNcDkFp8M5RTD5pl0nU
	 kcZfhCjiXnCYZ2obBIlHSWMC70MY+x12hO9LU3hdcnSpMDNZ3Vz1kVhyp38DAzSi2/
	 jlH7qSywR2rO9AOQQ/CtJ4EsjyraST81lxoEaZohES4ZYIIuNq1yrBjV18I1TVQQd9
	 cb/SmljoFk9VhpwNat/DXl/AtO7qBmbNK7/Z4OFOVr6vJ8WK59tDpAtePp+2MDNfcP
	 kp1eDutkiBR0/kFkbl9Hlz49r2RUMY0YA4jXfBz8D7hbveOE2l3IH4R/DS1FqoJdJu
	 utCCuNJQV1M2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C247AC10F1A
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 11:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171456134276.16632.1692809682052291128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f116e9de2c69dfdab6b11c3693904caa8e4162a71b571a0533ab6b6f361c642
Date: Wed, 01 May 2024 11:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714561342
