Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F3D2C859
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778095054; cv=none; b=J51G1gTSVEfaxsHskE8ZrJJmKHv5gjXEdTHqtrqtxUKrldB6EAkxdPlRgpeDGi6keZatUejbmMXHcaxtiAFaaX7Z7TT/ytb4bTM/HLjB6v4GN6HsEzNk4x56EsP05UfOWI/cJ3ZYp4p++IIw/xl53wSC6TbecCHxUTzr8hcMjPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778095054; c=relaxed/simple;
	bh=ZKw5kE5oLNxBi09aNt5pLpN9xHCN4bzKNfepDz0RXhQ=;
	h=To:Subject:From:Message-Id:Date; b=mRFnz0BNiddth7mzdXs5+S2CfPgFeRxFChmnrBGZCwTDkv9fH5ktSSblV4A8Cxl7MVf80gho2jCLNuMzrmVLdFu1n7C2wjfEnrAZnvmSxp37C/BoHDKKgRRF5FKeZyeWvl/RD7VpzK90m6tEX+Dbze/LZnVjeF4LBW6/fVhgC34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkifFJs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkifFJs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC173C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778095053;
	bh=ZKw5kE5oLNxBi09aNt5pLpN9xHCN4bzKNfepDz0RXhQ=;
	h=To:Subject:From:Date:From;
	b=YkifFJs1NKBB9hfI8d+dqs3TTF/SBFemd7gWwwQiaocWIM27nObWfBf9d5ifPhO98
	 8CBNmVJLpUKBu+vBz1uc2RPHZ6H5jhn29M+kYvmuwObqmqz045vxxSignXHV+8AtRI
	 PiB09bTSBTDzM9IzD6ONW1Ymktw80Z2K6sqvYv8FtzDKy6y+nwVRQpi4YFTzzkIYAS
	 pFjN2waFuPB6xSnVuysh806eIJGO292EIApJ8e1BnSUvpQ3kXDJZw6CXyo3JR2FiGc
	 7wXwZv6HOOdadKLhVkcu356VnKlTWx9HwoI4TEnLjPT2gcp32+4mmGfS5W+P91niQh
	 rRaEKDvT0SlMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADB3CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177809505369.14158.16788334846005715654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9316217b211ed94bad438a0b228d2d15b4a686939b9eb8d64961ddd30fff91e7
Date: Wed, 06 May 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778095053
