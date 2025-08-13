Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4818A2F83B8
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755111595; cv=none; b=YsRViq08UNts2Nn3lk8bL6ukcqxL6eDpRMRDYsCz/7KWKZW8uBQkvNxznbTY0kfR88tYCic30I8jYnCnJhSPliM8GxEnh8ri6setXn3NGTkL+GYilhRX6xL+UjK4Ccg9sV6XnkGdvnKSd0fFKl6rGj9vBZ6OkElaih2fKOeTcIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755111595; c=relaxed/simple;
	bh=EWmOFTCfl7YoVOoXJm6V1dBK+bfXzVi3gsjcas++vlM=;
	h=To:Subject:From:Message-Id:Date; b=LTI/WQm8TNSuji0S4rOvoX3spdaSP9q+aLTXF2A65BNB9A/JhLtHfeXDHbAlPPu23VEyqvFKRpCGEYJZ1SF8a8+4w3N/3b4OIw1lNVTPm1CppMVOpFlA7d13Y94j4TNgtoi9N9uWR3EkX+Jnz6kNX3olCA2gtW2/JSUFY1EAVbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjp3azq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjp3azq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29EFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755111593;
	bh=EWmOFTCfl7YoVOoXJm6V1dBK+bfXzVi3gsjcas++vlM=;
	h=To:Subject:From:Date:From;
	b=pjp3azq7crnIP4z5/Cr8sJ9j+rFTLNz81SO6F4/sbb4Re4/EgreEv7opkPvxTt27m
	 vdjUSngOpPnvHI/wwTS9a+RAIW4VWzGtVZdhesGfxBKbTPl0HAOx/fvHCTfY+OEUc1
	 8aIgaAQls7E9wnawAFLMl8TvsT2MIIidZdqTL8qLDI7uzKKmJzxlQxdzu4WixcrGyC
	 v6SEMMMARa86miyD+M+WmTBsNlKjyYZfE0j71nbBU7opFWMbGzNsv7huHmZ/L24i1u
	 +QSRJcQcz01+nqweh8OKQFmh4BWiyPsLcUekNUAeBe6cThy1Oz5u8KS7TCmDT6Q+Jx
	 JV2wx0LhZL9Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BBCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511159358.32540.13222171896557967714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486329cb5f6a6554dc1b5ff7ea5384d9a766fd0d3192ddd65d2f2418d813624b
Date: Wed, 13 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755111593
