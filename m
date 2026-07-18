Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F97C242D88
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784398714; cv=none; b=hs1ikyxyrlPJM2K9xpR0RmPQzP1TQg1x1uBMWEtoS6QIwDS+jYhVKuMn92kxdLSoKcVh+ByWhh2u1AdJ7elN3SpPBrzJaf6EBUXJcaEEi9Rol4s8OtQiKVOCVmrm5IGh6Rr6+S23tEmt3nmlMPpZ+ASHKNWBFQDHdRObZjbcEo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784398714; c=relaxed/simple;
	bh=IjDJSy6wBeiwQffTDuq6KIkWK5/52fzTfJWnXx2oYic=;
	h=To:Subject:From:Message-Id:Date; b=rbB6xGsHQZIz6mPTrIzX2CsfnXTmKE50yAx1RrOEv4eqVnLsJvb50glIIIQlwEViPGJi3ITwDhFNRyNy48SZfd1ejJlK0h38WXtAxLBSBPzFaMiIOdpEZ1hk0klUob6bMA90lLTD5zJ+GdxHbjeScR9vjvh2/+uBfVVgaDHD1eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lu9P2bP4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lu9P2bP4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E59C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784398713;
	bh=IjDJSy6wBeiwQffTDuq6KIkWK5/52fzTfJWnXx2oYic=;
	h=To:Subject:From:Date:From;
	b=lu9P2bP4evJgGOu1aQ+DWlAaL6pizDYgjGLUFZm9SVo03/Au8DZ7tSocWldoUop7A
	 Ks2V0BR79Dy10+Cf0ISy82nLhdpaaj2zYCIc6n/iASoqZxs/jMpXMfmprZuLM62Nnb
	 Yr1YgqTp1GxKOi1o95SZqZSuYWCQk5bbnfkxl/ZDgQ0aay542gwNsfG7DFhtyugTCW
	 TY90WIubSOYEW6tRjgdRaINzKch0/8lerBW+Nd+XcgrKZmaTaRWfa7R2IPHoSUgjZv
	 RVXzlvCKbRCS5EmS4oFmDZ7gjfaIUNn+rWSWT7Dky5CG08MH76v/0fZjk+9RSCcCIc
	 nagD+qrpzFjRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5E9C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439871369.26325.1553104646932560105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce60c6a767ace98f3e1c9f2af3b8d4db9e6d15897d5fcb617e391b94102cbde
Date: Sat, 18 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784398713
