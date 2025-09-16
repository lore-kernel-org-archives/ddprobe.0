Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81322E2DF2
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758061793; cv=none; b=pv2JTGCOg1Xo+6mNQqAKalmXivZuYBZzRq2RWZX26rCJH0Ii7763yPsTue+tStJ/cbpRZ0DMfgh5mpUonY/Dk7153UdbAxDO3RroaFgdQVgDjMoPFLEXv9yw8wekfr1PUFJKItz0o4vnsyOB0QlPHnp+h26KZJFK7R5LM0jJ1cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758061793; c=relaxed/simple;
	bh=NTgOovRBzKZmVAYv6YVjfa+e5QBo6Xa15mLQ7VdWs9Y=;
	h=To:Subject:From:Message-Id:Date; b=Mr+UJgS1eA4jNRD++/CQF1hnpa+omQ64rYoT1pFJmkjGP66yHNEtAZLiXFQrtkjnG72aj5sI6fZHeWGFY1d1Fimqj0IcLIenZlYs9jSPMD6Nj/G2hK34BZVKqJvVKVGIhpQDUESt5C65JXkgy+F7aVlBIM9kE11piYUA6hOuHZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQcoeuqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQcoeuqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E64C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758061793;
	bh=NTgOovRBzKZmVAYv6YVjfa+e5QBo6Xa15mLQ7VdWs9Y=;
	h=To:Subject:From:Date:From;
	b=WQcoeuqNQ6yQVgV2nwrUHttDUnY01jypvhQHWP76knGk0Hiax6LkevuqurtCaFMSF
	 ilkBpVm3nrlTvR0qht9a0hew8sRnB3YCRf2gTFSpwBKrzYbEHGmRa5j1CT9jrLFUA8
	 48yfhqET12VjRHCNuCZ3V7SQC5r5ERrxlZ2hApsV8HgzxhSSM15EA9T27PqvdRzqXe
	 wflpe7wmHffiU9GU6ZSvddVTVWKG/twH5bsBFzZN7vqfXUDoMTx3AapThsfOljeuOs
	 KiEpUl/45LWl6lZRMt9eiE0ySbpsIhj9k5XWSfYenXKp1F4vWBJ+m5nDrD8oKeK2Pm
	 1GL9mltfAYCnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002CCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806179358.1802.16814092707264660332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99adcca5b2b748b7dc5383bdc25c922f9ebac3faef791810a825aadbf2c6d12f
Date: Tue, 16 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758061793
