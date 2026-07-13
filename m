Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9CB33F58E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783939714; cv=none; b=GYiqGMZWrjYvgKSa7KfF3OJetFfs7feO9GLwdJrczlTJAuqmn600bFd2TH2n2nTm1h+fh9hFMg4z/ljWBizPJJ73HBmPMvCxbpyBvwjEmGgcqa1LuArDK0q0+aIJIdpvyCvegOrxIPTbeIEnL1ehFb9GJGuRbV88IQ5rS1TAKCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783939714; c=relaxed/simple;
	bh=dXawMSJuZzHiGBGg4erv8v2EQ+8MQWtTpxY3ySudxsY=;
	h=To:Subject:From:Message-Id:Date; b=s8YLYpw0ExpnT3DnnCpkLRPvotepEZBLnm6yPl55K6wgXOZ7A33GDWZRezYpyr2Z3MyPfYroq0y8+zcZ9xmerqDJrsyqBi1BFHBcmag7M1L6YgPmhT2T21vqWLK0ZuDQLqfiKAZP4+5UKPdTUbTvdUXaBgIwvX9Cw9FIfXSsBaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iu6PlLeC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iu6PlLeC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFCCC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783939713;
	bh=dXawMSJuZzHiGBGg4erv8v2EQ+8MQWtTpxY3ySudxsY=;
	h=To:Subject:From:Date:From;
	b=iu6PlLeC0ij4RQBwAoOmpKV0DvMXvMRFgLDqcIyJA64gj36uhVknX9DMlIk4/zkbJ
	 iccOVhZQM5UMBsx66hho3oeZWrD/oHIAqlvhRcu1jfAG9QFX/wsd4AKNFiDReYM0Ai
	 ZQJRIODPAK1mfprjLZA32dpZM3nfuQBAZWUVeWSMSszAkVc01/sKUXy1OHV3lY3U1x
	 M4zWDtZcNiiuoaOdsD7p7ngjouCNCnXlYmqujGpishAjs+tEG0sUwAYRcXKP6jWIfF
	 D+nCnqpD6/6iDRi4pUxToAkWZmlyhSvOHV1W3MLmTmEb3zIzw84H0xR2ukTaK0idwT
	 2KVmrJluo6xUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A876CC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178393971368.28545.8221370408027487845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9b68cee0c9ae016ccc33bcdf7edafe65e29736c7950a40db985ed937405e7b4
Date: Mon, 13 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783939713
