Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6F424B33
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709847497; cv=none; b=j5vOZAZ9k2yCZqXI/5Icsp7v57+9AvSIMNp3s8WgtspXoz14KSjtthJWwMY9W5txXhzgYmgKZwzzWL53oHwbCJS+AhB+F6gRUZsH08QQAZNxRYM8hgw7VB/E5znz6KRibw5IMG3jhfNxxIFRYOw4zKxrOb/HlPEIDeOO2DvVRSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709847497; c=relaxed/simple;
	bh=/CcGMT+qwPqaD5S1i+lK/XRLMd0Gjme4uTHAEP3iWgs=;
	h=To:Subject:From:Message-Id:Date; b=IApQd80xHuxjFwHLpHxuV4N/C8kyIcJB/dNOSToRN0FL4Q5rBrzkHaiAvAWOIPo8yiR21ECtf7+zDBeKR0r5fuZoR3e5a46PF4hFa2pDPVrWM/q6WmcdQSI/71t+EJ5wodzsP1i2Yf+2/bDjni9TWYmEyxBu2UKNEZ4ajAHeps0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scN4lrYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scN4lrYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B846C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709847496;
	bh=/CcGMT+qwPqaD5S1i+lK/XRLMd0Gjme4uTHAEP3iWgs=;
	h=To:Subject:From:Date:From;
	b=scN4lrYkjER8HleJNL5b+STi++8QqCjHajsMXy/8uHh1ziCVia61Mx59qPggbB1LO
	 ADmGyRHCpopRz/LEJwy1TXH9ixHx2aR8hFY6E+bqlREGUUEBe/qrsQfdqoEcgHnCih
	 xV0zsG52Vp88F7HGuV0x+fLRmTX2FRl+f18tnSE9bmkNKm+ljScYfml6E6UbyO4wYL
	 vctz7+oRjguE8Rj9eqI5u9qYWNAsKOHBYEflprG0YIzlLotstKlOCGwnGjqiasnam+
	 8ZQ8REvLJJyRSt+zFyUg9VIBLvs7QbHqWmSnd5kD+jzJTLydiQHwF/1GFkeleD55Cw
	 wHQLQTHl2Fk8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64DDBC54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170984749638.10046.3600134190921304563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b9b19df700e70351834a42938bbfcf98a28c4822a7be664c092703801219dc
Date: Thu, 07 Mar 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709847496
