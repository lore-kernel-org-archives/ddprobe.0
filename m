Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F52F4AEDA
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719242543; cv=none; b=h2X3xOoq41xLjI1WJbEtd194puIH715mHy3IJgnK6X40RLEjv9+sH8CFFGSXBtI/Wv0dKcKDHulRO7h5Ja5laZ8PoJBhw+MFDvoUQvzbZhLpU0npIoES30WFCFPD5dGxt9LP9jn1K4Za85RZRgXvDn5PyiSqn20Xvcfk6X/hbnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719242543; c=relaxed/simple;
	bh=ezrPPrm7jvUQTI1Qdw0Y/2Nn6kqubNvvIxGgRPLdy24=;
	h=To:Subject:From:Message-Id:Date; b=JPQ9ZIjW3krV2LH6dm9SgNAYvdlGowlQN8dCZVpdYNMyohdL4aCkp0qJoXJUk7/JTFzatcxgFjrnJmOuX+o42pdlP3xVMzUX7YPdDe+rIxHMnJXbdyb+fcsXYIYg90Cmk25bS8itSEwvhvJ+unEGTCnWW7ZS/8PdN9kuSLgclDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWquPncP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWquPncP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E71C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719242542;
	bh=ezrPPrm7jvUQTI1Qdw0Y/2Nn6kqubNvvIxGgRPLdy24=;
	h=To:Subject:From:Date:From;
	b=LWquPncPeijrhmtksMN/0GSUWdrowcx1Fz5mrmX+DxHbN+A+EYp0Y6UgLkrQh2hwN
	 lO/l6LVlPl3xELF68rb+miZZ8xY1UiDqQiFAsT2WyrROgVOZJop/SV9g7l3ZYPgm9e
	 DBOMHiSW2uJ31tzEI8WvHYwtmw1mhAcSxxhQYHsdPB7eDF2LD30Io6AaGvPoFXAU+C
	 keP11Pl8PF8uryhVQ6Lb/x8J8tTgacDqJ42/4Puj2fi0r2ztZwB2WsgxOgh5/pjsVf
	 xyorf8RguyhtwQ/5uc7pnF/ty6TmPthxzivgH20IaZ72qx3t3Tht2ywFoyJ9glp05P
	 CI+GwR9bmz6Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C274FC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924254278.5298.10721513035845984000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b26f4c8573eb66bb8d5d67702002674f6842ff797356cea65e2d3effac7a306
Date: Mon, 24 Jun 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719242542
