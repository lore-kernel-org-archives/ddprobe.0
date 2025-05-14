Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3017F26ACC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747190994; cv=none; b=UknSkwi3Ex3UJ2Cbro/iRJlmVCSbUNPFCZsJUs3ZErd1YGKkwhPmTsVebO4BvO7V/+kfG44ffiwwojvke3K8MfG/BKKvI7SflX44qWMzNQQPE18/iSfTgnbQkZLNMsRkIF+TIzWyf+iyBNZ2hWxnjfbXe1SSEOR/HFa1avSzg5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747190994; c=relaxed/simple;
	bh=req2OC6YWxJpXN6UwQF2qX4SC+pA/popwkX2cv8K874=;
	h=To:Subject:From:Message-Id:Date; b=RZP6FELzSAxaUGBTa/UAqs7LU5t9kBLf2hYdH0xkdG01on+1HpXs8Z7iAJ1b5yCJQ9B2/B14T0EmqRnM0smd14Y7hOjiT8gC8tmN2sOWx/wM3Fwb+2w4gSJLiqrYZuOjEqDOVPPhhiSyFGEwWcl2StHR+9SP2cWr4c8mzQ1FpaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyF22kkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyF22kkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EDBC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747190993;
	bh=req2OC6YWxJpXN6UwQF2qX4SC+pA/popwkX2cv8K874=;
	h=To:Subject:From:Date:From;
	b=FyF22kkFugiLkH91AGdMRS1vRfs+xzClB9NNzfdeVTH1KL0eX7FLAyee+UgltSEGx
	 3fyqa64XDHSZspaLm23YsC/Da5F7HnEuT+PPBxbDmGEnC3OPBlv3eqnbHq3Yx9Kl0F
	 rPzq86xUQ8cLi1swTKD6dXwn88YL+cHTznEevnE0hcs7ga1D3UxWHlEedLOS3GM0sw
	 ojRHUF/cebTMNdv2JmrVz3rS7/z4FgWoc75FjrZOnJO8NJSv2I6mnZlkr/DraNkcQC
	 0xlLn2L1DWJ6m7yPH4cRggsTQbIYHQKWqGkmobH48VTdBfvtwBhqcyTscQsVznRx8D
	 RQqWBHDf/cVoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF4EC3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719099357.20689.6147744575593916111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd01a8a1557c1eca5dc61017e6d99d7b9fef697842789b2eb8c432aefd279e4
Date: Wed, 14 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747190993
