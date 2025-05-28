Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EEB286420
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748440194; cv=none; b=fhAhV7PE/51Q/fPKOqq1DO/+PfOSZj+hyrwCcebateW2PpK1zXTkSDeEkg0kD9FyKLQ0HJoqYd00jz+53FSJu9M8GOvtLDD0IpD6PvWSkCX0ap09c3DTjfEg5iY+vXfSS0u0JliKcf4ggLOqjuqS6hbyb5byk+RldzhdG2oNWOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748440194; c=relaxed/simple;
	bh=Gw5iC8/AJ/Ew+F3+dOKGvviyxd2fyeMCRBB9TtPdY4o=;
	h=To:Subject:From:Message-Id:Date; b=mfgilaKXb1Q/JDteEg8GeKJnt647cVGH9hSUiTcmsFJvu7CRd/1X1/DRUu7Ks6Jr+F8TBA4JhBzhLqkFP5ggrx5mWprzfiHj9yT3w/7Xz3x/w28c8GrlCaBU9ZDl85bp7C0LTVeme5jUTBoTn6pMgzFNDdIfyAcGLTBfIV+UXf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvVWjyld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvVWjyld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE0C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748440193;
	bh=Gw5iC8/AJ/Ew+F3+dOKGvviyxd2fyeMCRBB9TtPdY4o=;
	h=To:Subject:From:Date:From;
	b=hvVWjyldZR6W+reSSi+trtRK8OQlHZPmu9FjSiT8JWBfZiIq5KeVSPGHh3gxRZep2
	 b8SVMGiGt8ORIG5EYJj77GBbxzMP3eqrGIs//8HlAnAA+rNDMW9LFeUYCHbSfqFES9
	 zCATZPvovZrIP93TGVNRvFXSQk8O7EzTPEu5PsuWKmV+DtxjmX262bUDaWoHFQSioP
	 v1HG1BhVGfXeE98DeO2nmpd10q3JrDdADLtzgsUoanBMGSQnAKoWGWEXrOIcTRfv4+
	 NCbOD6Sis+IFE7GgH24RSna7CLn3ht6/Q4/T+t3//PBbe9Zh4DzjDpSQZIQ9yac5aO
	 ls6KUq0zBQLiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F815C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844019357.31606.9022914688444103423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40416917e674e0e15703539c0fef4ca6456ef56ca0f6ba46ea9bdddb9f1d3aef
Date: Wed, 28 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748440193
