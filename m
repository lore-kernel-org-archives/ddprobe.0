Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFFE19E992
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775707534; cv=none; b=YJBKHgJjIlaOedCY7vZggiSGIgOAj1ep9VJxEd6PxVf3hFK+iTzay9joTAx5mnCHFqJ+Yue1KPpvRMq1tNLiEEmzkwK+rvW2nKL6J966CHo1gUcjLDZpcCyXrpslFqQrhXw83p+dluRtAgubZtw+ytuMAg/Lih4aHU0Z5jEsIf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775707534; c=relaxed/simple;
	bh=y9MDfR+fACM17kggWB6KSGDharUL9ysEF19C7XszPuU=;
	h=To:Subject:From:Message-Id:Date; b=AogXtfXtoq5iVQ1Vyn16ZDQe0Uz00pQzU6hG9gJBBEbr+XBNOolusy4WzeFbZKJ/tLF/oRvygwyf5MG0uE1six6rX6+1eMc6la8k+JcBOzSMta9rIKlqYObaaP01qk3m3AeXuXOZmbGtcXvDuoL/LRUReoTFbVpV3Fb41PxB5f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrk7kN+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrk7kN+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D3EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775707533;
	bh=y9MDfR+fACM17kggWB6KSGDharUL9ysEF19C7XszPuU=;
	h=To:Subject:From:Date:From;
	b=lrk7kN+XX0ogdCB6HVJslk4ka9pQ+vNCNbXU4hB2TmtkxCdOIgVNPkDoeVzXJHUFZ
	 5eEq3R4kMqmiB/99KwyUdZPsU8bTO7gK+3Njl+GCIW8piGCc8hctyEQKCgp9RnTLFV
	 QZ9WKPkle4x0Pi1GVhv9JvGeL1MWIZiM1XnE7V+Ybqgj0xsGSQ8F89i0fH+uAKxNfz
	 4nguIQwXnk1+2zCQz8hlbI+nEp9teSN0rcZk0Zc4sG8qB3gw6HlDHJ5ThuEnGIhzhP
	 eamPkqxX9Cv1zxPPZjcLbNBtWWc3RaXCoFIWePpDB9/JqnOnVfk41nNZn8f/ob0usf
	 vLaUn6hn7CoQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94F5E98FA6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 04:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570753368.17240.13861540434754227624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47b27ccbfe7738328c6f7527f1ffb9a82e08def72b579ace6de9706eea5bf500
Date: Thu, 09 Apr 2026 04:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775707533
