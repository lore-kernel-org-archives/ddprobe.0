Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461743112BC
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780338274; cv=none; b=Mkw/5//FN/1zbO2sw0TOD39nLdlTSvSfxFVkwDr4yHH1YWD5kNJN5mIZEUj844S+SV5OqOSWe6+6rCVNBtnaV7p8/LYzuVN7N0X7KYR+O6NyyjtffEebshIDPdK/vfyUF0Qsh4rI222Lo+vxp3HUKrQUNdk0gepWaBZK/xqP9/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780338274; c=relaxed/simple;
	bh=pWludfvpbG4CynpIfxcAgtM9EbpBDL+5tGVUFo6UoEI=;
	h=To:Subject:From:Message-Id:Date; b=uurZdZiKQxka2CbUoQsoykxaSlQK2YY141szU1fAwQ7BNnJuBVo6GQy+/W21MSIcCm7UBiSDg7/hX1GzjWZ7pZPQjK9k+nt/Dxj39rBbVh/w6e96TDGdoYGnkOE9xbcU60reerCM7pxtcuD3eHZcowzArVL0AccRLLPILtWU9XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mB9WVx76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mB9WVx76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6000C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780338273;
	bh=pWludfvpbG4CynpIfxcAgtM9EbpBDL+5tGVUFo6UoEI=;
	h=To:Subject:From:Date:From;
	b=mB9WVx76S+sv2sXND9ymK7JlAZPWbe+Jwmq6+23dnEqm8Wh4MdhMloDZP5Ay4K1v9
	 z2oKF3alds3aldciYs50IyWNlA5T1G/YUB1ZGQrzfORgthO/LriJFdvDJNb5FMPDxD
	 GsE5r2hakpPeScd1ZqtoZOGlgA00Fi7/qw9D/eGIv6RzT1MUtPaMOTSzi07Bb1M2FY
	 hKIzcDstk624xTHhFzXsnnztL/LbTs/lf9DV2e/4DYG28PKQtbo5jS1Srm2WDktoHP
	 w7x0nuiqqIsCjJekdZh3FiS4IRzsvuT2LaHUM4vDmV4D06uoT1ynk66O/jq5tNcXwS
	 z6fWCZXMuy+8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94FDCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 18:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033827368.8878.3250015215108330481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b1fd6a480965ffe566aa3cf83f1401abdd8b1ef40e7caae247bf33d8ebfa3e
Date: Mon, 01 Jun 2026 18:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780338273
