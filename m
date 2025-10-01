Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185A02E7BDA
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759322994; cv=none; b=eEQ9Dq2UMCghqxToTIkCenJylrP/mTnSNfDveDJp1nkLfXxG36V1HOJqBCkFlWbIUqUe6dZvK03TSYNZugE1CcpBX3ETS4uvLIdDAISNw0ExwGywVGv9YxkcceKGVgw70RfgHH5zjXRpbcrHlDXnpl5Q9JIBj292+QB8xrwujT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759322994; c=relaxed/simple;
	bh=6xW5mkq2JrxyJXFrCWrBrX7Xx/sNLjwBz/MOr++7BwI=;
	h=To:Subject:From:Message-Id:Date; b=A0uKk54KMrN7ziQnMrg9qrGlXZcTg1V1XpDqrindG5Gd6+/UC8bh5kscH5+a5OA4+Zjb5RDnkLuwPaGbzzXim5v/otsdL7vaEUGr5b/4gtsbtD6mANM+oUgumoRnn5aAlRqfSwRQbXPb+VrKz9gK7f+aEtk7+NSrhODlpsk3wJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ipv3gMCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ipv3gMCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A49C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759322993;
	bh=6xW5mkq2JrxyJXFrCWrBrX7Xx/sNLjwBz/MOr++7BwI=;
	h=To:Subject:From:Date:From;
	b=Ipv3gMCKMe7rISckrl3w0dc6IvD5KiSt2N10qdfdPVv+lUyUzfgOi77JDzbSEfQB8
	 B8rjFs/a5X2rhbrZAdLCyKz7ChyvV0zt68cB04aff/xwkb7xLvBSZUC/zOsT1hsRQT
	 KWd5n5/Nki8kOdCMVlwYApAIQ0JfPvxHw9cEdHdoVdpV1wq3WQovmvfVotBIjFAvl4
	 5AkPgmY2n3Obam8JW7b5ntl2Oq65HXyZjWrZKl53U+5WSAnAv29ZgnGakurZQaLBAg
	 S3f7cLSdjz5k5aca1deFS5TWKOxIwZSc4jOxRAkQtoLbf6KI0SPuGgon+PxaIUrsGe
	 fkPdgorFlHqXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F455CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932299357.10411.11200322773313609865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86a82ed61462a58bd34167d24d243d504359e05735ebf3d2defc15ab0ad5a7d
Date: Wed, 01 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759322993
