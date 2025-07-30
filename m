Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3CAF255F5C
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753868994; cv=none; b=fDYI3L4hByWiTPAVfHw1hRpxiW/mVuvfx/7hPqmiVxc2IGpeMeD+7uln6WdSTUiY+gi3dxmbPBeoG9UAshZO0Xc7Mf/q92DHfNO1UUdpAiPJ7WApLTVuQsfTHYMmkYjNPsLBAsj0hpxStZmkcLR6hfoAu5irvUYSIvp/QiJW+OI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753868994; c=relaxed/simple;
	bh=majxYQh4uPjMl5yIaV2wi3du7tDlQYFc4i1cTcvE8bM=;
	h=To:Subject:From:Message-Id:Date; b=kUZslafJA1EgkDwsK4ZwP13zwX6Q+dRrcYAVbGic5uviD/35rn0HEJ45XAshwxWJwkw3FvltGXrD8uo25I60jcPRVbQVBDxLDoMlnbFyqUtLViGD7xxlLlLX0eBBAQLr4LW/G9g0FEnYNoknyleKRz/I5BCXLlrhx0Pgl3ObRZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoIrgdNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoIrgdNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EE5C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753868993;
	bh=majxYQh4uPjMl5yIaV2wi3du7tDlQYFc4i1cTcvE8bM=;
	h=To:Subject:From:Date:From;
	b=uoIrgdNgwbk+ziAR4XXKphMp3n7huJm2wpvGnu0WEeYmwroQ0i88Y++V0q4Zz0bNJ
	 JpPscyeJqZIY5XjsDDcvK2G5dYXTSOKeA6fEprYnu+RXLgTSzRB5p0M2aHLBiyua4m
	 VxrhPD5kjnDGeIk34v3qhZ6V6azYCiXEYl0404n5wm+yejmxPLQ0288OUA1wmnyFXn
	 bi9Ei2XnfwrR9BABzaW5gPPmd42ZK7RGkc9powFw+Zh+vSnjkrxtHL88exkVIWtvVu
	 qDGiSZp+jIJ/Ay1EVSAA/SvZG7w/R5gKIRNCPqwe4DXRboVtSMa6+rp1UOoKbe+1Ar
	 zlB2eruOzirtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20AFC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386899365.16118.5961569856969946663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789fae418ee4c39e867bf1e855bd2c7a0ceb1be9f0d69cadf1989f36e3434572
Date: Wed, 30 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753868993
