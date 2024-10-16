Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D491384B3
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729094154; cv=none; b=TbdhrABBoQ0oGDEpDrciToHz6kc8z36EuAcy8ZyhHpKKEMBv0UGlyBWfjWUxgvzsB9eWh18aWFPfLBDUjo4ZyeBuOsC+4sQgFd3QQ8WNro43hZfVF9dE+gSINBSFyXDBQXDJk2DozXbj7M/1i8KnRspjsDNAa4EQjXrtuxZ+QYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729094154; c=relaxed/simple;
	bh=4Nro1jsin2dshftt71WgBM8qMJ0+INSAPnoHeIn0IZw=;
	h=To:Subject:From:Message-Id:Date; b=dOTPy43pCkH0mFseBx/xeKnRyCtQmU9ujttWhi1NU+4JVa0KyPLVJ8ZmEPxi9JBJUvspNUK0AyNaD0CG1icIyBPSKYkzLfnhLZ4T8pckpZsTPgPTJEd5YHjUAy+XAmm/vc3rzLKtRsVfKt/FCg+Vp4RjdMKpBRnuCycJTRAzQTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgXP4CJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgXP4CJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FC4C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729094153;
	bh=4Nro1jsin2dshftt71WgBM8qMJ0+INSAPnoHeIn0IZw=;
	h=To:Subject:From:Date:From;
	b=bgXP4CJdtI9NjnE+auABmVRoaUDwh7LjTeiXRS+WeNWoePmjnSoxuQDpUsz3w4p04
	 NjH4gfSPLajUUN9irusqMX7KIM1YkulRPBMy6TB1MuY4yIbEpiKMsfEKkIRi6A4kO2
	 XAxBfoAeljcmOfcqNbIASwGLDhmjZ67DkeAuhCrh8+U7hvHEAJXH1f8JTxC4kKd8sK
	 KYkHTUD/5Q3AmAi6iBWM1JuLCyElF7J6WuexUnCoGGT9qEYtdlly4oB/JaGLYOEvn1
	 56qcxMF3gRSeephsA5NIwnW89Wkwh/8ujyjGoh94TchGqic38FnhvbpEdfmP3XaU6N
	 M8ZRVXRpxtFNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53BAD2A52E
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172909415364.28669.13182754729988713271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ec6a60d71c667bbdf1bd7a0e19f0bb113dfc75cd3d7b845c44b86cbcf326d9
Date: Wed, 16 Oct 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729094153
