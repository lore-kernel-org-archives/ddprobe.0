Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A73733F6
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759109394; cv=none; b=Q7UgxBzjQ/zfIQlfyWVcmrbaGnJ5mFXVGPD0FOr/czK0RgZoyMmkqbC2NQuvZ5sIMudm5O5LGBHlAEueDNkfZW1cmtiDelq4oNm0GaIsOwwZklvMgNBBivdO/XSKVfc11bNdBFW7HpRjbYAoum9NemSH7eZD76W88OyzSKj+LM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759109394; c=relaxed/simple;
	bh=gJaqX/0/boP5eJR15Y95dgZmT+oz82YahtNAM2TfYDI=;
	h=To:Subject:From:Message-Id:Date; b=k2cseazfE13A9jP7DILpi+dR4+vswnWZR7ub03/WLWBzPelGyHW1K3FDgjkYAgylW6UO4MRaoa1/JiwenmVmaR5kZujRRII6NsTgq1njTgVQ6GbBQg+WDUQk7DYJcU0vXaZgt5KYpjIJndivnuqPR1wMK1SOQiSUsoNcmIv23Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B34y4Ten; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B34y4Ten"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0122C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759109393;
	bh=gJaqX/0/boP5eJR15Y95dgZmT+oz82YahtNAM2TfYDI=;
	h=To:Subject:From:Date:From;
	b=B34y4TenLrw0CQ7bhXNUYyBa88ECnhbVibR4VNI0OtOu69RFdvBRGvRdyc/woXoLn
	 ylg7jYCVk8Xe0+osA5HMTBKoNVKbqHM89srXYHqQ1qz+lOuoTA73ONXhePzOI/+O4g
	 94Xq1y89OhxZbCAf0Cul37YMBKZIsxSQngFeydL6Esl48nNFO8/GEo0LD03UgwP1zx
	 uP9GMfSy3vwwe47apZhTk3iB30jfjygyrqP7ykZ2o+UvC8GkQJuE1UlMrgcNF7yzOs
	 PpRkCcg7+gFK9u77lh6pYed0ykXYDYPETm9DtkS/4WGnYdNpE9lZOsSnXRPEE/DTr8
	 pivEFMBMNiY6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC58CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910939358.7390.13167070102357910578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e0d2bcf464816a4db74aa02e05cd254cf9ca1ac4d75803df4198ade75bb4f9
Date: Mon, 29 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759109393
