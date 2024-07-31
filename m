Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BE8C2FD
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722392754; cv=none; b=dWtr0nyDp1qn17R6qzs24JIGGOVggbF2pcQjYq7cySInFOib5qqgmmbDmXaCFEexv/5xjUEXfVcjbjiXg3RxZnYjCVybsovtBV6DSgF/8wHhQJ/Gt7f+YTDBR59Mv5BWFTCc1xVtnehbEs8eJAWilNstkf9olo32fI1/ECmnBPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722392754; c=relaxed/simple;
	bh=g/fcLb9wabNsu9ISVvOCtcDkCbYhFEZW9FK6xndknzQ=;
	h=To:Subject:From:Message-Id:Date; b=rKy1pEat9CWSMT37XQgrwP+xj6pgHpLsgdtDpPBcbHrKddEREbQ08HHW6ElqQiBTLGjko1EkiMde9koErRh/iQi/UtlO+1bexRLF1owCRtG4dDua4kBz/d4BbmCHIlZsxrebzBCqF7BAsU+gw5SIGGIfH8TRv7FYrM/ddBovGMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4DxyX7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4DxyX7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DBCC32782
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722392753;
	bh=g/fcLb9wabNsu9ISVvOCtcDkCbYhFEZW9FK6xndknzQ=;
	h=To:Subject:From:Date:From;
	b=r4DxyX7HJt5sBjXHUKg83HNT1xeVkQwtevLLQMUBy9hiojHHWcLWeCiCaJXNuPbSg
	 7hhGE+7TpqCLetYygTpYl9NTGCd/UqZbvi/hpzSrsGITpDpR+RQ2va4kgMFNpGPbs0
	 UF5XNIDU7TDxNz8HNCajr9nK1bb9hVLW2sN9qU1B+4Qk5tl7llvpPVGeyH7s6xg/5E
	 ua5LPLKxbReOJzC8jVQIVF2VG4GQ+owXuXwDZJ/Hezd+g0hzGRp/vedbfHgvXoydGM
	 lBqEwEuIatqFkQb1VMUGZ6mPiGhNr3TqOOT/b3Xfx6E7UyySlVDAoRqksyRO6ScQsK
	 hnCq4iPjhTPtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FEEC3DA49
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172239275359.22675.9428020615933397810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35785e0099effc765c64de48887e995c6439f85864dd843c1f5a6e0db1ae3de
Date: Wed, 31 Jul 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722392753
