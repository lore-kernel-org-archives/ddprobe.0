Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC37A17588
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744250993; cv=none; b=VJWE+7cNmGqbC5u4QGtlD7VPAnfPilu5fbNCejvlBaVDwUBeosM6lKzbsGtoQDOeFg3moRiEC8+m4T6jdECMF1gzyMfoWIseTRHudKgrzqloCQE3Jdp+Az9euSDgfSCfvMxDfL7AjD5UznNEPrr8/JyN1EN3em0DSHrmn4OJXD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744250993; c=relaxed/simple;
	bh=6EQbfxUbyMi/YlrdNIFmXajy/mz6mkkWwJ+iw/q+CEo=;
	h=To:Subject:From:Message-Id:Date; b=k1LkYCb9/PlLYJngJBWD7FSgaHszxHU+bdQVVQP/ZuQIkmZSKZyihErKUiljX61k36z1pIpmdBj6wkycPSmY2XPynhScih5sQmRS8UOJxkqfPZshhnrfOlGBhJuA/lJPGccWoByJsM/WbGihk3Hf3K2G0ncZc0a+fhDlVdukEhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRIxyUoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRIxyUoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2024C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744250993;
	bh=6EQbfxUbyMi/YlrdNIFmXajy/mz6mkkWwJ+iw/q+CEo=;
	h=To:Subject:From:Date:From;
	b=aRIxyUoZpwyVKzBBsJfKXQHVqgpd9eSZh0vZUJvnpAZuZK4NddSNg3AqP/IBrzhXo
	 DPSMM+L7S1D5R7y1uN8EwSBr6javEMOSG8m4Ht2vui0y3iIuZX+ItOwY3/7JWJiMt9
	 H47+ml6u6XTTBQ7z/EsRyz01aH5F+ZN+1JS/e6yD/jWAhHIE3ketMWVrJCyFJZNmDV
	 mMIxR4aljaZhewVsBsfY97ss3I/uZkKxxtiYnaJshKuOTT4W7lF+0hD+te5PxpCFNJ
	 MmrAyi33apMhyg6HQpk4kDrumdXTPaPAxj8kFPfl1yoS3mdY3bb9D1456ayitvwZXX
	 k/2R4i1/o5l0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26E9C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425099365.23837.15584985379594370954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a291e9875e423b3518f99e3f590215598405ace49f6a4414e02dd47cbb90c67f
Date: Thu, 10 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744250993
