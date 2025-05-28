Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0D928E567
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748452193; cv=none; b=cBiV8H57MuoDJ2S2hla720sKBSAEM8RhaZRT12I6etW7wcCh522ZHJ/sV5zhWwgYA8+NbXvRmocmgfnsSE55myldMsE4tdS7zf59pYVXmvq6EesdtApxNza9/h6Qm1wDo8a0ASnYGKmoBZp6VrY+BniMwqVtAsaWc1fh6R5U284=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748452193; c=relaxed/simple;
	bh=s5KO7zRm40+Uv0CAJS89XjEC6VTZJKqBVTu+u9+FDLw=;
	h=To:Subject:From:Message-Id:Date; b=b8AghkPd1wGquCnsECEs+5nRqmq5KorIwdEyr9ZVYZdY3OY/VNEPpRRfHsVX7dej91loAKJTh0Cdzj1OzQt1gcpTDUN0xjmyRTpeyFBJORMmRWwbcaioNKHLRjJRRfjgg3QWnGRuFMjYmnN24kw7JIGDOvFoczL/OuEGq609IAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxGtol2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxGtol2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0E1C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748452193;
	bh=s5KO7zRm40+Uv0CAJS89XjEC6VTZJKqBVTu+u9+FDLw=;
	h=To:Subject:From:Date:From;
	b=UxGtol2FkgVXL7MTJcPYGbNSM0DFn3ep/eJWkXwDbBS4YNFe746H7TL6U4M1FArF/
	 mWKBcnX2xWBvkTkQPQnsU4Voh+h5eOFvpMoHJHeGSmb8GRdfYkStb8a4OpGxemTNYk
	 ItsClWsA5NceWHEugjl79N/fhxmacRqgqz+oxgKvWAaS1zJIx1E5OWv2UpupDDnHJ9
	 QUt79WAgLC4B92YboMluQtcIACxPZkbb/+ks+mK8pRRHOZkg0jJ9NxjwVUrwSVeB9T
	 EIBXQ1jNQP7KAUAsI3/rm8aAucJjetac029I2gUWuf+CzmG9hqGfIbalp/dXlbrNlv
	 MAEMk4woP9TdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD2C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845219357.7490.5748715765087837704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e225e56d3609d98a2b564c703501b1f02197eef59f50aa62cf7f6b2ea1e94a
Date: Wed, 28 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748452193
