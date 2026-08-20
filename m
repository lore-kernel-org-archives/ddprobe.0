Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8453F9F2E
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787218835; cv=none; b=YdmHcUJc2kXFp1zSGnH5yCNCr83pzuwE133B9PlUyo8sON3ChlMi+NMpExHkRpxJWRG4LB3cRO5thtiT/Mlmdr2H08qUbKS6wmi2NJ7Rnktg11nVIhT9WiOX0UzFdAe++JgxLC/TwD/27tVidZzDyu+yQ4fW0qW6c2Hlet+Z2ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787218835; c=relaxed/simple;
	bh=UpZNHM0EmEanA7PBoZZSMXTGmpdJdj0Q+zjP97QypoA=;
	h=To:Subject:From:Message-Id:Date; b=SoH0QW3KJVF/KOz/LFAks7kdjKNR1kbF1msM3PS90roX89UUtvx6dAnddvuCkWlaBSoh6KLnfYP2zTzhAzZuiN0VTLDsXAk3B+tH6zD4KqrY/JolYj7E8fbZmVLWpjhxuvHikDax/0EUPKSRwvMEtFhS44DeV7465rPdFIn9oDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFHO9v6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFHO9v6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55EDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787218833;
	bh=UpZNHM0EmEanA7PBoZZSMXTGmpdJdj0Q+zjP97QypoA=;
	h=To:Subject:From:Date:From;
	b=XFHO9v6yUsHs36R1ZoR3xdhcIRfajxKBaN2bcRYCo75OFanAdfQzlOfsMp8gZk4Bq
	 CcpsMMrooAk/iagya867eNOIVSDVL1Q6swp9Vha0f+U6smD8ikOSFQqhDzv0+2NG4c
	 CnF82crSM10tKcX24Yisk/wtyiAgd3P+wiP2XJc/TQoVeP2kTxjoTk1DzegSGdjKar
	 bipGyZfKi+YI/6qQqRVVC+/domS1g3ZzFOxKxcI+ajPzZ9259bXcyGvZVEWd5YGwlt
	 DULAmWqOW0c30NpA8cg7Xr2WOkHfzEIct56AuhP+b3HSCq4dOn/JlFCm3An9fEwARk
	 TzpPegffSF+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08F5C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721883371.16028.14851242256668744756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157312592ac2aa40ae082a7670b05342013ed3f68ec2753be03013c3b139aaba
Date: Thu, 20 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787218833
