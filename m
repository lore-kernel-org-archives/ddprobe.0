Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1943BB663
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776127054; cv=none; b=WnlqEDwHXnTgboiRVE4SLz266VUXsxCxzWWdgB1Jpc+KNc9MHB6bw03Kx8RDNEJtyzAiadHJo/J1daITnThVNsE2EzVxx3nOD8d+11Bb+nBwXFIHmm1dSF8r9HcnEfQ0oHn3UvdHK9/EF6clulP/TpXl0fbylH4/iFbzk7ypjrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776127054; c=relaxed/simple;
	bh=zcW4oabBuk3qb1ejAsznyCtDVCPuufnREOy+ToxsKH4=;
	h=To:Subject:From:Message-Id:Date; b=liNuu+TtXfZHZHoi2w1T96w2/5cZajGaUJHpCv+/ewbxj3O5UwUBxpCPFft1jdKQtJCefSA90zx0D8k5cUsL0Dq0m5+yDpyFb2xwoi+W8dNKSnJHuXRec2RbLwVta3i8/Z6r62qv0kL5RQAfvD8FL4YB0POqbQFzN4Va+uUaAF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcGMF4wX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcGMF4wX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC837C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776127053;
	bh=zcW4oabBuk3qb1ejAsznyCtDVCPuufnREOy+ToxsKH4=;
	h=To:Subject:From:Date:From;
	b=UcGMF4wXtEBZORzLRNp0qO6O5Lra5uN9+tTi0aKOgIXs+TM4fXXHE7DKGIqflYiHh
	 dbgH0Nqs7C4/imyg9LaY8Ok6teY8Ztb5PdbFJjopoEx2wnNATUxLzgMC0CTwQ61BPa
	 9BUdYELwjOwFR0WqWuqlTNTbX73gP5rb3wJbS9JjITESTSLDe3FO2dAQ4tM6QyuDd5
	 dY/eo4/v3C5VzXqyaO93A9y7//BIaVMEFiUdqSfr+BDwug9oudoMnDgrRlKabe3Gck
	 odFY1gTIrgldEExt77Rwdovkl1z33VvwRQ/OiDDzd7M+X2/ueDvKRFfLELVkl6Fr3T
	 +DFsaqdKtTazw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA72F531DE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612705368.1120.6170381715002876298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330f0decac7a222b4c781acbd24d17932413e7146b7b0916d2507a7f676e8368
Date: Tue, 14 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776127053
