Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A2213FEE
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764559974; cv=none; b=gYcxpbf1t4+bK7PZcnxa+7a+v192/X8f178qrrli0hxYqvvsHfHH53q5PXcfuLt1QXA/Ijx2KwOxlb2BR71/ddNnfOgUQNAfIy8TFY1WVAvShVQF9PdbcECeZrKyaoCI2LjaHQ50VfialFCwZy9PQTpFvE3TJYPWDLeXnVStjus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764559974; c=relaxed/simple;
	bh=uznoYTHrfFKtDw25X/zUHgSIsBuyPDT1OXcILghc8Rc=;
	h=To:Subject:From:Message-Id:Date; b=X/AKt1wjluu+r/cZa+MTLry0BYjdZDesx5uZJmsiFcrITMc4GjdXalFf6eddu+JUntUqOaU8z5W5PksU44f7sQGFdzk5DtxNTQE6o3NQ/HnveyIsNMW5EA/AmjYL6Um9Noyfu6zXpdZ/+W1Bak6o0dEm+LROQBhoBzNETPG2CcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhFfD+YR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhFfD+YR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F0AC4CEFB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764559973;
	bh=uznoYTHrfFKtDw25X/zUHgSIsBuyPDT1OXcILghc8Rc=;
	h=To:Subject:From:Date:From;
	b=fhFfD+YR1FEbSOvIC/nU9avkSTc5TrVKYhn0OmpOv/mLalCatvhItMsqSWRLikH0Q
	 pR7KWM3A5yLUbEr0OBAmz17aAi+pdk6Hy73ViOXLHZIJbyyDWQvOERk/ytSevTaM5S
	 jFtuqb1omPcwimSdjvXPB9JfnZlsxwYycuMvw8TKKwaFFxu45iGJ4KP8RT4pLOPed4
	 7PKblZAd7nmXVphLbOv4l+So15UkSed42UTKh0B3WUpwsZGy1UxwkYxjL1QpdZO4hz
	 7E/gNKkfiZRfgveRztqPeqW57KLbSkWJF4fmJae+F932RK9Xb3xRYWOnJO2WHGlknR
	 4k2+rYIS/mgIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91170D116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455997358.12273.18125426404655491626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b71af0bf3d0282d5ba68fbb95299b113c7b5f3d7f0edc824a60165dfe3aac1
Date: Mon, 01 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764559973
