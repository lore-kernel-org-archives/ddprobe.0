Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7A281724
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777118254; cv=none; b=J7QqiKArJgSOFseEVcnLg/XO7KK+3tqXMjEdyXM4rr0ut+SCmDAA8ZZjeb++hNhdAl1wfxvv2/TZrxnlOm6/nMoejAUIn672BIL+1enSSeRaUNuY/9y+aEB1MIp3EoLVFziLYgktylqGT4OzMF0BSklH8zCMfpSsmTxMEoqxoao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777118254; c=relaxed/simple;
	bh=KU0H6fRM1b4+4dFxvjwX2LqZkokEFDq1qL2nhWKLobM=;
	h=To:Subject:From:Message-Id:Date; b=d9xxi9tvlx02rJ5WmPjWH2ITGEFm90znPZ5D3+hOTUi9m76Gru9tLy4A+rc1Qn/pZ0zloGzqPUU1EG6ysaWXFwtuKFjlGidnI2f4VsB34ZOD8wV8y94TVxna4eNxp6xVo1iS22glxTwuoOQF2AyLD6EvK3YZxb7H92Tvx5lZVps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmOSVShl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmOSVShl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC99C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777118253;
	bh=KU0H6fRM1b4+4dFxvjwX2LqZkokEFDq1qL2nhWKLobM=;
	h=To:Subject:From:Date:From;
	b=TmOSVShliBZZpGeU5yL8OnwEyb98UzSng7mVHHCNPT6AqKfSux/K1IWeI7ylgDvsy
	 nIIvYP+w7Q4z3z+tEOPUwI6C8fpvaijMz/lJJMAQ94DidaG+E3dVQGWFhyC91CBj2/
	 lXzcIUtN407hNH9Mid2cXdo8Au34vFLTDR9WilJpG7V/ydCtXB4FV14t+YlcayufOu
	 x3+lM8WiG1qiNM3IQhaPeQqfMc62TLl2KdKIgJJzW5zw4pRxbuJc79OO102FCkGAMc
	 OXPfmdylX3eKRYEN40KRiGK9r2QeZFizMfaLVp/Hs44lGfEd9U9fhKfwL4d2eT9WC1
	 DBCk6Kn1gub4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE69EFF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711825368.24980.3690132761726951826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba4faf2cce50cf4cf727fbc62dd1dc32d5d73ec453787efca02429efcb64a244
Date: Sat, 25 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777118253
