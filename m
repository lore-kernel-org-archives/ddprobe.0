Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5C0433B9
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730561754; cv=none; b=VU3Mxr8bxkY2CYiU2upooReKw0tjoVg7XcaOj2nFR7pGU5pgvtegvyutCiaPR2tzlMJBjx86cuehpm7lF6IllppKvpLcDjFkIl998fQEuNOvM9zCbsj8g2iRTWS7eeJ+gtDWq8PfyT1IE23kRreQRW1NDrkmetBKDyXs3fLlXWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730561754; c=relaxed/simple;
	bh=Bri/z2vtBvNHhnIxWFM2TctVnI86tAzVUUGE9HU3UrY=;
	h=To:Subject:From:Message-Id:Date; b=W+1x5CKmOXUk+dpXYoldM8rh05AtDwh5L3WtPunV2MFWEucrkptAwLRj5C1GqGa6UQ6wIjG9k3CA/KJ4B5+ulFXGe0mVknqlt9x1r4dwoMnY8A7G0Z530Ok3ideAFAQlB7ew8l0ATDG3cjF3C2DW8Np8RpAiPwQwm5tMzgsHSjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwzPMrGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwzPMrGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E6CC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730561753;
	bh=Bri/z2vtBvNHhnIxWFM2TctVnI86tAzVUUGE9HU3UrY=;
	h=To:Subject:From:Date:From;
	b=cwzPMrGx3WzZonPtFzHGmftcKQjWjNMJiy2rhExEXxzKtkTCmo2jLe1FoCC1CjjbA
	 ydVGWrs5H3Yn3syNKi8cH4eD/sNp4963lmrmqZEq069unNA7zbepodfaMEbsSmel0s
	 oiXUIxo1lYF+jyIwizUx6gqndwxFGTjrwin1TReasBHDOkRJZRc49mz95Kzit5Cu4E
	 UrAJymvVmqN14MuT5PWzBihNi525XmjhoSiqMqVo77VRaRTo/auvZvsZX8t6vdwwt7
	 bOFO8bEcAF/e1Oma752Uc5AFZgJcwT/noizosHNbQKeWQ+7QL8Any8XQ3ln8Yn1hXL
	 MtZrQG8NTVvLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9474EE67804
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173056175358.4668.6168585986448691163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad80e629078223f5a5a38ff2bba3baef56caa6238bb0d66dd66d326265031a06
Date: Sat, 02 Nov 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730561753
