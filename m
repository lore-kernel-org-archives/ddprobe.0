Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372712AEF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752799194; cv=none; b=k39jyJs/dcS5Oa5UjBOL8fkzoBFPIbImTkaPfx89dKfLzVvupmK/egv2tn7zTUq5qzVkLhGZjJ+D7BeJtBfcMsxMaEItMY5Ml9GYLICKu6WMW9Hcm0V/toHIRHdOcL90HPmAFaN+wwuP+mljq7ad5YNaJyeKWB2K/3uPDOXaDCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752799194; c=relaxed/simple;
	bh=ngigupoDNF0UjRJAcrG9OR6tDHyIVr1Q1kpMF2m/i5E=;
	h=To:Subject:From:Message-Id:Date; b=jN5ycg6aPcMdOw/g8FBK3n62FrZhpo8gWjKPLKhUQJ0NHRACbJd9krpKqNejvUqdNG6MH3dcvyRSFUXMlWGonh0z636fJ1bQPc/Vm8n687GUGNSpsu036AFoghtGEtgWZHUh2fU+xxvv3RhY7pUr6Vu51oJZnlyMSPF8K4cDgpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/S0atOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/S0atOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2486C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752799193;
	bh=ngigupoDNF0UjRJAcrG9OR6tDHyIVr1Q1kpMF2m/i5E=;
	h=To:Subject:From:Date:From;
	b=R/S0atOCzmNXJf8IsYPYEHzTUQmLVr3ByNuHQ5qnSKu9ugw2Onghhq/etW9LB3DO5
	 q2DVVH/CRv1ZNnIri3+zaFYYayDTtfTbrRtBUa/WGQE/N+xoD8srqmPVpnKL6d+76x
	 fsra/3eetmpnptbpBiMEIFb3YUxxiFuyZpJOI+45SPjcHxUrIDU5kcq2CULXm2ycNq
	 p7vae3AA8h5JYzjosIramsTmVS5WstE5NYkW2SmP/jM7lWPHP7DMPVFQdnqhL347Hk
	 MAeIabg54oLZtHtBUqAkZo9Mz5JIQ1dZo9PJgb2jga+19tL4Kanwf+gF7IhO1SYydh
	 Pl1LmPF0nUm6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91514C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279919358.17598.1443263502557105531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 598315cb8829a87d6454f764cd759a15ee517e8a6052b7f088a2314e00c3e793
Date: Fri, 18 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752799193
