Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AF333064F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771346694; cv=none; b=PD8RSuANhgUdFkTf1zfccY2ToKINcwFHPi8ikHySofBah15ZBLjntXciRiO28bW9pTU5nA/ViFheO4bB65XVJmTQAi+7CJZkVvcU26sxhy97cSFNQNwFEuQFUn+Fjp1ElgH+WjW1ixaeRpmZjPkv2p8UbMCVi4aFVN5FGMsp3WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771346694; c=relaxed/simple;
	bh=8MBC5sKK91ozAnlmDCBKmHPUYRXFO9jsCuO7F3jNuRU=;
	h=To:Subject:From:Message-Id:Date; b=hlfra5iCQE9zeC2Ap1SNmZpZSq35YbAVrt24edaR4jfp+Ak36rnn0AZVcEaNdBRI3C0D8IhfCaa41CwEwPMoRNQlccmWho7d18zhAydPV2XiHHMh28jY+13WHuFw/z+Ma69dBfCXfBmKqjZBYXghTPs0Stpc5q7v4xQwlie3PRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpxdcYtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpxdcYtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC88C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771346693;
	bh=8MBC5sKK91ozAnlmDCBKmHPUYRXFO9jsCuO7F3jNuRU=;
	h=To:Subject:From:Date:From;
	b=XpxdcYtploXhirYksbHPUKY0o/1CCk2tcU3Cuyc6cwJJRBRed6XvcAY+A+kOS+QNR
	 8lLMtiqDwI1xvSRtwSKhS9Nrz46hvzE02BuuvzMSoGtvYxcPJ/+LQbFGd0J0pDgHLE
	 FL9C4ai+MbnC13wn6OH/WFQvFo4v1e7sDkdjj8KPUaJUBCuY8CRGseCb61ii6mzaQF
	 pmMZHAz0QUd1Bbeu2vtjJABmPRnMqxenvLjZaZIyl+xsffSaoiGZqAgrGjHSa02KzX
	 yArlCrogKIL/M4SWbC9mVB2BGBQ/G1yt96z1KaYQsTta0HRtTbRZ4aUKu96iT3FNhv
	 iVaMW8l7j22ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96934E909D3
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134669359.25188.8668141813733252241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4afe78ebc622ad9cdfbcce2916cef20bc0cfcef0fe0e540c04603ca767db342
Date: Tue, 17 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771346693
