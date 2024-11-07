Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322611D2B0E
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730963754; cv=none; b=WEKzi3r9KzHvEs+twrV2/+mEyCyRF5+lT5Lei23SPQleVE1XoPu+dwsL3AaL9lZ77YVf/K3T4+mFwC6nd8HfcKvspMBUfvZtUWjYVFTjSa0DUR3lUYjvbCY2kc5HUhoSGg7MlgBQaGehR1+Jg3mJDHXD0GN/CdahhqFTWgn/b3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730963754; c=relaxed/simple;
	bh=akV3+r1c6W8IPsedKDvN+MCTx4xe6B3R3t8WbErs49o=;
	h=To:Subject:From:Message-Id:Date; b=MnpQWpXBXzeAzrgOzMrEyHgiG0DMfeWLRW/UfmmjCvRTdFfQqPzDGwGZ2/U82RTZ4b1kO3YDjc4R8ESm8Kk85D3udKfTe124ax71uKmUBs9bCPlcsEgC7bUKVRfQ0SB1HOb2Fz95u5vIvjHQWp55pvjLznLGZOlV1FbBqbQoJiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSEuihyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSEuihyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6255C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730963753;
	bh=akV3+r1c6W8IPsedKDvN+MCTx4xe6B3R3t8WbErs49o=;
	h=To:Subject:From:Date:From;
	b=XSEuihyzN+twjEeatK2hB9cqu1sYVfw7OADylIbkdocWGNdLFC6cuNAoksrcE0sdp
	 se370ae9y3JBnpRtbO8FMNjxXkYh6ayuK9rUbmuC1PZm80uafspOmEf1uu4ErL09NT
	 Cj4w1N6fo5HkN8CWX7bBGiCqZ6V3PPEdIX1/clEezwyRriYFd1GwPegeiE9exeWodE
	 NxcIueMbnlWMHXC/B25gsZVfB7TgcpOX7+p664vG568CjZ5nODuFBhoXPmNjugtiNW
	 faSOfW7JFQ8HIY6V8opoWZ/hwDj2cJtR+XVHpQUNxc9ccTUC3GF1a8vDWKJEeHyfWd
	 cKDsVCb5ImKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BC4D5AE6B
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173096375361.16495.9794214319120918719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06072ac35158ea25826ad1ebcd15513df3f22932010cad9d8254904dc25f4b08
Date: Thu, 07 Nov 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730963753
