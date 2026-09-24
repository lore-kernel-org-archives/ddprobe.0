Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629F940EB89
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790223634; cv=none; b=cMXrHFtCRgORC806GftaoJwO9Az7mFBGSTuxBlw7Czr3hDZz5nhh5J7Y9AXFlHEVeIgIpyIb37Y7GwPJz3c20kcW3NY7CFKbXXt2TJEGK8AvBNzyeJUE04qvlJ26BQCPmhGWz93QnRFadLwD0EuokqHj9KnawZbxmPAlfmlrEPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790223634; c=relaxed/simple;
	bh=jLS+sx6Z82HQLDwg0nLuz8kmhKv2m58FjmjaKVgsz6M=;
	h=To:Subject:From:Message-Id:Date; b=SSG8MaLjoMfxL7rt0udTJxKnftJdaCYoFjND305JFAY9j/7y/k6aWb3VMJBAYJ+1DzZ6vFlaFJnvDaWfTdWv1Ug9ocCCEkP5ApxK7ELcQKn4Q/CNORh6Qn+R+nlaPip0CYr8oB7BvqGilHBtmcsJ7dYAsk2q978Vf0P+RO8ZIaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RU7Vurag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RU7Vurag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED55CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790223634;
	bh=jLS+sx6Z82HQLDwg0nLuz8kmhKv2m58FjmjaKVgsz6M=;
	h=To:Subject:From:Date:From;
	b=RU7VuragKQu/ApA3cvYUBqSg/NrhQq8OCKcqsaHCEGQrO1tG7XYzkIl2gBFTNQYSK
	 Ow6FwgjHqMmyeczlRZCShz/3bhToLOUbh2RthriYyPxiZewMevzQNlrp9ie6tnhYy9
	 V8Sf/FFu3DarGPVRIrfB+hh3t6eLdktqX7V0EvIjo1ULVWJtGISICwc2GbsHW6j6mE
	 4OrzxbBzUVTMYPfhuFt0ThkVkAigb7lO7h9fhcJV2RYribj9sOZUJpOKZCj1gRJCfW
	 vLAfdkUnA2jPX9b0fRPDl+QR1oXN+7zyubPeHQYERCluemtZSPmKVTlEHt0dOO8RrD
	 of0l3EpT1JJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6ABC982FD
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022363374.2358.18308847822329613108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 789ff1f22db11f9f87b58500faad67f27030a60806dab970d502c45d0326d4d1
Date: Thu, 24 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790223633
