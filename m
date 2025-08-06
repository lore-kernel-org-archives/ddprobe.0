Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0F2204F8C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754516394; cv=none; b=SumD3UBGUeIidc2/V5cYadDn8H8kvhxnJUIkEjwx4kSjoSMmmy9EoFQ/gNGvEICismwhTYIkPL46XMG3AYBXOvB2ilo2mj6SK4RQEST8YiDTNHufnr9uRtQl7/NVGC2zgSJH3J+LXMlZRaxTbRkCro5CwHuWB2JqidymODrxrvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754516394; c=relaxed/simple;
	bh=dQKesH4jEPHqxDn1SeQbh/ENBMvsjG9NtcZSOjj0Wws=;
	h=To:Subject:From:Message-Id:Date; b=Wz+UpDDW0Gb1yfbGsr5yeofDDwJBwJcu90Bny4v72jBCxZezQf2ABoJB2s56Nyp0in8puV1GfJ5qlxCIibEoP88tB6VNHiLqwYinkfANNtvwL+BxaOOtiZsx9vJLWl6sIH/E3SPXKHuTmEodjL1Ow1ILoRGE1TrAaJOHvwkq4rM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLKlfsPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLKlfsPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D84CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754516393;
	bh=dQKesH4jEPHqxDn1SeQbh/ENBMvsjG9NtcZSOjj0Wws=;
	h=To:Subject:From:Date:From;
	b=VLKlfsPoN34lEnDj4dqgyEHAKeP2ML/bwStHzmx1VwbuU/etvJUtydN60YW5WGxpT
	 nD57FIuDFAWRGwJjOWlpanaA3Qb2AjQFU5S4FXWxddQReR1JLdV3alGB8DQpU1+9+c
	 4MGwooniKsFv8ToJ5p+7yAKob7WzZ07QB1jycAvsPE20UgT96jw1+cS6EqAa7bayvo
	 VxgPMJUXc3YWdQ8ayKCKhPCJsrvDmjtNgt2PgLRCCH6XdrvJgHOPXfd/UMDQFG6HrK
	 vIc7QvD3fjoZQBLlQTbhwCv17AToA/s3x6QLUHx0bvfnrgnyyTmJ8kkfJeDr7Q/wQ5
	 n0apvegyH1DNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79CC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451639357.12104.13493689072579600367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47acca6563f0456fed24dc67c00f845e935e008264b07130abd39397b134729b
Date: Wed, 06 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754516393
