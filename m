Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AB9494831
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788527434; cv=none; b=LuZTAdDM6PsIefG+XMmKOHkpVH7bNesHfmwwIDPy4sPBhDXwSkoRSjd4y9ObfjiXX4QCxAzWXTOHBwPVC9nhUFNFWdqN6OxbMK8MmDImTzuF8CWamyXDezLYEUzABPWw7dqQCisWLb3cstwz+ikWginYX2pWiTLTPBwz80DvbYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788527434; c=relaxed/simple;
	bh=to8CSZnZpNHLUGuf4CoV3gfJISaGGBsUjz8pIk4c30w=;
	h=To:Subject:From:Message-Id:Date; b=aWk7RFFUnSsqSmh0joLCaALmSSMbXtxU9Nj1/Xkh5Sc0nXw7qxgU1Uel1IDnHu4PvOu6BkuSlxO9o60eWAiRmg7NMPNmWFy/WFDSjU635XmTfb7wOLVe8KPM9PlgRhOY4HCqJtrf7qjbafqaIq7yR2iskyMO3lErwxOILNg3IZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1mJmUs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1mJmUs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1688C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788527433;
	bh=to8CSZnZpNHLUGuf4CoV3gfJISaGGBsUjz8pIk4c30w=;
	h=To:Subject:From:Date:From;
	b=E1mJmUs9Cu9qPx8x1ZGxHpEW4rJck3Ivc4wdQL14Dfyhwn2+hdnCWCOhVyv/NDAkj
	 BpxX4Kc3FKYyLmaql0IK6JEffFdydbyymE85A7fxYMzdFHqjBKp7smTBeugLZlx4Ry
	 8TjmFk/4AX3YE3U/tZHWtNhX9sBbj50oEOJImIgUMcFJqYZOG80bcclMcPNQw+OWEe
	 lxiYsDFPqdjgt9MeAwl4HpN0jYx8X+sVrpQvjd1EFn8tFxro52vHwm38tTXb4hoifV
	 LcGMEb1L5aecGPJyoDP912tNCDMTnLW2QdkbJEvNNmymExkhnXyPDQ0sBOLdHfGr3f
	 GN3b7LIZpMxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0BCC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178852743370.31139.9276179835889321046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56ad60b8e6d0a9fc2a027a03889d68cfff41927fbcdbc99a6926e339474d3b9
Date: Fri, 04 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788527433
