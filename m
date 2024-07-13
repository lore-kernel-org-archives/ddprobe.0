Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A2833CD1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720883423; cv=none; b=h6zGV2VA5Q2oHPeZKiccR2+uXhNQiFWpm7mOczYI946ENM/mgkzkgmH5k33OKUfMokO/nhACNyEK3JhKREoCe1Bi9XC40ZM568S7saFMpMZSY5if8F9Ho811DxV6PV3BM6oSIc/zQ2OtF43aFjOhrR370ck8yUsTsRzFOk1pSik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720883423; c=relaxed/simple;
	bh=GAgm8ZsP/N0udUKZ0MturSsxgeEXASBVn5bnumRYsE8=;
	h=To:Subject:From:Message-Id:Date; b=NR+tS+p0VVUKN1thTn0t+fKOpSniyR7t0LuQUUhhjFZVzfZNVy7m8n3gPd4o2oXRkkkwBj4QAry9L1HBTqDunGla309S4RjmvbPtdkFGmaUV0XthenugkzJQ1SZFtz6mPh/AFykYjzwkzN4Be2SkCfOefXB4Wph3DQn/J1EzA3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGk6alNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGk6alNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA5CC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720883422;
	bh=GAgm8ZsP/N0udUKZ0MturSsxgeEXASBVn5bnumRYsE8=;
	h=To:Subject:From:Date:From;
	b=BGk6alNPeL7XkYHTnyGOx28AUj6m6h+132Xfosgy/PXJKbWTwjQusFJg5TpDacCjZ
	 niUIb5Sr4xONbXy7IafR/C4l0SD7xk03CPytvrp+XjyJAg1jXYE2VODfye8oXPgouc
	 H3bgNwJIq7tg3/iDCrFyAqm0wVH8jyBrHTXTYwvpFH2FX5KW695/V1Np7xjYY4D4cR
	 WWntR0PFpMxwiFWffhxkNmkGaPokT6BHAF5ncBVsETF+DbaJ2PNSwtt9BXL5UPXB/r
	 U/n0Odw0xMmXl+KiRdSlCCGibtjejr80dUdA9R2by6lIEGPtXDCNQCepVcwFAd/vq2
	 I3kfW8aLI80gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E24C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088342278.30022.16117861334669713238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4580597d87dae0e981dc70a453c8064834c59cd3f003bbfea8d34c4aa47e148a
Date: Sat, 13 Jul 2024 15:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720883422
