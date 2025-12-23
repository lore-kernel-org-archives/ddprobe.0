Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189F8335BA
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766514834; cv=none; b=bGfLR7yNb9U7sGdAPVMznbQXrkJS+tEwz8ZgfTvHRcEfnfLEr3TiQ+r8Z0El09NtOrUUxdYXC2zaT8LWsRIlWhw/L5skblGMVFURcL1TMULGeHByfOlIhqpnxyavFRGrnIGYJSkhcIUD0udYf5ElOztqW82YoAaRkB60iaVfRGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766514834; c=relaxed/simple;
	bh=P8+oBqvHOpPnDyFkB0ANbvixJqho4x8GU6D/vauzDhY=;
	h=To:Subject:From:Message-Id:Date; b=Bab0Ez+gZGc7PNYdPTc0Gn6FjsPq4gRJdM6byihT2Fy7GeRgJ4NekSFPuWFBKduFDppjMBKFWHSltEQtXley7YD8L6H6JicqEZ1hgWMuVGGMWdxJZ923W9x6yP6paF2XtlHKpPNj5N6EGikZ845iJEutKx00FyaqqXzjyEBgh6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N12L/PBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N12L/PBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3945C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766514833;
	bh=P8+oBqvHOpPnDyFkB0ANbvixJqho4x8GU6D/vauzDhY=;
	h=To:Subject:From:Date:From;
	b=N12L/PBk/6LiOHdx1UcTgvEwOf0AL5JUj1yiubpyXGjycxAKciVJ5miP2VGpurrxo
	 At/XMXgK4Yi36QwEhpHRUmJtLRTQnaYcaiqa1saqDO2absvLj87g3lRQTDWbMbqA+O
	 hrlT0FINI7h6+IuGnqiMTvVAkYdxxN8pbEmdm17J3tQZaOydjuQyMOg4qPRK64ycTv
	 /HBKwIXljr0DDDCl92dH3K1wE7FIrQUCdppdQgux0j7vuFN4HTwxcoZLwiOnZOiFjE
	 soCeA3aupYwqPxAfxh+7NLIVJvfEMdqQ7KD5oo2mj3PvQcxYheDtd0kiN4IjFCt2P7
	 WzOLsSyO2VbPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91018E6FE24
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176651483358.12202.13193919883461242647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8208ef66a0a70dade98a6d4fea72714ef36f97493707107aad57358192c82bec
Date: Tue, 23 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766514833
