Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E06283FE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753210194; cv=none; b=NKbbbas9+O3H+IVPtk8JbFTIHjy9wfez+sERN5M9ccBnu5Zt6NakJT6wDM9GOTtRMhRAzSLQrcJd1+pjAZnGJosVE/0yPRYEDmsUxAUauCsFM8NvIAob6FyTyOHEyR+aiPETcGocY5azBEstd28mYw1nmUd6nsHLOl7d71/5M5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753210194; c=relaxed/simple;
	bh=lOJoRTDO7CmkAAagsny5AEuBzkSC6gpx/twsx2PvWyk=;
	h=To:Subject:From:Message-Id:Date; b=My06lBd6olobv2jlD+B+TU3yVbjToO1Y9Rkp4sBLM48cGlN+iMuDVbJheTCeU050JwYiJo3TMCfERi8L4g5RN9zcqucgdURTrzwkWcAzOudNHy6nts6DYRqRImBEnmfpuKnReEYbT6hQAuxfj1OTCQpAzgwM/tPn5N9FanOESfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsuuK8vq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsuuK8vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81D7C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753210193;
	bh=lOJoRTDO7CmkAAagsny5AEuBzkSC6gpx/twsx2PvWyk=;
	h=To:Subject:From:Date:From;
	b=ZsuuK8vqGLjnrizS3UYlQ7g40a6vF5xzhtlwXVQlYLcezJdEDXdKmeM29e2qNMBIN
	 U0uReXxtYa9YKdxDeux07PZeburmhHs/T64zTmoU6wVUA4p026lKsmDsjl/0k/gs3p
	 rr1+JdnqpiFVXvjuOg883Q+5nm/hdPbdVm3f3MV2q5hmGIvab02qZ6tAPA3Sj0Nbhd
	 WPxNdhYc6cakns8Eq4Xmj7CWSlLXxT2H6cu8Pr9MhedU20Pg6oK0Q529XNEX0RPJbi
	 oenhamHJKzBm02rnk/rffhScEo0TmqGGzg9r6iOkOKVkTjI6+1z4NK9eJj9oqiOyc4
	 ku1SkQsoGhstw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90711C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321019358.30754.5525900255423037047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc0abbb0977498d9a3d2eee246515264a8babff8920f355509575fa7913fbd3
Date: Tue, 22 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753210193
