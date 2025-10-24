Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5F115539A
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761268194; cv=none; b=guZ64QwbIX+OIlXccCWaE+E7ebVdEBHLPcP4q28kFBr01nXPL5Nn4iLW7oU3gzFe/kD2HROp1CGlKrPQmRmyZmXsUpTdcMigQ+Q0fVTXrgB/ZHDVxwhayCthrhHLM7nqu8QVVtcJn9TUT287/aI0jiiyqWHjO1cPUTkEiRqK8Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761268194; c=relaxed/simple;
	bh=4BGPeghfGRr+SXS2zVc6uMSsuS5dX+OckOm+F9Hz5gc=;
	h=To:Subject:From:Message-Id:Date; b=gmbCfADXrNXRuYrGkn6iH4zED/L84rfGdJIwMnAXDUW6SAxIPyTjH25L3VsiHtcqakT/A3YLQmImRY0eB99guYTi6y+jWlGrBrLIFI2hXhhvA0NE3SvrJlogs4V7y+aG8mrgHcmJq3SWHbpzs50sfZXn8JN/E6i8i0YDDp46hOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7h8GcOV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7h8GcOV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73A4C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761268193;
	bh=4BGPeghfGRr+SXS2zVc6uMSsuS5dX+OckOm+F9Hz5gc=;
	h=To:Subject:From:Date:From;
	b=Q7h8GcOVwjQp1aDSq/FpmIenmIAr1j+JvYbQCnpONJJnNBD2gjAMFgr5y3y+5bRl+
	 oTibg/SOiG6TBUlsCebbwtpIf2toj0jKN+S1rd224mXi06Onm2ic2+g5Yv2Cj1UBXg
	 anq7r2JA8cR12FiVp49IKx5xjsCS03ddEBCG3VJDdvNz32vweIIw7gUmN86GNTesGr
	 JiD40RmLyXG30oNbS3iKYZAR/dugGWLui/k5DwZoEQD+MpDWUlxvhnphpE2LnnwU22
	 nWhmlj5MxPkvQuLby382UFiLrX8/Ay8C++g1uBAN80yHRUr9CR1ca8DGe17N3+Umow
	 8+9l2yjxISIRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C21CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126819358.1457.11067771252342588460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5363784471e1f11b859e97856cac9506799b263b4077941116ef21944e4b6d1d
Date: Fri, 24 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761268193
