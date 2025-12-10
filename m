Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3106E279DAF
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765344774; cv=none; b=rALc8LCPJay/F9jwyM5PmU9y/zyTpA2j8C1awRRS3bM/qtnrEneujJRS4kph6puK4pCWekYbih9LGJJnsQE96AfQl+2K8nIjc3+3Cj/yo09qS4piXWMLYOHWoJ0rVFC97kuGPGx2XXE1ugWoHQfVM+CnzWJs13+vffDFsCLd1ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765344774; c=relaxed/simple;
	bh=FoS8eT/Cc5ffXENs7T/R6NIfWEVvLFe8XsyRg7hGUMM=;
	h=To:Subject:From:Message-Id:Date; b=m0JZ4pST9lORY1tDpGrBMPzsgZLPMTe0f/KDagsyFs0TqiDAiwLASUWWz5dCZxBi4Kfj4f4RSn6+tOAGTt1A+4rUJBRapfQLVTPPxV5sp1w/RAnmZpDvSBnJUqKq+corvjF5hJjhbrNezM8tJNdvjjdrQ0ey3dd5tPmzThm6sUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBXZpwXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBXZpwXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFA9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765344773;
	bh=FoS8eT/Cc5ffXENs7T/R6NIfWEVvLFe8XsyRg7hGUMM=;
	h=To:Subject:From:Date:From;
	b=FBXZpwXsvUFYowBCU2OOBsPk0P8Z1KpkUgTYkcKQKnKVgRgBGE5uFMjljDdESoGWR
	 xjN67IcqA7Jqxiy5ZSb7YI1uRu4CrG2EdxsKkVEySDYLvxCAwYu8RZWzR/41lJzPq7
	 b9YvGSA/1LfkOFl/y7kza+OLUY8xSwr/Z6nsWl1AIE8vVUQfzDP6oCDNNpW3heqal0
	 qz5URHJ5l8Ukp3N00xBvWPaeBsGNH6rm+NwQbrU781mR8U1PqJTktVKF6Sq3HN9SFt
	 NMJUOLs2YUK08tkQ7bXPCD6ax7tlOil1R3WAsdu+mRWKnBhIxoI/oBPFfE+2fZG8sj
	 ntsd4LKcOytxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A42D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534477359.5424.13061753514515026598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd989a4d0ae9860227ce6165e19c3f4ebb7cd737a07226002434f5472f6555f
Date: Wed, 10 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765344773
