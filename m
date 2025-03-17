Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484881F2C52
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742249994; cv=none; b=Oh6O6H1tJpMX+RhbGPBkL1RlWzzQ7+O4dAEJMYQZzDmy+4z8Q24wyLJilfrJ/gLRUWLG99yVo920StNgzsgLypqotJdfOp+ZVFTEl4UhDyffzKtJLzXn58y/6e7Dl8NhySNIFmTINdDxCejYZYWTE3W4AEjmmFn0AJtZ2Fcsiaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742249994; c=relaxed/simple;
	bh=WE8iwxmsUObJ+9Af7jnajKnpY+j9/hKsYGqQ72HEgP4=;
	h=To:Subject:From:Message-Id:Date; b=gS2n3idEcf1ndcfOpoFOmlKfZZrR/tqkdev6rhGRhjnwzNNbOHSPgHRkSZfYOygUjsSOPQPMCiL00FZD8RpZ/TwDTdl/bWqMR0UAAbTWuNHJ35lV/uVyOtsKBHfWcNNFJKFbyhOPrI33hm1UTNLmmy9TYr+7ai1fdehJCugfnSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpmegrdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpmegrdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F64C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742249993;
	bh=WE8iwxmsUObJ+9Af7jnajKnpY+j9/hKsYGqQ72HEgP4=;
	h=To:Subject:From:Date:From;
	b=BpmegrdF/qUoquLx7eZQ/Kv+jqKmuYUoKWrIC6OWo4odB0Xh4ZH7AUwbHUIzVdoM2
	 UDXx1YZD053otHSvh7IOW+wdpi1A/bI5P1up04hbXSs61hlPgrOfbRz8+6OCvN3IGW
	 uqXqK8dIuQUWN1ggulAdNkuKMQRCb6fFtLJVGVq97iWulhyeRwEF+gwjxKR2NvLy5k
	 vzTSQtL+k95YSvVThZpLPmIAjf1OstJZ84wZE4Ffnj2u8aoppowH3KiQvWs6+HbsSm
	 BAX8XsxIgq0T95vai/usdaZSkYo7d6Y0asyXU2fW2nUqjmi0QIqdMygY7/h/lSrDC+
	 DzGyoHXK41utw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9922EC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174224999361.8092.10240006347020654128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce57ebcc3cb0ca578f5ed95909407a69a9dfa34c1652b2f32eb2ffec3a1f4d0
Date: Mon, 17 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742249993
