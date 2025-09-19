Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170E219DF4F
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758286194; cv=none; b=tL0y2BO2YyA7dGkKeD5TBIc/cWacBvQqrZKLtll4WKYlmsgHSLdjkPVXfR/JGPrXakytQNzrdDTC5VXvcuMNtlGj/RV+iP0b+VRg9RlIONpek4jdxDiCHCcXhYElz/NXYngeA0SXnC6y0CntS1M8x+uIHVEg4IwUfB4DQxU8Iq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758286194; c=relaxed/simple;
	bh=D/LB2sEOSw3Vm4hnw1YkklDavQH6bNNm2vugjIblCYY=;
	h=To:Subject:From:Message-Id:Date; b=hWpWVSw7XAkrWAos5IDQKFyI+WnpLbT5qpJXM5R3sui9Ss689bigzoiqzPRJP0egdTCPRe/5nYQo+Nh5CFFBeugPFoeAn9D0MXz+pK2dLV7w16IS80hO1QZkJBIfBUNQ8IDbNUIQ1IEdybwJH+7VEJfq8mLncBPpDKpyY3DB368=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjAbs3pg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjAbs3pg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A827CC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758286193;
	bh=D/LB2sEOSw3Vm4hnw1YkklDavQH6bNNm2vugjIblCYY=;
	h=To:Subject:From:Date:From;
	b=UjAbs3pgcZeJXpZjfc6W5dghEJN5SfcKO6aXxX9EOyelxn09JNDLiSVLpoVd22PaT
	 QNTXTq/O07ssJsbCg8Z3zz2NRLub/zm9IRKrKKV4bL8oXfCJe3ebNT0KRe3EKAhwTu
	 lIEPTn4AM9cDOSaoEi0OqPB7U0bcc2SVS7SrZLw3pmtwmskv/87ZdDAunUcD1cKFDt
	 zZK4bPSbD+f7KMOcMYIGDe2VZuNZwNwdFYURWQd/anIdomAgiOaPPvfllNto0N6DKU
	 qfKUPVwlxrK4fqvaVjR7mXnzRR/E6L1Rot3zvoWBNAXtq1Dt4sVuzLm4zSHQWaqzMF
	 vHr6dhmLL4bkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970DCCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828619360.10349.3153952778245052603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68fb8a9ce180fff75a53dc8dc7274d7922c43cd963c7e0814f25636ac988ec1a
Date: Fri, 19 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758286193
