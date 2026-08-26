Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB464503FF
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787757634; cv=none; b=Ef4ULHXbsfq28yI2dJiOgRkNtijmCmLRTtBUkdmjMazaTsC7blSOALvIRrXdk0OyU7x7i4Xf3eTqPGQPtUp7PzzF6payxkaAkxdkKsz9KtpUeTpRcIAHtOc9SUOzgATCXsU0WkKBYCItLv4dOqJFeHHdf3Itdisf6zj34pvzeEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787757634; c=relaxed/simple;
	bh=vqpAwnid2c61gBerFojUtU9fwo6cUZP9d+PxvpIYs2c=;
	h=To:Subject:From:Message-Id:Date; b=kLXwFFKuF02BSr8iSBjKunOblDL7ehfVt3AWHfjhXyb7Lq63BSC5aaWIXoVeHVftydWyHiEdQcQnFA/lMvqK98EDQESGQQUrSUz/HA/oYulMtNBSnshKztEfQvUE1h9cBU79991x0F2IJ7kFx+r1y2pXWiBeICggUdJ1Ds3RKAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjqMGhIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjqMGhIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A9FC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787757633;
	bh=vqpAwnid2c61gBerFojUtU9fwo6cUZP9d+PxvpIYs2c=;
	h=To:Subject:From:Date:From;
	b=PjqMGhIE6pZjuY1UqyHpG1CiXTbID6lpb6K5BFiY7lU4wKAd+dTKgd3/ktIATk5Xs
	 qSMYIqKDEoomjy5Qu9grtHPadVRsszklXHUe1wizmWROzPYWixjGw+ZV32OW0pAGTB
	 wPlZp8MMiGkUmaK0sHyPEdrPfzxQZJHQ4eBG/HTnIKjrdm2TpjdZ3MQOra0QAOMaS+
	 fZTAT3dubwuudhhGgecZC9WOkbvZvpI/X1nDRZrWZusaLX24AGHmWX8XvLeeT8HR7R
	 f/fmDMyO6d7G26dTSc9eOP2Tq6AvEmQNnds2mcpLzQ8/8vuO6ALHHSbnzzJvQ3wnx5
	 bibia1MensBRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7D4C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775763370.19787.9335203110841553477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85aa267343ccce90ca0fb0d070ca387ecdc3edaff853017e7c877a0d41f70b57
Date: Wed, 26 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787757633
