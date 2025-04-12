Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66608F513
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744448994; cv=none; b=V7+8C+Sct7uKi3XzgkZfZ+4+rG+p/ibltgpsMHkshoohDhzFpp81+z8wbsvTPu7E6T8DtCRLTS2vmIfzpO46raShIXr1dk/gbk4mqJrRSIBQelaK2k0pd/8AtAK9c1jjUggcSN7ZcPTnIgGUunCs5jsXjyl4iGQYmysA4gh/Qnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744448994; c=relaxed/simple;
	bh=YG2wIJwJ3goiNQu76tNVWK1houLpIIev2pnDN1s0mbQ=;
	h=To:Subject:From:Message-Id:Date; b=MH2cIjPkvdddRQkwIyZFXo/h1IRx6fjv6NPVfAypXufNrCO1PzJGCsatYvZcTyGQd+sjtpgDs1HYHoQlk1bAPhCIO0wAngB3qIC/0ZuADYGzYUtA2sOeSSQft07R+UPYse/TshzTh/NQvHFGKjWJoWHyhVYEeumpOWhkGy7LMK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjtnDV17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjtnDV17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F42C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744448993;
	bh=YG2wIJwJ3goiNQu76tNVWK1houLpIIev2pnDN1s0mbQ=;
	h=To:Subject:From:Date:From;
	b=PjtnDV178TS6H6l7AsQNSKezYNcE9We9nHEyRboqffH/Lqn+Vlujmm8Q/mS3BGD11
	 kK9ErWCyXZ2tnkLm2yNLdxKjWPUjwbgKKJGnK0PqY3uN9vwgEBDkld6FVPzIx+zvhD
	 eq4/OpxVTHTf8+n6EiXjN+0k95j89x4RgXiC7w05v14GmcuqkuskVH3KR1FTVuIjWn
	 Tj4dcGCaufq0mRVhBSN7MHAX1Dwtu1/NafHH5o8GiiPgDmRqMsr//AEd1LiXABSEi/
	 bdjKpXOb9vPjH2I4wMf680zrWIH5KQc9dbUOFUVcH7QFp/hzfxTD+zU0dhcQyqdv1n
	 KrYZKEtCWdQFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD791C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444899369.6644.1453342788494421805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad95ce8957894d126d65c7fe07c705684e93d0c4c8cab7ff2209b0b9b90d560f
Date: Sat, 12 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744448993
