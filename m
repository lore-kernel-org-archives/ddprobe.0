Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5345BA47
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718929223; cv=none; b=KOqHODy9HjOPxdWQXi9tFgO7+8ea0180YMEZ2s+RYKt8E4Y92Vde5+KelNH+mYXmur9XcvYsaiP0oEHzYKGxvSc9+ghqz1bfnmF1uZGxYCgevx9g3fBmuDs+LzdCVr3C20lbx67XDZ0JWGo5nyJJgM470YYPHTsjRahF/QgcTHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718929223; c=relaxed/simple;
	bh=31cJwvy0LOqJ/5vUu6/qzIAlwb02dPXmBBu9m090cnk=;
	h=To:Subject:From:Message-Id:Date; b=fjwudfAnqKl3Vdh4RFZzKNDb1eKN5MPYnFGjtpSuzPKiDu2DpDfbi3ESPrpNhy9S+EeH0cWIJMZjnbPWxHGZEebGmCcqXQk5d3JHh528bcYjuOjMcBN0Qer/RVQ/FwMJanLKlpNjAuKtevC1PYxF9E88+O7WtfSoB+4/XW7WbyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgFtfxc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgFtfxc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F76C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718929222;
	bh=31cJwvy0LOqJ/5vUu6/qzIAlwb02dPXmBBu9m090cnk=;
	h=To:Subject:From:Date:From;
	b=fgFtfxc9eiULaWGc4xT8amcOR012e+t0CPM4YrjS8Bck6X8SklU7YplTXYmYlojmA
	 jrO1vTmdRgIxf1VDCI5M7JdugxrYA9VMdGFLNSqGQkO4ltii6Esm3TNXsKpB5uxNrZ
	 tRzBGsMT5JySZ4vRJKlzhfgQeaDdII39qws4pCJBGUMoBeFW4XD6Nd8QLxSjgvvHCm
	 yuPCHTFy/iW0gYDMROPtMmG0DEo9So35xDcAIRo3haNopqouvotaiVu9ecZrg4m2aK
	 K3zCmSuaBvyppX7tJFDZZzAVQFKiZmprGGy4OK5yxeAeYiwj88HMmfJpICEWI8eSKy
	 LcxujYL6uCvhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08C0C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 00:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171892922277.472.2523735448498120650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaffb4425dc8361bb9eab6eb0cb1f703f19283b64980e669b49faf3430603294
Date: Fri, 21 Jun 2024 00:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718929222
