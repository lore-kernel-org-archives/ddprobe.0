Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39071221DA8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751011194; cv=none; b=roRYKVhYE2uEoTWkbDogUAt3MlriAsJPbkSVeoCwXWcxa4A6u9AuBZSvRrD/Iyr6wY9nxiMaT7o6X5eBZaFEmWqopOzR6yf6moIehqumuLBMVoWiAxXFHl3s/IXFPalTk+66t5rhi2IFF8AD7stvJWCJIUsJOUqmGve7lU1M6qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751011194; c=relaxed/simple;
	bh=6CFTfvtIOMb++EmA1YJ07xBeW2hDkswJkBZBwM5aQzk=;
	h=To:Subject:From:Message-Id:Date; b=s9a9XSVmIW+XYy2F/SSLmASxMELAhNJrhtn5kLRc/FnGE1Z0Lw/nHLoXn7WeHiyKAXms0Xs3fZKtweNUC5R9I/e0RMBP5Zhxge+lcBlOTQ60imiOArc9C2n/SwiLMrYX1L2gRrmUt77aUhaUJmQiS2QIZH8w/TFSa2IKAoP+UzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqyDfiC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqyDfiC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD973C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751011193;
	bh=6CFTfvtIOMb++EmA1YJ07xBeW2hDkswJkBZBwM5aQzk=;
	h=To:Subject:From:Date:From;
	b=WqyDfiC6rpl/yPzG7bqItt/5CfI0VRcWAKDlWT0VqiorpXrDtqGmYi5sl7Y4HTuJo
	 Sgyu0m6jkPNvJx8BMRsH2eeFgmKv8Ug4IjUiOHMPVAeHULlPE/b8Vc3wWNpAzEmXso
	 KJwEwYKtEVZ8dgnPcFAtGCCdtG/du3HsugyMXWcMEdid8y8jYuw8Qx7QSVncVLPIUI
	 unGJgpQmQ0PG1gDXtANVeUXfAimTNiChGVMc5i1F9sb8rnZ8izUSGUNlt614+gedb3
	 MT+m+L/xTkT2VEgS+FH+X8KpAr7Tltnv+29uJ+AhQjhV2AH6X3JGO3P1urz7ctO8r7
	 M+k6GeyXWhjHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A986C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101119362.16972.8212245209454303642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5238b0133b9bbd9d0a2b9e563c76fd427bda622836c5b02e26e9840661c2593b
Date: Fri, 27 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751011193
