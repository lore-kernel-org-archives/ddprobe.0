Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27FC4A8416
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788441034; cv=none; b=q+pQC4gBIljc46U7pOPR4dA/U6DVoCWUWcGw+CFILCQVzqsIy4p9X1STTkRnx4H94fcDRDWEWTezqf0gSS7o1acCMPsG/wfKlj2ZlIwDbzgheMTa9E1W7LkcIzCmVXrZw6nmut0efxIceV3Q1ChbEPO73JIQVM+9pogf6nz4QD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788441034; c=relaxed/simple;
	bh=PKsh8qfQMdx0XAia9cm+gcm7u+yst9zphQpG4p9mwQg=;
	h=To:Subject:From:Message-Id:Date; b=D1TjPhxj04laanBAUw2IZYOT08PpCVlcnw+OEQoaD6fUSaw8u2+iXyEfhulTn04u+oaTikTDgFl0JTF4oeJNhewWW5hHUqoSv9kuYY4fyD6SA3G5cKkdZ+SNgpKbzA5HR30+qVsN0jfZZadS7HN554X7vKSFig0xRlU/I9ONufY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSn0B3Yc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSn0B3Yc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE806C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788441033;
	bh=PKsh8qfQMdx0XAia9cm+gcm7u+yst9zphQpG4p9mwQg=;
	h=To:Subject:From:Date:From;
	b=mSn0B3Ycu37oRVgWG5dLZ0GmfXCjW77B9fp6B1vuTh3Qc3pxN3uuzxZD/lut1LqzA
	 SIDCsZyHiroe89qtlxw2CDR0NR0E4rwAnm4pGFVvIaYyrtpbd7nugx10mI8Bfc63jY
	 e4rFHo4U9y05Cru8E7os5/c2DcTNq0P3yvJrDglElDUsX0HN6ubexY207uq+XETbER
	 wKa9/zbAtFq16FT4gKVE8MqakORNWixtB/ud19Z+d2HYOXiyr5yBbBwwsSEwxfOmuh
	 HHwUsY53DvyONwYY/YFENSAhiNkzESb+f9zWFBtYVTRCWUDwpbAtFplzEUbRN56q2X
	 U80pV4nGjry+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA844C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844103368.2975.2048436726873741705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4896fd2a54539e02d8a6e78bf0507bb21bf706d574f55af96da9d5a49f1c0a21
Date: Thu, 03 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788441033
