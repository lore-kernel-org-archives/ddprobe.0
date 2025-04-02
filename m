Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2946A1519A6
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743576594; cv=none; b=g3aOZa8F+Ec/HSnxugwRJczZfyOIOnUeBPKUDqsd26UjNRI9T90DEFMqxPsahAZ3MN9LTzl1iCQqSQrQDGUZws1CuKEBzEMfX4Y+kpH9sxp6cr1OpcPvQ7msjQKL12vhMT8FpoVXwLqBZd45PDd5K12ZpxZkjQVDmWNAwKBUiAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743576594; c=relaxed/simple;
	bh=7/77/G9rzG+CChz7b+Y1KNrwOMGIFQz+ThvlEmAOoZY=;
	h=To:Subject:From:Message-Id:Date; b=oyr1uQhv03BXVhZEe5t3fuVgQuU0JdQXzanv6NOqGaUidE+sBdtVQQik+nrs+9w6kNSXqu9v6GLDkABiXj+tJ7FzrCrbiTN36UBnIAnpL6a0l4qD1aQAEjY8kqKngmdDb/ETbZCdCyMNFd3AjOSR1Ab9sDaW6KTHwUUiAXFwZ50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrZBuPEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrZBuPEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A092FC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743576593;
	bh=7/77/G9rzG+CChz7b+Y1KNrwOMGIFQz+ThvlEmAOoZY=;
	h=To:Subject:From:Date:From;
	b=jrZBuPEi62Lfyg7z2Nnm7L18qx0FufWmlapehDpSAMTSp+sTlptgPq21ubLa7Wt01
	 I/cLiFre0UmzUg+RvIEVXgg+AZ0irfT2Hdn9s7yfZqeRg7reOgY/P/RfRUDOmf5KUJ
	 C0p1YdqO3a1+Z3tt0pwSyN01mT3o8AB8xr0s6LrybKv10u3odbTNIU47JHx6x8IoxW
	 MWaczt85+WzgFtctCFVc1Pd8kSyeT5iQz2iPPr5IyMxXeaTb0qHLW3pNZifpsIoUcc
	 cnNWjxN2WW98dROTyb6om5/23j4C/bBcTKYZs5ZL33C089leTMIj2d+i4JvNoWG5qC
	 Owlp0AjkUp/aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F920C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357659358.3321.9842231443064633703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6f2aade377c4dcf771caa19c58397930c70c07409c1c22bb808bf0771054b3
Date: Wed, 02 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743576593
