Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21344302140
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771104294; cv=none; b=rXoNHn7oPpZLGqb4LlmpO9v1u6j+xKaNZUGWeLPk+GHqA1sDOJ7+hTjZxPn33RlfJvrQeLXkU/0RXbVAOygDesbHNS/4/4Ki3BjX+28KS+QYA0EUXgWwt+CM2Ns1hvpDOoIOio48gtBDe659ERiLXqPqSV3vjhSxP3QAAWuRmqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771104294; c=relaxed/simple;
	bh=mU5ML6jPPxDrVIl7DTzMX6uaEKGBPi9JZwKILiGwILo=;
	h=To:Subject:From:Message-Id:Date; b=JQobQFEH6HHsJ10phistWyaHefGRxqZwcknCBsX8Ov3SubI48OX8iEFryTd2cg/DxVdjrJF20R8NmLG2sTGHxe0Rz6J2nGPPBRTNk99o6Lb0De8SfeTr+BtEBzEBp40ovrCfutvQUT35upCwgiso08nWhz+qBCwHtNb+NHucniE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kD1iwZJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kD1iwZJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58D5C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771104293;
	bh=mU5ML6jPPxDrVIl7DTzMX6uaEKGBPi9JZwKILiGwILo=;
	h=To:Subject:From:Date:From;
	b=kD1iwZJsWu4lhP//orWacEFt1UUYVInkmHFvY+KJY+meZBIiKC9+x3fVPhCcX1DUa
	 KvUR/NWKasWkYWqfm4onEJezi+v7wAmU5AXaAa24qdkV1UnMfZFvxtDts43LZDUq0U
	 Nz7j2RzIHqCIeMgkm0JvuSUiEy4kMLHRFdXpnlOoEEq2X9eGOhNKuRNPxA8UcTWT+K
	 1SC22aoPxSNmFHEZoquB5lbK/Ov6xslzi6TGcohN9UqkJUXXRIgV1uRleZfacS4xZV
	 tesa6Tzws0oJj7B3sZXfxKc+jeMFTNbfyL8rcz+Z4AzZU8CXHWz/DpGlynx9iuHFx+
	 D9uIWdcOvl/XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12DEEF5852
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110429361.21685.9817586637029675759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46596396e158e2dec029c8e05166f3fd8269af4c203f8b1ec9963e36099465b
Date: Sat, 14 Feb 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771104293
