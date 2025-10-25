Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420101DB54C
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761358194; cv=none; b=aS7DEfiyhMKChU4+BRUIa1XNzChA1pkvnxplVNaHbydw6Dp3uqbIP2k1Rm+R8lg1Zj2RNVW0xX0dTLIdN8Z8Pn8jwu4u4jDoZg1m77YZvtC3DYFeuHM1YMWJE6h42TyeiezPH8rg346M6EAmEPVnnFRHyu/dH+41Zog9HETMxQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761358194; c=relaxed/simple;
	bh=wyuw+cgDL076t75PGQ2P/6RO2fQIIKAuOr4mcAttxJE=;
	h=To:Subject:From:Message-Id:Date; b=g/VjBlLveW01ph3LOIXu/r+CF2yfg6Gxw5kvwUXBMsi4TkRoUPyw5yDCW9Yw9lP1KhaWzNmjxOzz60D3WU77oHCEJ0aqHmGonSjUkEg8FhAfJjVBHRVSghta9GES81KCcfNjrWNEiCtxVhgEWzOvfrS+CJfDNoXvLmRZxu5RQWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfCxpvFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfCxpvFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1F8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761358193;
	bh=wyuw+cgDL076t75PGQ2P/6RO2fQIIKAuOr4mcAttxJE=;
	h=To:Subject:From:Date:From;
	b=YfCxpvFtAyScCAzq4iBknyj8mJUuGc9guci86sfUjgqyPUD6hS08EMWBEbuGqEqSn
	 7dGGxZ5UPZ1JRx/sgn5xJBYvSNjhcNUCiT5ETT+mBoHZSfc61lY1pVFzKuclSk4XkY
	 gwJ5kxqY+v+25o6NDIVz+EEr2wKIFaIaSV9W/WWxhxag1OeBADe0AKNwLOsbK7yXr5
	 Iol25NE+Id9Gj8z6ZnM3Y+kgkCHZrD0XIEJ+CoQXifseN37H0vykZLh3pBdPn49alZ
	 xjZSgpXuxZUmpSKcI6WFtqoMj9Q9Qx3Ll8xgR6eaebfICXjHHEyltbnaWmC0Ptuj9V
	 FntJYB2fyGBAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A829ECCF9E0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176135819361.23039.6632860395120563031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ee2be48ac551a530787131b205291c70401f8f50ce217b680bf7892273d72b
Date: Sat, 25 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761358193
