Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F5A23B616
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758630594; cv=none; b=a6d/9xcq6lM+k3Uu/2Vo1PBKN7bRGr7QV9xAi4qiRG0FGY86hoy7rULuWOVRYUqYdiyckqShubUY8uBaePjx/4OvSou50jhMXdCGrQTR23O3Uz3FrEqCuonMPObcwpvFpGp5qemsaaDR0KTJXlDGHWt4iv0rFBx5HubDbjOiCVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758630594; c=relaxed/simple;
	bh=z73c2LMzIZVGE7eVWL2nh2u/papwZliyG93hzk55B9k=;
	h=To:Subject:From:Message-Id:Date; b=mgobFrkQS6d4TSMFBbix1ArHN2BKIdiy7gCaOBO0iUMYYtWBhf4MoLvDzt8nPQUtE1HAcNW3NwmoJAXQire8Va0V/29H1vN6ByCOKj80VNP7e6L2JDVFRwwk1UbYxHLB7CEfz5YRRxCjkMGCn18f2F/WJ03jRkwLg0f59rkglIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEAYeF4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEAYeF4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F99C113CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758630593;
	bh=z73c2LMzIZVGE7eVWL2nh2u/papwZliyG93hzk55B9k=;
	h=To:Subject:From:Date:From;
	b=AEAYeF4q6KA0lea2V64qjFe+DHdcAI6IIyIrL1EH1C2aCs2gWb++RiOlP0uAnJA8G
	 apoiv6tdXvk5KYDs6mYFCTRCSOoqIJRD4z2VaCOJEyxmaE2nGhI3HxTd941ZaWU9EP
	 UImwreC0K2eutgRCHhSUwbvMeEyzHVpwye4L3gT+6KPCKpUMklHz7Z4vee2r73QWHQ
	 AEkbrPI7PbfdM/Nh+bdhjm0fHLiUMnqDa2nz1BDdgrXLSBt09OZoDxtA/bWSjzo7Oj
	 z66a8y/C4yJm4FCxxvnCC5KfCoUMR8mIEhtPhHx+nGzvtMFMJRtUReBAo05+0/Lrgl
	 lr1XvPfGsXI8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F45CCAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863059357.21830.13981465235367403840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eeed459e1f11ad35f7c93ff7251f07c88dbf31f52abee49acd84ae1449192b8
Date: Tue, 23 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758630593
