Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA7E199EA3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721145923; cv=none; b=PeUzBTG9ULDkBdRF+RyJNYlc5G/x5E+DySBCfB4JsWNAhr+SLVqxhUGvWfKfn183m7HqRah5U01zBD5nZv9/7WBFEPzFeJOSlUgbDO+WyTxMX/XVTC0GTa+qnynei1HWMX+S2gHo1+rI3PGq47NzrTtsOUt4Qhcm0HrfJfvSrqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721145923; c=relaxed/simple;
	bh=IN0jDiXtepLwUsQNuV8cKROyrsh7P3BsfExYyFTEwpI=;
	h=To:Subject:From:Message-Id:Date; b=m7b28gJH/B4JuoURLD4fQemWQBLKc/wQ6UzXEWlwc7b6gHSd4jvJ1ZJBsok4pV+KmxiiBw9ZzzW7u4c9gZfhyICQcZ367muJSrTstl5X4du9PSKp9ERwVOudCwCop02+Bq/ZVNoldbAm1c1H0IProTaSyLW6o9bDHwJIz42FRbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYXL19p+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYXL19p+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE085C4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721145922;
	bh=IN0jDiXtepLwUsQNuV8cKROyrsh7P3BsfExYyFTEwpI=;
	h=To:Subject:From:Date:From;
	b=PYXL19p+1cCzBIxYrERC1h74GNcK/i0T3e3A+2gkrIBl5dOp9UGhIm/IgA/1bvBfz
	 MfolpgDmsolS8oayIel1vW53dcGm6MEcZvL9EZzBfEk5bQOBoX9p6F9h/OCUnpGV3l
	 7e50Hx1Bo06tEZuIFW1I7UoRgVYKELRgeJZWvlnJFlfT/tgic4Zfq7S2ZvaQDNKzxY
	 DSna6QkeJfNbJEthhWUj1gztzApLlbwfh7dRjfsJtzWFWQFzswwPOu4lqrOqH5qDKV
	 W0PcCftW/kKD9jH4oigUsuxDc9we2iLX4q8k8JtBnRPqf7qzUmtIt2+74iBUZu23tS
	 V4aZfgK/e9S8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB08BC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172114592275.13201.15151597296083182888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de56ebc985399a4220cdfa3b59dae74fb3c9ef825e0e63cff44ff5b25277772
Date: Tue, 16 Jul 2024 16:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721145922
