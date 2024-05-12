Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824B0E56C
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715497343; cv=none; b=YrEE+Z4DMIhwEV2YGC3/Vbfs2qzMbOwcbFMQY6wFPJZa9JIxBcOC7GnuSawosW1pGMifXOdz3h2ZqB1HX8FTzUtCnY9vYG7pGJ+3S3+1TSildt7MxEY+FaKjGPbVGQf7SJULdLq7t/rjefcLae43TbI93tmacS38gW0cWPMmru4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715497343; c=relaxed/simple;
	bh=n4qxPe1wtllK2nLWRy76XH+Q9zC1usw9vHcUcqhFMbk=;
	h=To:Subject:From:Message-Id:Date; b=QeiCCfuxn8aau4906iPq8HTObSNT3tAtYtBFcmMGWnWkcFi5w/IqCbi80VX9U+FzDZGpKLYmxTXa7kvQf5/DFdf7H71fZlDh+IIAqdYDOwddyMaqmAZnzPBeB3C71CqKverW0ib46CoiZz47+7DKfRW+HNaidhLJ2doveIhK51g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwQ8jVfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwQ8jVfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C731C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715497343;
	bh=n4qxPe1wtllK2nLWRy76XH+Q9zC1usw9vHcUcqhFMbk=;
	h=To:Subject:From:Date:From;
	b=kwQ8jVfwMp1f5yj72Tp6zBIdZZRozE3EGgGJXQRh7y/kHa4Gf/fFTCV6ocTyNxgi3
	 wo2ORwFXfsn81TccE1so2PQcam09rIMa1N4t4gIiL2HSUq5CFIsrBo0cpWVek8Ss89
	 ahTKP965oQvl6qaX+sQAT61iCb/BCjwdG0XbaALKhf7mfNTykXskJj1oKLmp/yLeh+
	 QnNm2w0iblq1y8dvuUsFJeU4VuVIH+0eNISY9JbCfinIUUOjbxeaJ3mFlxv7MQDxbK
	 nlfOhKdOgALWgABqSv8BwBr/P27DyL85nCJjOD2jScpfZS4BalD7kINUg14WUsvnhR
	 aL63oALVKLx7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4ECEC25B5F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171549734284.6706.2506255544903108709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd7802965c82e6da629bcadaf7849a69380dc7e2dc835c6fbc8799c0b31ace3
Date: Sun, 12 May 2024 07:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715497342
