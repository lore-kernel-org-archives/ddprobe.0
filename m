Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE364341AA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763169594; cv=none; b=X9UPBIV84ExIsOoQpiu+bOIR2DcHyIKNEVdA+iaBx7h8dRfp+Mp9sXdaGQO2E9QFxRanZv4dCnsq4yk2pS1mpIPG9V2mKM9dOCLGIhun11pfp77hvgaaJ5k6QdAlcJo90pQTMVg2/0X3Go5lrdV03aU9OlAZSCRpL8dLyWZO1ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763169594; c=relaxed/simple;
	bh=2MsSpZYnNVxwIKPcUoPKH7TtcMcm2kEzbXepd6tFrng=;
	h=To:Subject:From:Message-Id:Date; b=oNYvyoHXA20Vhy7oJcR5eE/dgvNKJvM/vKOxURhjTu/B6CBtQu79BQeyiuWw7I7Q72sfHxsBjs+yoHfAd8Me3AcefXCwxvD1LHsEKrBU2Q4UvYMUbIO3kDvaHKPPZIlgH2IMUIzzojeCGqnp6Ih90LfmxTfTVdJ4zX3W2F+wI/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHNeksWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHNeksWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBE1C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763169593;
	bh=2MsSpZYnNVxwIKPcUoPKH7TtcMcm2kEzbXepd6tFrng=;
	h=To:Subject:From:Date:From;
	b=fHNeksWb2GNeyGbk109xfTCRmu2EID8ayRArjjwh0jMQWcNkhZ7EAXa3UzQO/ymy1
	 eEc+rL1eG+RKD6JKfmo+EDvF5BSBNvH5UYSWGUJ80I8huIC+v56zACPg5CkEdUIbQw
	 HDOdTauRQo9/PEp4Ct7oegwtLAS8tyr2nJ5btJZWqbXa3GOc27iYCXr6ddIq5SeQ8a
	 OlWxTS2OBJJuhmBmiOC76T900fJYgM8zMqHnHXU6cmN5NLUr4j14h2O8+qGaHnRJ6s
	 hRI9x2uWekQz27yKxOS9IABpLFXkvOQlYsaZhfNIYQeWqq0KzygNXt6xQsz0DJoeLN
	 ijZ2EvI+40bnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F469CE8D7A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316959357.12199.17882350006981017919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47379c09ce79627b404d6443ddfadc5845554a963ee080abef49d72022a91e6
Date: Sat, 15 Nov 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763169593
