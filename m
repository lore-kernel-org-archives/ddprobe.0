Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9FC1E7C24
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744800594; cv=none; b=UZ9WPpIXtyJN1ZaeQML2B4ALrbBxrJT+1i5B1t9YcAhZZCKIa4ToJFYz3DWrMdC/S3eklW77hnV17uCIjCusmuHuR89vP4ywnfrx9PUiP2VD83jlVPNXmiUltuE03cs8jmU4ZZaR306GmxD2K3oSx6X5/oZV7Z9M1STRuxZB+qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744800594; c=relaxed/simple;
	bh=5k9epVZdxTJ87O2h3d0KE/CTJNoRZDFOpjXodqAotCE=;
	h=To:Subject:From:Message-Id:Date; b=HUGGpNJbnF3zUvxG2TWlFdITWsKIaFXEyQesytcnxm9/hWe2YzQ11soce9PrcJKWQdR2/3dFg9ILlV1ZMu76J9xG69t8YKLnvf3JBISWNNNVWaLaqMk3z9d7KyLiCXxCFTZ1dzEn79YBsyclElfs0eK943/cJzOHQktmHXm7nEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTEmbsCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTEmbsCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51ABC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744800593;
	bh=5k9epVZdxTJ87O2h3d0KE/CTJNoRZDFOpjXodqAotCE=;
	h=To:Subject:From:Date:From;
	b=WTEmbsCQQ577ly9Dnqja7n8Wwe/ynsuxt7LtWSe5E3N0U6/T/6dLtcZ2nX92r9oRe
	 yfDE5XAU9W3Td5qePesIXbQC39obIsKsWMlqa9R+SADB5ekFrz3Z90f6LNo7O6Fpan
	 j2IqNk+Ar3ATcZsGnV84ddzpal58s6vqhaooJiNfT0QtKFMCZaREZ7JHN2M3RxTYrP
	 5vy4lcA3juWmUQQTKVBsFPFc6J85opNu8VWCsdbQkg7zh6sVBwnbTXAGcsQxFh9HlE
	 CvAKITm7IL/sdeEtieVqOmg8aYSik09wiagyMPRuqZHQzNgWYKPy5nJvTeyuFbzmJ2
	 3PnenxH5i6dzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9644BC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480059360.17672.1420539147713465205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4786fce638500bb31b3805fb99bc4e6a25e759d0c00739fe0ca67944ee6cc896
Date: Wed, 16 Apr 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744800593
