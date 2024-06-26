Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5134C1C68C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719368003; cv=none; b=HcZsWbQ4EA/dFX86eXQG+gh/FHEXJwbt0ZN8YGVo94s+Are8h/PV4VOrRKU9jPFYUY7GLrrB6g/nrfa6miqfLZGrm9Dy5foanKen97JGnxtDI4BEGYePEwSOMoNFsW53gWo1J+d3bKZTdZAYeHtA47Yd0IBk17PBsaD66M5PJWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719368003; c=relaxed/simple;
	bh=lIFC6dx6JHYcAFG41aTXtRJVvwKVdTenFOVoxR4Z++Q=;
	h=To:Subject:From:Message-Id:Date; b=uB61HHSGZag/XZP9kQTUyFP6JdPj9SQlYbS3Gn/Ukk54wmwnRAzYT2JS7GbtE2s+vAM+Y6tT8d6cM9nnmSNjoLEgKpAGhonshEAgdneN515FyUpY01jaCT1h0WtQP9p0wYrfyQiO6A19dNpWDuIXyDzuGEEe9LI70cPvOIJ1YMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dM+02nKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dM+02nKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F7CC32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719368002;
	bh=lIFC6dx6JHYcAFG41aTXtRJVvwKVdTenFOVoxR4Z++Q=;
	h=To:Subject:From:Date:From;
	b=dM+02nKI/JC6JWLZRnRtfZ+L7s7nrNHeo5o2MDGQ3LYqkbediSEtmPyMIQSkDqwno
	 vfawl4zoJ4eSGRkJy/JbGIKnARPnHmaUfmuBqysR1H6gYh4Pe2/8Our99YuJI0lcJg
	 ikfOrqwkVw4zN323IqKOU7iEcmQ01jJmxxj69AkJZwbLVN7L6CqMVN+1vkJEScaD8N
	 V7JWI9DE3LqnpUCsO3zNZHrHgW2gVfxgpLGRb4sIZZA8sW1uQXy7Bi6aHIFSvZR9ha
	 jT0uJRVwX77DWF2n9m4PyeaR8rAMOZS7vmyfpTCFzBxhTyiabBMY4Duf/0qFjbLLBO
	 wuevlSnSI27rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF2CAC3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936800277.13157.17585260581179722236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701c2a4730cb3251c772acadf75bb1852c13bbedf9e50c6e6690d57f40809cdd
Date: Wed, 26 Jun 2024 02:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719368002
