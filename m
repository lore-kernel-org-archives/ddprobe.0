Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A777154420
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738356954; cv=none; b=NoHnVRCnMm7DzACqTciNREheoPTcCnGCikyi0wDSmz8DEVJzLswqvBamXYGTbVX3+zb0zVlO2K6ZWnINELJjitU4wkn+MK7O8xz4970ycLADoiTtBvbfvBM5QGZA2MYieRaorCF3xGTmEFj695YD/AUc+TdaP3K4tm+po4lKZWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738356954; c=relaxed/simple;
	bh=tLXv8+zXxXjLGDatuWLNpxW3byjqn6AghS6zwKmQAUk=;
	h=To:Subject:From:Message-Id:Date; b=gsRdLHrhKF8dXmCDCJq6d8sYLjxVqEUsoNHTFgoO/ADVyCDfYU2F6RWStsyR/gY8TKaZ+w/leeiD658XEHKSz6s3uuyWB9RUVzj5N83PIpdxboBuXMA/yWKaPqJrB2Cx/ljqO5PWDUKnO6SZy8yY0+FaConQIfQS8Gguef8vUiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jz+n6YDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jz+n6YDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F4C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738356953;
	bh=tLXv8+zXxXjLGDatuWLNpxW3byjqn6AghS6zwKmQAUk=;
	h=To:Subject:From:Date:From;
	b=jz+n6YDehBL14+yw42E576lraqEBcBTsj193uZrLIKS5RY3yRvQd1bvBUwvw2XaiX
	 3heLutGwXNFbZUQtky8bPubrsMy4HksOa40ZFaIs1wDjupcDitckiluIAR35noET7c
	 jEquucu3DetB8EQtwRVUx2kIS8nnP7+63s3cHmdYPx7mP3ulMJIvsWFazbIjng7d5m
	 SRy12zo6SJPY9mpGgChrmyOLLE65XoceixjCD4LPr9tHH7rpEUiV0yxm1HBPZ8Xio7
	 q3EW/fpxbnRzy87RI6xCsxHOjL7qvJMfPBpVzhknQ9erHDl/mUssrZQwcciyZlCdNc
	 ok7ljnuwnGHqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D41C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173835695358.7784.7875247342804466932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026ba7dc91c4bb91d6f4762e9cf0862f09aee3955b2c6ea824839cae25ab1a3b
Date: Fri, 31 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738356953
