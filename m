Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1796A30BB8D
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776404854; cv=none; b=aWq0JgfUvoyHoUtrt0SBjkyemrq1hGnedtct5mk3L0sO7fdJnbK0I3FJh4jSlOlPec9oT9bqHDVZ811ORbXNZCaC27Vi/jtimeiVE29QykgT0ftiyhR70/pP1MrNwd+eAeh90y493qRFsEylJzPHD5uhklD01p/I7n13/TLl8fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776404854; c=relaxed/simple;
	bh=Va7SF7F2a7BTVk4DWCwhYYpavsaFUKnG1EhjdUc6urI=;
	h=To:Subject:From:Message-Id:Date; b=uFlYY4NujoHVHdpbmrUZgGNCvU+gjUqS9HeVkiTyDQf2cf0bwGFllv1E8dvZjbyueSvzhp+Ly1XN0Ek+BA0fGMVLdyEEobO5mpkhEliB9DbA83r4fIDiZTmA/XhWPlq5yIeE8wGjTWhUnrW7Vc6UrHJCSJmWBs0dOV0/pLO5aYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uX94FaWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uX94FaWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D91C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776404853;
	bh=Va7SF7F2a7BTVk4DWCwhYYpavsaFUKnG1EhjdUc6urI=;
	h=To:Subject:From:Date:From;
	b=uX94FaWPTrVFkNuXdePS6/UMYaUJmo9FVcEQ/fdqqFXEIR/9FSvEKbkPUUop4Nk3k
	 l62tSwapWoGdaTCcGu90sRIUNUKFuKk1j3dZBXfgVkPcix6Z2vF0Fgn4ZkPSvhVuWE
	 /GjlaktFcFsZeVU/c60UsBWyTTsUkD2P2bUyBYqTQTfhOeHqEWwpMVnGqHvHKViE7S
	 fCpBYT618pnLM72/ucAed6LWtv2MWfMOE+aGpYayGU446gfP/1JejXwTRXkafd52ND
	 TY+3wyHZwHxRmumf6nNfQC5jn34B4okxT/5IluDsfcKt//71/p7UMKXE7MhVH6pTk4
	 yP9CA3ZrDXVFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF828F8E4AB
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177640485368.3265.5434339164669549722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082a0b51dc20eacff0ed63211d69408c7ed499e9c67956b7b769ee189ce213f1
Date: Fri, 17 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776404853
