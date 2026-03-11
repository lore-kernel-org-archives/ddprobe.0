Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DBB3B2FC1
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773228894; cv=none; b=FeLR+mGqlViuJu6ALWmJH772OMPSx5LpFs0giKCJXhxTvjnltBvAxih3+13mkfkI36jxsMiyMLypFAqANFTfAlz5p+nIhoX3ZA3hKwDtJqPOiPKJlgxxhAYpep99ILfhKrSd6D3l4nroulkxk9ZivAl2aif+uyUsIy+7uw/N9pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773228894; c=relaxed/simple;
	bh=l2DctLmDslGkIWHnSrtagkyek9zrLcfX795FLYvwF8A=;
	h=To:Subject:From:Message-Id:Date; b=FgbEt67JRkBp7zTpE67V/zCsvdpYBQfJmM+oqEdRfmdhFO4jf7dpqYEkaVSDmQKJFx9Cy2DUQc3Kkhq01cpH7rB2wBxJAhF2poz9kRHsiE6oRsnyp8wcvNZ/UnzGn/1sAjYOZBzw2uOyEiDIRPjaaEeNubPm9JvRAW+EAvuhfTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USXYHJ79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USXYHJ79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE08C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773228893;
	bh=l2DctLmDslGkIWHnSrtagkyek9zrLcfX795FLYvwF8A=;
	h=To:Subject:From:Date:From;
	b=USXYHJ79nsCc87EJ5rNRNNkeYRk9ZL167MKILmaxc4hz8Okt4TlasnmDPyGhlAbNu
	 aZr84imjJ33Sgy2sJKB1XCi/IAtjy9LYAd9982QFXUFmo/019Q/bcxzFzKPLRybbVO
	 KzqY3hA3RWTm/kI48Ae5lW4OJ36Z/7ylKNNNE1I8rxDDmSyA3sPSsBlm2M5ZJxMWQW
	 vwulh698E73/3MNexeqBDqBhO3UvKXFT2CZAhuw7nesCLZZ1VTaQ/8vuik4SE2rjX1
	 J0M+VFgY8gHtGV0P6V+yUMQnBORtBeySy8eDd/k3qfSommUGOTlwuJvxeVcxpUFAqM
	 0zFGia8T11Zzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911421062862
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322889358.14891.8186243322199942170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a796f36514d957ffdd1422e14d115da7c74c02f04f76a7761572f6d08b8fe1
Date: Wed, 11 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773228893
