Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CE3224DC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719071543; cv=none; b=stbAdSnd/9idB9l05LadVR8peEI6Kwq6hrMj8GgoX+Ifp59tcMT4rMllzNMRiKWBD66i5KD9WS+XnfEuOIqqp0vy/WhZ8rPauxsSplNBA5lZCtCQrk/64MLDhVnYCh4ksohiyZykygWsa1CVrxcQbo9XnyNudTax7Ui5BK+VQIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719071543; c=relaxed/simple;
	bh=C596Hr2gZBuA6MNU+eQ3p08HEClaf0QCPDaFYiFwHyM=;
	h=To:Subject:From:Message-Id:Date; b=R3fJK7qlT/CQ91lf4cjf9t21f5xXW0BssAnsgC26u++SsDZ8bzPo5PbjDxr5i72Xl55pPyiUKEXgRtdNs2BhGLihQOjensP6kqcbcR7EaFRWDF/OxtwoNTyL6OhtNErz3ui5Hq1BmTxV6Bz+QA+HXhiSfc7m334AOW7SKLbHciM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEE0RxMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEE0RxMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9289C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719071542;
	bh=C596Hr2gZBuA6MNU+eQ3p08HEClaf0QCPDaFYiFwHyM=;
	h=To:Subject:From:Date:From;
	b=AEE0RxMPvNhSZOio9T4YZErJGlXNa6B5ux0he8FjKfE0f7Bj/vl44hC3ranV0oLag
	 mwMNpQ58PcSpiPtTWQzPYloiiaDqmKfRWQlSPEglOr1ZxrXyGVa8soPmo3Bu1TA27j
	 BFMGJ3j3vZ8N148vy0fYyxqMYkX/L39TZUuCDS9B8Ub+SdjVxCosEfo5s+ij73G/h/
	 c8CicHBTIc7PYQDZa7Iopgo6JEJza1KMCRkgDO8edj8F22JNAqEhjrd6ieSfHWgDqL
	 i32nfAjmB7yzuoAQzRkRqc5hbGTdi5mkqR3IeDrby9laiIlxldHc8jTe6i/HwdK08P
	 WdIF/bDJ3FPww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A35C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907154278.8624.10516984472868814894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c571d3772be9aa7e0bb0ea04e0a9bec7d816ea07bdc210d9878e845124edf0
Date: Sat, 22 Jun 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719071542
