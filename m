Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432F21C5485
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743248394; cv=none; b=AozRNIzga3MyA/XUwASq5qQ2Zh3McvIyzaF7s58YKG7tXjMB/pPZLocxBRjBkFg78Rltp/siByNMUuDhBcnwA+RSPq+oUWGI4QG0PX0Y7LKSq9UrmGZoXgHaijHZaB108k+xy5e35/msRUerflOyBEznX1x4DFjk0uVyTEMfKW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743248394; c=relaxed/simple;
	bh=PBgBJ/mm/VDrBbgR3ZtoIOw4Mnbj/Ep+h63EMdv3JpU=;
	h=To:Subject:From:Message-Id:Date; b=vFODjAVzjZuK75OncuLCJ0G/h82jBzrzFs984OJNeUxsK5JW2gNxcFHPrTOsbjjsMEFZVoOwi0DMGRhZMVTC4QbEg/6cxq4H6K/exrmiejDy7CjXEmVo+pEygs4+OntZWM7qHK0bIfhEv02XVppEePIpzQ38zbAqsSV9h0Pc0zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlMUPIfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlMUPIfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DEBC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743248393;
	bh=PBgBJ/mm/VDrBbgR3ZtoIOw4Mnbj/Ep+h63EMdv3JpU=;
	h=To:Subject:From:Date:From;
	b=JlMUPIfZbfkXmF96VkKnE3fJjq5X4RMdjO0ZAFQqXFGr1BLECfC2BRFtzOyDkAt53
	 R++IySaVy3ypYbvJqaXUlM3ee5SOdwUpL3hbTJL4cB+2Hu9nt5hXW3O474q5NWM/+X
	 Cwgtwy9y30jM89ylngFqSm78txsrhOulRz9G7FnXGUmk1zjDQzo2Z+FFrn1k/oRMle
	 mufYdV3rEmhCPGpuR4NhNZHCRZ3zQ1RFZFDDSbr1/DJQJ04TICcnqPfdd48Xb935GJ
	 BkG1ol1vcWw4aj2RKypeW9Ad7t3V1AypImnpQTy5S+RAdgdNNwko5qO6Zo1F9EukTK
	 bRJY+kAiXpTPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B589C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324839359.25930.14898204177836784766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6558684646687f76f1457fb8a9b0d3a2169f1ca9ac8d39c2c3a040ca6ad69bb
Date: Sat, 29 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743248393
