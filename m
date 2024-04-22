Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C939282E2
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713774623; cv=none; b=eETbBQYIqMmMHWo3L9Zh0TWak8HeA1AwG5Y+L/8yZqh+p+2Y3Lg7z4B2wmSkneez9XZWbQGZA3x5O5a2GjQpl87w374zPaqU39Hukegn2ERoBqLslyLePqNFOWvVZca8XnNemEB9GvkfuPROXlaJ+OEOi23cthZKBRosykYk68A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713774623; c=relaxed/simple;
	bh=FmSLS1Kc6P8phMVF9YXXndQaZfDKqI/sbIv1q1BBos8=;
	h=To:Subject:From:Message-Id:Date; b=jJYpvk1UJUXXcus1DcDn2Ftk2otQ+3qkiOEojntkvwfTN9ftrVroKF1iWfz/vQD4un2SoVnTohkC5uR+tcGz9QvVifukvkekaExfRTBIuWyC0JLdrKP8Mqqs02qodFBiYBzego+s7qHXZBfaRK3KM+gWqRG0aR7nlL+riimz9PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHbkHuIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHbkHuIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB96C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713774622;
	bh=FmSLS1Kc6P8phMVF9YXXndQaZfDKqI/sbIv1q1BBos8=;
	h=To:Subject:From:Date:From;
	b=RHbkHuIv35DWaS7FlzN3OYDDfxLhssdRn/jY39QwMu6GfET4YPVlstUujho8FbKri
	 zLdjOgN7KIk80Ieu7lFENumXiC3oZff1KD4VojxpwKZMuF+Dfo9vbhQbLvmUwM2+JL
	 5QoFsi4rYChdY8sTmawXei71+em9uTABukR8gWntFmoWO4L5T45S15Zeg0nKsCGBNg
	 loxKttGbALvBahyRLLjJJ/+Ijp30MW+aNeu0dDS/4k1Fz5HehoadktLCNgNF1VWbl9
	 OUXMvepnVM0ux3rjdPwqBBJHiiV+nLqz++UNfaclHwvFQsgmgoOEnqRuu7A6NEu2Mc
	 nWmK7MpMkoQ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C438DC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 08:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171377462279.15206.7099140906602778576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5498fe0a390c2c4e06ce4250defee2036e6e46de17ccc4eead073c7d64a96714
Date: Mon, 22 Apr 2024 08:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713774622
