Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D46A2AEF5
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773539094; cv=none; b=mfpz63n2x5TLnXGPRr1Tv5SbBAsf46nyx7dC9d0oGGOUMX/VgAd0Y+eVRlgX9JqXhTBq7EogXzMZ/zMRLhlnsgrx+3EUU85G8SlYvOK0J8soerJvz/96wi5En1Ko2rk0lTnwgY7nA9vt0oc+Py8S+RDjvfngChzpREHi0/7HCPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773539094; c=relaxed/simple;
	bh=7novPOPIosiAZWDWnkAIUaPIJy9aau2pvDd6xnRCAWI=;
	h=To:Subject:From:Message-Id:Date; b=CCtdqWXFTDbEIe6l/udcNxAsCVKdd4y8tMo1qLTIbv3TR8Kt5ba85c/M1KFvjXRjZJzd5Z9h+gTVdX6vq09dAc0Q+W5SZ3LW5HqJVvfhEypJ+rxWQbEJxOuNWBFqcD+M917minTeOayXbaGe4gXHgQWkY3SFfd3jwnDNLnEqPvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxeQ9mek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxeQ9mek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A7EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773539093;
	bh=7novPOPIosiAZWDWnkAIUaPIJy9aau2pvDd6xnRCAWI=;
	h=To:Subject:From:Date:From;
	b=OxeQ9mekdYINEeqAszElR8LqpDnB+PlvkvyLoQBMSicCwX1TtQY6jqzQOmRb0Nbyq
	 G7enSUw3PC5UYlBQWKpThIXdKwS4St/5282C32x70o9pDAwUKZK8a4tr1cAQmHnYj+
	 bb5XZcn5e7aRv06lTbORtCK72QJr3Pf5gOCqIYIqop1e2D4KwHudz0IRTciF7TueLA
	 JjYOttODxwpCidAOlwgZ0okOlL7txvGeUO08hwkFMHQhwd9Vz9qwrHveXdHTxQC+7M
	 JbSHIAtkyedJ8qiC4GtxTH10Ivhx/iloe2PSz1E73doFIP/bSPqyQnYMSpo3adUJJr
	 cJz1D5yALHtmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A3A10854B8
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177353909357.29546.7484211476395937298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad97fcbd485efb8c8f8232563479bfd3f61ea3e23c44f0398f5088d4c68168cf
Date: Sun, 15 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773539093
