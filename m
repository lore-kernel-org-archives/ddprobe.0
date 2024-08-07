Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3FA801
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722992154; cv=none; b=bjcE3jlvvU2yK77QThwXH9jFcug9PGYrsyopf1b8gfAkiVgdhjrpmctjdLf66Vqc1SgHtFsHn3pbbUbnQSId6gjpjpnHYRJJgYz4fCXia/sii6KSaE0sQEqrhb5y40OWftEcXJzs2SAjx/CRGIMQAnH7ZeuxetEXUcf8rCtxiiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722992154; c=relaxed/simple;
	bh=9YVz8cM7wPPdIR4lKdeV3VNBNEpX/OtA7IKW9sZZARQ=;
	h=To:Subject:From:Message-Id:Date; b=L9TNbGyJ4lT6bpLASpd5xhlQiy8VRSqAWEhg47BAdQrnQ52upCTTTE9Zk88st/wyZq59586RY3gLJkWezv+bTaiy4oL3K1QO1DWw4dRqPPDydNM5wSLFhAnDa1ZuAX15Uu9FW71yRb1kvFB6DO2vp0YFDKOAVycpiFzsjhHMnHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hS6NAdjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hS6NAdjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E6EC32786
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722992153;
	bh=9YVz8cM7wPPdIR4lKdeV3VNBNEpX/OtA7IKW9sZZARQ=;
	h=To:Subject:From:Date:From;
	b=hS6NAdjrBByPSBcyyaFXgX0hGmXtMUOWBrT3A1FEldEWP/gbEM4BRFHjnqr/gqWhE
	 38rSBTXhTBQRqLOtSDovexfB7WYWh4qJJWdjGY8AOixRvxhDFOGssyMzdYxa57kHKk
	 W0qNq7ye0RgoTumPd5inW3wYgyUjbV66qoxjN7nWz2BBdp74XULqishKxH5LK65Mec
	 VLbj2HeEmghhbFsZkDA+eJgqAZmXSprRWQ1hZ26HAIg4EvoAFw8LUvIqXzvEZeQ0dE
	 rurnDmDseDGbBjShhaUbJykQqn9KezhX2N/ZFyzrznMWBdYN+8RJs0gvhknBKItVsT
	 /WTdnlXFeOplg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DA7C49EA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172299215361.26066.9471504643001193250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb8f1442a6f20cbe50cb7b3617e04bc0e02729999714722b93f6999fb0c9134
Date: Wed, 07 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722992153
