Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7327940DFDB
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775611534; cv=none; b=LzSm6RbPleTEkU2RlsReYoFvgaOGqLMXn2lhIdy3QO6IxVGV7bcBVx/OSL2FXDamDTwtd0aa++towlPjYVvMPwRiH1POvsFWNBNUI/jezY+QLIqUUn3qzJAIiMF3SSEKjgVPHfcnxutQr1HtaTwUJImD7cZ3IBSI7aZZNFxbrOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775611534; c=relaxed/simple;
	bh=VdQ6pRIXApWxATdRpnteMMuuU9uFtcE0JyXDk1Us0LU=;
	h=To:Subject:From:Message-Id:Date; b=ntvnWnJ/MGO88vjMAOySieS9ngweKDUEoWaXznWzrPR33C5hNb2GMUd5Bh05rNViBp3/o9taIjxk1TMueUglznkvce8PIl33Ys8csuBFRlMosH14hl/qdfoZlVOzO7N3KrhbDQNdSo328EpY4ziChpGzgpDBgqbLqYo9W0H8Vbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6D76AeV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6D76AeV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F762C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775611534;
	bh=VdQ6pRIXApWxATdRpnteMMuuU9uFtcE0JyXDk1Us0LU=;
	h=To:Subject:From:Date:From;
	b=u6D76AeVzJhWmsVz70KOPBNuKkOF8QnKpS8Ae4ZC8sFtHN+zsCGBtwoh0St5M/PSy
	 WmIJyV39o09p55EfVc/VMzu963i42xqA3RXeRnZgiF4/5FItPy0AnwTuoPHXSxdWZA
	 QKH/+ncDp6osqm85FTFRzyBLqGiCfloG2Y59lTIcNUBdC1PIPW8RwvKpaQh1L4g4vt
	 jk5N79TRn4WASUqg/7+B5unpEsJtPLtbWBz0iwq85hvnPBKqdaRZMYRZtbCXxPmRf5
	 EfelL/rynitmFRfkAXYlWFAjPIZDc0MjTKIyT9S+YVYGN3Rbm5g0OIUHXayzzi2n5L
	 oy9+MGe/g50AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4DE3EDB7D0
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561153383.23800.13296129800645398437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e192853a191ac061aa8e4ea5e98e6234f8192034c37d6742f5b8cc247146bcf3
Date: Wed, 08 Apr 2026 01:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775611533
