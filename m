Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E923A9630
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778697634; cv=none; b=e7IjYqCnJljGY3+7kxkanQ0ixIw26CtQsjUipc+OhOCkT0FRgyThEoPUNGSCMCfeMK5rRtmQazPmZHqBi/hgq8Sc/OmOjL0EhGBmy6gLZW6NhcytGmhxUVpdA0pesz0Yqx+0CO6nTwEBXIXED+1gl5/UCDq7l23r7lHCoE3GbXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778697634; c=relaxed/simple;
	bh=xKlJ4lXCagB3MXLFFdLKU5pBrQN3SmGHggcsaOrwrhw=;
	h=To:Subject:From:Message-Id:Date; b=nsnI8EnA8SuVgxHlZz6CPw0ysr5ja7kiNRwEtpKqLFO2iK99H09+qUklCXLDhBj1ixmlT0uZcBRRqCoS9SnMobeGyZLHqPntYy4YhiKAY0utX4eHnzBVTInkHZkTiSiFNwhO+QOGirwLVy6ZU/sHvIizLK0FtLGUws6GVQH1n/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nd6vdUhf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nd6vdUhf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53EFC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778697633;
	bh=xKlJ4lXCagB3MXLFFdLKU5pBrQN3SmGHggcsaOrwrhw=;
	h=To:Subject:From:Date:From;
	b=Nd6vdUhfH+Qt1hAr7p/gSo1qaA1Lg5YGq+Ce3cDRqJFLA6DxirsjuSKHKKr5uHiIh
	 750iFbZFB8G+UlV2cMLgEuiE5HbKoLScQZ2smcXimjnUoxgS2OWTNlZNNZ4xLCdetw
	 4SdCG8hL9saIlZCGt5HCrDAx1eT7HOwvVVwuGjV2wqSRwLJlM525VIdtrLzZ0FOKlb
	 513ZKfgTGTwDI30KNajsfADLzkbM+YXEWdi2iGzvlcTGcsrWGyodkJxtE/H96G5qcO
	 e7Qqh85u8u3k+pt+Qkg+7UcjTtw2KRDuWUyoL8tfPfyK4FV60GB7rvo6OJQ4lins5w
	 DW3i/WACy6pNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1A5CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869763370.15289.15244693029209008211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ef4b473db670a9926af8ac5567d80ef3ba7568c3e2cd53a4862ff974ced260
Date: Wed, 13 May 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778697633
