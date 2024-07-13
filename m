Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58ACA101D5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 17:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720893023; cv=none; b=D3poiKOX1dr+tHG76mewGPg87OEAU1olh8XGsLTrV0ruoLJH+4EZpJVcZFcVioRfXFC4kQ1FDi3VH4FsvKH4htrvf/uvT1SXI6YNHfBU1c9ppH6d1MjdKsBp6CxW2C8ywG5Lcy/dZP9xci0CnZGXjwokyFpJwt14yO5wQlsqrvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720893023; c=relaxed/simple;
	bh=QlyIKi13tl807Yofv1/4lL5jvfh6kWlqnWQjjdjfXm4=;
	h=To:Subject:From:Message-Id:Date; b=TJHNkMWHSVhPUKsaYWI/oLABTXfpJKpMAg50q0UQ+xXjBVq40pBFJihpM2XclhiEj1PoqcnkkBkALO8hL7DKDDAobNHjE0rgtZZaO4+44hOoOIi6g67axpQaCFJuPrIjmoTCvETDxEkI7Oyq0TIqC/yuWTuXe5/w3JjdNaof41I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z25oHrqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z25oHrqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DC3C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 17:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720893022;
	bh=QlyIKi13tl807Yofv1/4lL5jvfh6kWlqnWQjjdjfXm4=;
	h=To:Subject:From:Date:From;
	b=Z25oHrqQzuR+bArpbMRHewXBqZREOeMFioRDNcia92vGmAMleLpWM/0PDgGVhLigb
	 SR/kyLZHKXUR6NM5lrLmgNXTsieLw2t/9wUCgSxqG36TJtEIhxpl6u+QtuJdv/2f1v
	 fIb9UiAGV9pmnHTlkoUGUmRQh29QveuJLRObLx4HEJCRD5nefk4vx4gPhWsWb+gtd2
	 pNe4Q7kCjLMBR/8RAotlITx+NgbkPWxBhpBheo7KfUrBK0XwiiiCaUIZcHHvWEI8Et
	 n7L6iG4glKJhVdiKMTmPgfaBl3w3MPD6SgPIiw3O3dX0bjurjC2Hg/5x/y4vZi+8WU
	 unn6bG+YuIF9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10BDC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 17:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172089302275.17735.2173424121044116358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe69fb1882fe70a321f8d1ec60b7e68798a3ae817db6d6af37c9e3f421384a50
Date: Sat, 13 Jul 2024 17:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720893022
