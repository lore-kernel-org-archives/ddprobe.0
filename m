Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A8717A2EC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755136794; cv=none; b=AicCGigoYPggmeXzGYPvj//+6kVLbZhsn/6anFmpZ1V/qFeUnODmNy329QaNluLG9qtQUAe7IJV9+AMyVk1lw+jflfHrvIISRZYKtUC8Axf4Wyc/zbpmRYY0QdxK8pewBP5SuDefKao1ddq798X6//rgIouHI6MRkZOOI6Gz7T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755136794; c=relaxed/simple;
	bh=0ZCUuXif6ttTABOWdAkbEvh83f0w7hlxQrFzO3gaWLU=;
	h=To:Subject:From:Message-Id:Date; b=mqdisof63Cbvrd0wRhW2+LycNwsLnS8N9jnEg/Vfa8UtpdbUCuT3zwHOWtGELL7ePH5JTmEXAeIsTgrgKI6dubhFPzFpxE41KjYhBnO2s3oKREhMPHGvy4gX+N9nUYkhSDmtiB0STVbtjPSYydNQ0c8HGkoeT61r3AGhgSGlPE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or+HnOKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or+HnOKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755136793;
	bh=0ZCUuXif6ttTABOWdAkbEvh83f0w7hlxQrFzO3gaWLU=;
	h=To:Subject:From:Date:From;
	b=or+HnOKOK3UXW9IGspQCIQ6PqSvJKTp+H/P8IMH+ll+PjSzZLulKmQU4flmoqXuo4
	 HJh5gMDkYd0cnQv/f4895Wc519tGA4j4NFCxjb57wHLmBF0st+QF4mPXkoESAdgBFb
	 jZcQNUxOFq+TSEapAS0kqXx4IDQssHDqTqLh7M5acSZkSeXvWBKb5rpt5f4gGRJ4lR
	 jkjZzWWg0H6x3b8vkRbVeDZEFyqEK2+8vY0ykGyz77RF9AuhA2c73bg7qd/j9IEkuB
	 cYNfe0+O1VxOcRvNiQhdhxRX6kRpYY+oFv/9ohExi+Ezh5GAxKsUl5h7xjU+8niC3W
	 bKGH9s6y4YEAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F059CA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513679357.10324.4691840846148514991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da234b9bec83ff74491d8db9afa7a0c7aa5a5f06cd77f7651caee145bb338e0a
Date: Thu, 14 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755136793
