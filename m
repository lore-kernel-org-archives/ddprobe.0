Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F904136672
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735423554; cv=none; b=XbHk3MQEPIeVRVDZY5Eku3vGePQXewKbsY3KE++fMpeAaT/B/xpS7BH0fbsQcGAWSsoV5atGn0ryR9vTuvUsVowLbB0CjMQsqvTsM39EJxLxj808Ua/bKm4rqbTrb9ohbBYN3+HzmKpY94rNmav/vC1zvAs8V/DI+ov2E+JyLzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735423554; c=relaxed/simple;
	bh=+CuZaJKMML+4x+3W+saRksHij5Ko4bsTqzt85VvcrG4=;
	h=To:Subject:From:Message-Id:Date; b=XOrcWMaL/ygHmA70RPTbjcYwdB3rWDQby34rp3qCnUbVdrDIRaEOUx5N9gfQMu4lMATqg3FLTqd7Ana63nUk/ZlVbYO6gYcRT0dK7NfCDIQgrxC1qLWMUhkdrd4dk7qT3GuXC7C6rApMAhIgX3drxVrMiUwuwFqk6JdCCAzZjks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feZYD44e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feZYD44e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE54C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735423553;
	bh=+CuZaJKMML+4x+3W+saRksHij5Ko4bsTqzt85VvcrG4=;
	h=To:Subject:From:Date:From;
	b=feZYD44ejXXawy6eTJ8O0ka6j2NPRhscVhzLzHjeNkfqcVKC/GqFcgU7zxa4kM2VZ
	 2r4psJq+FvRVYd+ttl8JPYq/m+rhCEkjpOFeKi1UGptP1ue/v5iYmEsufEHI8CiGFx
	 00S0sFqBQWLoaPcjILx70LHM8Jvo55hfbT6brTrqlBW3YFRsGom9zhpu5uqXcloHH4
	 Azo8cViIpTdhpSO0YP+wJpxqP2Xzs7X5S+RQ4ua6DUrwz2+ZIskNNDGOLrniZU0BoF
	 FOd6KWbrtr3LkCkktREWyj2A1LvOaC+qHh2CIBYGjqHJxCUyHrMcBszuzyo3lhSXff
	 HseRlXYzbrLLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BC5E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542355360.3262.1940282970984630520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b30f1b0f4917ce15ba7b506f5f96c27ef261efbc0f68eb10f0dcdc5149f1dc
Date: Sat, 28 Dec 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735423553
