Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3202D1FC8
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743260994; cv=none; b=SHeVdPLf+Dz54ZceLj3136Ssy/t1/IIOftXpd+unVhd8gCjpadP9gBMxy1rBoWyPhN3pOtnV2r6ydGz7i0U4rWCpwk7rAee8xX7RUcpGy4YuTIUYkL4mmfDBQU+gmZLPftmX2Pu25uTCrpL6NwAjfuLaM1J5Q+6X2MslIxGOvfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743260994; c=relaxed/simple;
	bh=/uPAmoCtQwI6ynKqhuO+etwBs+O9OgGwPrYJpUxVQLg=;
	h=To:Subject:From:Message-Id:Date; b=FzwRNpAAoToPMfAPno9R0HxwddWZPu4F7Sc1av9bVUBIHisbvy4WfoP8/qafS+jHWlcHFkdhG/Y7UKtbu5YCLslki9SOOgGCqfY9QCCIs3xRR84rWSMGiqSAqr2mtx/THCvo5rxafhBpmj0aldhL96DnP5zAcmhL2WGxs983nMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMCKD70J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMCKD70J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5254C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743260993;
	bh=/uPAmoCtQwI6ynKqhuO+etwBs+O9OgGwPrYJpUxVQLg=;
	h=To:Subject:From:Date:From;
	b=EMCKD70JDVom9Aw9HJpcZcjp6gVH62UiSRwvqK0hsDrHF8AsSdUy61Y6BAzuQsDSR
	 OD9o4/5yIglPw9vqCh8KpIFcZpcRV2KWhmBvo0VH+H5JUNAY0NBdJukHOaMHZqia3L
	 iC6VS1xz5W707ZGBa4uRjD6sBkrcSDCZ/ca0NrprPGcT/we9Ux5zqTSGPH9CH9Z7oQ
	 6Q/zVpK62AfaZW00m7BTuFCab0oSgxEt47zDf69B5E8vkL12NQbexzrcOz32NdkEGf
	 AlVjGsMx+rDiZAhOBtz0PRSiCtnUzOURKZOXpnrMM62jS452n/DrkrQ3JHFxUnGkt4
	 IoidQC9G+4ADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F708C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326099358.24081.11002466084515857812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410e1f8b903189a7eec455d367600e1d2211f214a99518f1fb0f54978859aece
Date: Sat, 29 Mar 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743260993
