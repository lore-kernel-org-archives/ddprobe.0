Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0575D336894
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773036294; cv=none; b=Lcd4w7Dkb/9SsMBd+exKdA4YtJyWVPob1zIvzAsfavoPrCG5nn/Nr5rwk5R08P8xXVp15EmfoMXxswQIND9/2FJ7ZiAggilvTK+9aDn/YTyKnoJ4k2ti+YYxEXp3PJtGx37kOJD2WrGsBM9OpBt8TmsNREiyoA4YldPntM42Ors=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773036294; c=relaxed/simple;
	bh=p1u2MRsJOL0kcqGbWIJndcOK4mi3wnG/3aDrSF2oPrg=;
	h=To:Subject:From:Message-Id:Date; b=VJsWLvBr5Qmc+kenSqRc5606A7aV3OlXTRaM8kDukRJ/524Xcqwy97TcIM1qJtLqJenveNGDIkAxw/M01dCpEK/xQghjm+zOB1gmB18Kfy7GW1K1xwDVkVyioQlOBz1JfiqG/w/0l4A9Op6sqrAo1IfuC/2xIX0kMfBgDpVrqsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNHtVYhP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNHtVYhP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99B0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773036293;
	bh=p1u2MRsJOL0kcqGbWIJndcOK4mi3wnG/3aDrSF2oPrg=;
	h=To:Subject:From:Date:From;
	b=mNHtVYhP6f9HSk960EzwFXNT8xiaifSlogNqzqsMZ/5yBOx3GYLLRvyI2KLhn0SMS
	 q9LwH3jFr2HBDktzTC7swNUOYE/aUgXuflOO6Gw+vlXZHtyVa6W0UpXkb2asnR80Mv
	 DfjbZz0WQgCZrJiTF2k6s6nIDsfp3DiBAWm0T5l5Isrqf6B4VRbvfw2WtG6kwxNBbe
	 03+pCqkLxg7VPS6tPTQR9L+7CXAtU1UH/Fyw/uUDywopgP3DhsZEItyj0WY+xNbjP3
	 YZ/v40WULHUSFooR5/ejZcjQox6yR9MK8y2O98Zemu6kRm8voOkZXCNdWrSrk7cXwq
	 3X28JPsvNpo6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D97EA855E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303629361.2782.10815864533224545039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 590bcb26455c9464497b13f765bf4f6ea69212869973e73cfbdb1c16a9d4dbc7
Date: Mon, 09 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773036293
