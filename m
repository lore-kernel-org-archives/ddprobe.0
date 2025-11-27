Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AC926F29F
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764238374; cv=none; b=UiDMDFriwtulPeq9J0V4eJZkhaCQL0DZ9AP8ICDHtdwQP8axFAPbMxN3e4NUW6xVtQIStOpW1jVCBdJVzerH2PQRjPHuVQ7e4moLnTLddPDTtamGqunZjMg5S1b9PL8i92Hmn4ms3Bcn2fWTG/54WVH/wlTYYt5wlac42xn0cWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764238374; c=relaxed/simple;
	bh=zWWEMKWU63Tn9NhVlZzOvsxFP9FNaMGo3xTuHOgEEKQ=;
	h=To:Subject:From:Message-Id:Date; b=SDDDcp7nr67tQK9FWXhyFIWjoJ+bgoZ+rjWWM8WO49CvfPERa5Bt3updmf6zQ4WTr8JViDVKLlVSWsynO5S/RwCO6ai5ce51KhM1Z5S+0gv9l0kT2YlZiTdBZW6vltZBodBJHhgplPeID/3QnZkzxiQsDm6bvbfC9WYvb8DDDSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3D7Q1XQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3D7Q1XQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B36C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764238373;
	bh=zWWEMKWU63Tn9NhVlZzOvsxFP9FNaMGo3xTuHOgEEKQ=;
	h=To:Subject:From:Date:From;
	b=N3D7Q1XQK8tkyBef7iAq3RChqJA6Oh007EsUJPV5zg7ZP1QI+JjlM4NrnasQJmvK2
	 rxIMQuJAPPHztKn8krMNic5UYDjOjd5/lW/zmnRGGjQCJxhtoeM/tJdiIUc9PbpB/G
	 8I0BJ+VCAvItemGVo8Q5bHyeHVs6PTB1rH8B1luljw+UISvUnQYqIDVr7kMmQT/cxh
	 O4C/EzQzy4YZjyFBTQZW4ytRJXDIVOceC7WcXToHrHISRJdQAw0fk/LyJA05t60O/U
	 uuqSQyFc4Cc9wWJWCGLupzpuFIH1pFv2T++RI0opkCBFE74Yl5OdEZnw4CvHmaJ55U
	 HyNk3Wxt7tvbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E82D11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423837359.22409.11109984706969642057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e835f20492994b99ff10c2383e823b69116e12d59631e8a98e05ec0f9d07951
Date: Thu, 27 Nov 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764238373
