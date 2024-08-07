Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C863B661
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 01:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722993355; cv=none; b=lP1sgP0VMNSQvosJ6ZVOmLZ+g64U06/xoQ41663z0tTPenu2beq6xWFzB6sXkKUl67vg17n0y3j7G7BR9U9dhsoh+48qdYDgmvAqmtvkP6JcUbBpGbnrxX6J1oyBQ5UPr27RK/P7t569KFCSZO0FMIf/9jPcQLborurclbMLfH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722993355; c=relaxed/simple;
	bh=lpiQOUdYcq/g/I6/iK3RExoj+62X0jg1Vx84u83aicc=;
	h=To:Subject:From:Message-Id:Date; b=bEymaL/Irmspg+lfTnxAevmeMUd7XuodBFr/B1ts23iya2kBpcDAdr8yvkmjUiPOx3bzeKw+EblL/ZAqab5ikPhsjtZNvn85AWEx4ksrCujT78FnX9ACHNsUM3tz86knbH1V1SVF2at+SDzBPgka/rMr4jOOLeN35Cuc7InjX88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUNvPOrr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUNvPOrr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF167C32786
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722993354;
	bh=lpiQOUdYcq/g/I6/iK3RExoj+62X0jg1Vx84u83aicc=;
	h=To:Subject:From:Date:From;
	b=VUNvPOrrSczZY75dJ+6GClyRrsilfCt2YdXJtoG1LV5MTD7PTsJ1ujynk0M3TIOB4
	 wkQXzpQTkVHw5Wqgxm/wfShnUv/SXjSAbSTCco5Rp1IlWFHMbnKzZQRGzKbwUKD3KC
	 mlWVUF0Nd+wkO4sLGAB/aN2sRJ3W7l2iaJBWInixP8ma5tlSFO4PQemniCuj27lo9v
	 QjKDqy46NFwxTTaFhN3DMzeaJo5tr/8lPGUL4A1IkDJnFxJy8wi9zMbok5234VfwV8
	 vULc3qXiiE8SDX7QY1RxwILWTY4Am67p/BKWK2zl2tVGNtNHx23xEr8fLKu/79Th/0
	 bX+e0iqPpW5yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B143C49EA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172299335362.25579.7282104378733596446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c569111b02674599380a2e37fe66e3c81e49e66ae5e50234625934634fada0
Date: Wed, 07 Aug 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722993353
