Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2741FF61E
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752451194; cv=none; b=TGttC15lQ2WG0zdsDtQTSrhnpEtTGQSMw1tVqXLXfBDqdyrTn2DdCPfPuCl4V3UWuyWIouAx26qJl87ZCiGOaz5j7mnl6bN/uLoJ2WoGZb8j7yL2/Sg8RQP43bsaBf3svKqUh6Lh5nqjW56wKQthRjEW0rWrpQWf2eF5RcVbReU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752451194; c=relaxed/simple;
	bh=u3vi8TjZFHf0YGoFqMU9zAmCL4WJSYh40aPQxK07CcY=;
	h=To:Subject:From:Message-Id:Date; b=Ce4Oc4TPVHyMK8l1fNbskD2KuaYk9vIUpISMZtEKJBu77KHKlKxN+9wrNqAAAMjCyRPp+3AunYxlqix/SEza2q2N6t9mEV5RvC+kQjrSmgDZnm1PMl/MkpAVtJQRzeejAU3c8zwAilZ6bcvrrUFMVrBEKhRkjyvr3vewbngfr18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI1+f/c+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI1+f/c+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBAFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752451193;
	bh=u3vi8TjZFHf0YGoFqMU9zAmCL4WJSYh40aPQxK07CcY=;
	h=To:Subject:From:Date:From;
	b=cI1+f/c+vqjAmhnyklzagsmyPkI/K2FWAcoPTzvABd4xiOsk0OKYCMQ+ey8jP/dDY
	 ZZqVSv3226/qbYFiVJZ4IxC7qNZjkCVw823QM+p56Qx1OS9SA6ctsxJCAtFPviZLsr
	 FB4lx5rt6RuLsWAJ21UzV4gsiwmOrs/m5BIRRl3RdOezkkGJUiyLmAvN/v9tpraBa9
	 9yr6eZdxFfulslfptHSr5bgkcZ7kgSPLE/UUnYGgWdtGSs+7ZSwvkBDxDhXY+dklZa
	 94DEcYib+YgZO4mAIbGxjsVWvs2a/C1gx3V5FVCvMQa0JAcZ2Mv3iAoBttCzRJl8DK
	 HZit3p0B2hmZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985A5C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245119358.13895.13945132511856051069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85ec4d91aa6ae329d7d0f507bc9df52c3a3ba101aa096899df73890730760f8
Date: Sun, 13 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752451193
