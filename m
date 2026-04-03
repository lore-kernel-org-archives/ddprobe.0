Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC911E834B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775214334; cv=none; b=cXibHuftfqNnVcjEx+r7hoEMAVGPud6qZ25F4o5MuzPp7cuOnZi6pJQgc2f/oRf/tKFl+fTT2cHxElNf8c2AeZOzeM0Q8xxiyql3Mhj54zNB/FO7XkkldaQjQ4fsCEUsmlQAFDjUxcNfUgf4DstEW3DA5dazCferyAi2+/4OuQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775214334; c=relaxed/simple;
	bh=Prl0cizyRe+1QWafH8f+OP8PUHsxWFZEFiYFFmY5yGA=;
	h=To:Subject:From:Message-Id:Date; b=QDLDq7ychq5D+hx7FIcZAwM5qQSE0ZB0BXNAH0Fj2WCRSx76pNM/wAK2gLDduWB64Pd8V5n2ORWXVqTg5cza+v6NCXvqbt3g5rDVU9vcLR+JgXPcMz/6lXL6x0VZW/xBB2QUOzyYCkJjETutRcWmgN44ZnJxAsmTT0Kg/XJmuTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LR+4gpPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LR+4gpPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70ACC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775214333;
	bh=Prl0cizyRe+1QWafH8f+OP8PUHsxWFZEFiYFFmY5yGA=;
	h=To:Subject:From:Date:From;
	b=LR+4gpPOzWVVF+5WsdRLKcVRJ51nfSUalZi5ywVs4dwBv3ISvOcsriuvmjr9Fy3PL
	 OuVDJpW6ZuWLBiUvPD4BeWEijPwpI3YTjvpBngF3obOdlj80Rv39Ii6k7fOImyCOft
	 6dcuXMwM0SzzjRW1Gf9FK+ufFdWHolVhkx9AIXyXfedEBfk6JMvE1yB3/pVzWG+2Vi
	 tZZvArmn8JOTUGUKuCt5Ohzb5x+Ewe4bNLEooK1zdAiW6ULtwUb8SP0vkWHJ3704od
	 OoB0NJz1nsDAd+I5Ke+wjO031+vacnTRbZNnBW4hRgO0dcMGg63dNCHC0CJsq8PhFw
	 jlSDo+6MLeBVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE573E7E370
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521433369.13528.6352862702286243531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c49389b6d5091027cc1c3a2bf8c3eda8070a00f80afdb7e6a8ffece6a898da
Date: Fri, 03 Apr 2026 11:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775214333
