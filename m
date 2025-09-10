Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126A43081DA
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757547595; cv=none; b=V5AFntd/9VksIKhfCiF01PA+WwqY4CtY6SDunO+9GlBLOP+dkedQ9W35enP3px1IFSRs44bTthNBB7nDyPBy0BOVD8X9Mio7ozIRAgo3V0+klRAFPvUAWQ+QiPmKgULFGgF/xHT6iwwJTfXZMUUWTxCecK5MBdTWPdtERhuFjig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757547595; c=relaxed/simple;
	bh=cNTdoh108NChVHfgDaZ+5OGr+leyCvpvCM7hJJgHQSM=;
	h=To:Subject:From:Message-Id:Date; b=MepQwM7/uFra5wtbyiSWdyLmsSdrbOEsxtMJ7KXIaZyeGnF6anz73R4GWTGlz/dqFZ4z/DCvlKHPXAg1TYsmrUYLMHRQ3e+bD5YTeDBKTV/qY5fD/ySJ46J0UkbEKtY7WUgD8qerV1lAPZ4IaztyIQq6G/3JqvoX6WMJ+/z4D0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4sn8qHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4sn8qHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A24C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757547593;
	bh=cNTdoh108NChVHfgDaZ+5OGr+leyCvpvCM7hJJgHQSM=;
	h=To:Subject:From:Date:From;
	b=o4sn8qHdjKR7bOFP8poQwW1uu7oQVv4w4cBCp04ndlt/h8uasp1BJmfz9JN4SL2WD
	 DfP0BYYey0L/RrDM3rZHtlm2rDi0RFQHxLd2m01JfGb2zoDxofhOW9eXGyJmxt3Rq3
	 5Kaeujm2KweiyQ6crxrJpnGgacgNL+LRuw6aC6cnLR8YOSO/lPaiNcewxfWS7sK6L8
	 CMvsHAZ6HXDTSDiBv2sWes3LPZ8jDRud+reE+T9AtoSes5XfU1+3N0tilaqSjKdvUC
	 IHS/30SfilG4QVPk7Y3vuft4nPA/tXKHNR2lc0yMCGD6rEvL6qy4R4hIo3sKs3axyx
	 QKDyCGPEC3UAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91096CAC58E
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754759358.13882.6431169845605798449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2a75088d6a006591ad9b22a921485d4adef87d821d3a0f44b61c067769fbcd
Date: Wed, 10 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757547593
