Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D52952F88
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767639234; cv=none; b=Aq12LvlInD5EXGtfa3xaZu3LsfS9xAf0Ftn9By/N6PztTQYPMF3nethBafsAdLbPra6DWABtNEigwcCVWgC1dEA8mgGXYjNeCurnzMS8Fiwbxe8VJf63FNKcUzl9VpRdRtbnHnTVc50MyS+qj8exuHBmNQefH95luERWSXTioJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767639234; c=relaxed/simple;
	bh=p74zDCQIsh9nxxAyIbEtLvVr5ude/2EB9TJq0sAgmtM=;
	h=To:Subject:From:Message-Id:Date; b=ZjBiKHR2HUEhloIfLvGr2CsVvQhkUBodW48RECQguer77TkEdlRaA1eoINvbrSZAQQFNCcQmDrxNScvZDcyTfL4MClEAOU6EcasxfQfVs8unvbJI4Il5UgvaTfRDT0eUoSjpiCN41DPKjulVTX8i0zdoxSyNH5IroUq9XGJ3k2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdZQhvWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdZQhvWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D73C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767639233;
	bh=p74zDCQIsh9nxxAyIbEtLvVr5ude/2EB9TJq0sAgmtM=;
	h=To:Subject:From:Date:From;
	b=IdZQhvWPRpuzutXT5KsRTO7ikXgbcugBC4NL5x7OLHVqfKoxKG32hiA+js2ZI8sb7
	 W1gYp+rKkSOh4RCDyFfYxNdVRebrJ/GhRgV1NH/HkFK/CBzXkuPusYTFiBZylZm8I4
	 oua6LQaHgNgioplu0pJyWxIsPHK3kBGDcPPttsCuvbI0GcpVOrQErK33qnlNI/s3Y5
	 pEjBw7PugMFojc2FrZHt6i6poX1gmkRkuBeIhPqnCguIlG/67jHMFkc1aEOVVBj2IA
	 ZI8mcrkkT0EEYL3+443gRLP/IHN1TqCwHPc/K+fSKpqkp5ICcHnPR2E29gzGxshMMd
	 4KrPE5gYzcYGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA3C79FAF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763923357.28917.17819701651221211336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbddaf4c388babe885629f30e8c071e982b13216e2decddba8f2e2c24244975
Date: Mon, 05 Jan 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767639233
