Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5B62D2488
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779906754; cv=none; b=DsWceVJ7bNMBR5r7nf1YJU30A9bzvyoZypGIVIewNTYrV7vNPPsX0Ztmlv8CCyNsSsf6HnYNCB4xOBmxpocY9kREsdmLi0XsnIqBhtcetMNzQX78xZqeYlO4GoL0Q7VUnU/o3+3JTsqMQhS6krUL9bJiaOsbXBOJC4TGGAsadXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779906754; c=relaxed/simple;
	bh=5d0HLt0+oM61Js7L6ptsMLPEHxl9wzxtC+zYbyD3l/g=;
	h=To:Subject:From:Message-Id:Date; b=QoACGOsinUu45vRldjYG53Irkz62i2i+JA3Jbczpsz9R0PyZn0vqUkmWIzWKceCkhMlhuTJK/u5EVdsokafU3uVjFS3HqXruCn6ohoORKy2zLHJbksUSDR4hB6iHPO5AcgsQbgWQt9pGW7j4ldGnDChuf3DFFMf2X/eB93QA8L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qml/7n+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qml/7n+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDE7C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779906753;
	bh=5d0HLt0+oM61Js7L6ptsMLPEHxl9wzxtC+zYbyD3l/g=;
	h=To:Subject:From:Date:From;
	b=Qml/7n+d6qP8da4dRVR+tj8BJva4+RSTUjax7WmPEYdhNnA2cWNM3os+R94n8kv4v
	 ao/2qMDESlzqTd67b9gXMvixgxV1AN07OkFyPAkEeQ9MYbY8xiOeb0xZaRADvPyth7
	 dTKpTMtg+QW34jurFAMm8yA71HCnRu8V2xnyMR89Xb6/u7/S/FnJ3vSCbGFnvO/akK
	 EFjpvULpX3tNkDimmQvwPbI+DW2CeAwad+1QaIBu0W5Z34/ESBz31MrQlyi2oNM+Ey
	 2cYoRDhjdSAalY9C2BA78PWkBhIDwjGbG/MyNo9cf0aAW7CzXJwdIJQpCpkpeidZ4r
	 3FKfALhcf+amw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F00CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 18:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990675372.25591.4203290967026661577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a13cc8b7007f33762fea6e842a8918fa0d6aff375ff84d5fd4d9638100cd147
Date: Wed, 27 May 2026 18:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779906753
