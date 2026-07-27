Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4252936EA84
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785152434; cv=none; b=ilhiTgm1P9AxD+EmEEiXEC4o1Ky/awzbazGO7Un2208h5ofHX/w2ppjqzDSQfuoVbp8azEpmt6uIcFlyGc99XMwBNxhX22X7NobzyXwKUAAihzFeHmL2aakywGNS5gzPNVraHuQktJ1wc/gs+wfnxkurrsZ47oM3+ntk5aarjTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785152434; c=relaxed/simple;
	bh=dxRnW0Ao08wgAftR+VtQqjLNlDAf/qzvkPKe4YOvokw=;
	h=To:Subject:From:Message-Id:Date; b=VErPPBieByKzcruCgC+JsiQ61wFYUsTBR/9La/jtBOcXCY/ttzzM24CVuLSx4WHPrXiN8zeND3g4qfmHwCkBWqWdietZUa03NFe1By7wtjAyFlgYJbTllDyE+JjbffR3WBwvtWKoIEw8kBK8tOPV2umPmFe4+8KsvgL7R2HsaJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNGxhTzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNGxhTzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0FFC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785152433;
	bh=dxRnW0Ao08wgAftR+VtQqjLNlDAf/qzvkPKe4YOvokw=;
	h=To:Subject:From:Date:From;
	b=MNGxhTzFqI7vz60EzAl2rgMJdqmItkPgZIlU/jrvE/Ujb1WS680qG9wBERPbKn35K
	 /DJWSNwh7WrNg+8G7VxfUSKFlOBb9VHaOL9Y6A4U4hMdfGZMbEvlWoy0JRXY7/zAr0
	 c4N2jsFMFjJqVU1f7Fsd7cdmgg53f+VOTBMwff081CeMj8MxjA2rS7TmTJwGw3Lx+7
	 H366qPuFOI9r8zog3rcXqzMIw1YfO1xYNZEMn//Oy5uBZAQtV6Kgzv3vRLyQ55ImFa
	 z44M2P3X+usTCg/MDvdTc/5h3KOoiSY88WjYpxKT3JATrm1DGXy3fCT1e48Q81NipZ
	 RBT24x3hu72sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A911EC53219
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515243368.23375.17910305940802007645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de0049cd4c22369be393e6f983b0aab595b181909e0b8e38cf0a1a0f8af0bb2
Date: Mon, 27 Jul 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785152433
