Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220F621771F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749713394; cv=none; b=ux24qUtqUsIl/sNAYr0IFmNYlCuMVtnoLMb4IXj3sBPU0UY6vU9damoDyRawfVxh81cYUny+uu49zxojDHPhkY0P5KtgVejsOnjulfkgnJDETOMkkBBD3CPfpGtFprGVCpwnLXmc2PchN6GtLw2ZtglO4LRkLwMm8EQyyBXyTgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749713394; c=relaxed/simple;
	bh=N/0ugVzRymFC1XSD7ulJyIoAntYktLkWf61MTPDwTOg=;
	h=To:Subject:From:Message-Id:Date; b=aeSOwP5xKNrATlvNoNw6XdpKdEcbocCdNRWt63v11F1VuB6xXimbWgybIjMeq+ET2VeJr5c/E5RdOz0yu7A3+59NXkN5ZMniO2h7eExLZYUYkeH0NVAOIlG/K8zNNMDCnBxJm/Sh7Z00eqChENuXgnwebhoiypt5RBmIF4orGfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrVcfmaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrVcfmaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E873C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749713393;
	bh=N/0ugVzRymFC1XSD7ulJyIoAntYktLkWf61MTPDwTOg=;
	h=To:Subject:From:Date:From;
	b=TrVcfmaAP+q0CIKag8ie1abzzjl154Y2qkJ8RNK7poqlGghGiTQsDflgJ+iuLA3zV
	 gQWc0kgViyxI4FrQEyMu2YZxgFsGbUBfle5sP2BcYCCWUUFUKYWCdiufo1O1s2+wNB
	 6VGyeIbUNVwFwyhxDuMqsjFXoG3pLUGf5NduapJT7A7oFRImT6CS7BAhjhdv5Yg6fz
	 500e/SEJwIUsxbAvLInqbEnkLGKl9gymC3KTzMxUDL9bkPTCBOB7O0ViaL2ldy/Jx3
	 exP33FCPFwbbasaicHLomg/rZvHmF3O1D57u/FEsj3BxzIP4+6p07b5yFtvUhaa318
	 gaYhi4rFgisRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE84C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971339357.32459.182487048630980483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c288fb02b4e720f4d5b1d9d9203ddb7258b943f4d79e59bcf03bb8341ba4b70f
Date: Thu, 12 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749713393
