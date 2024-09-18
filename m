Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B5A187FE6
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726664754; cv=none; b=qqaSdX+YMJzvuplUEGIiSCvn634diPOlGz0jczojuuGVUHUJKnl53J7zYFcJs6jBH2g+rJgFv60AN2hV8PQGUHeYWitIPArtLGXJACew09FFwzbWN2ODeh13LUcFtWNKbdfdkYNvkhRvGw/8lnCtoX6x1GDUaIbCvnH5ZVhC5CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726664754; c=relaxed/simple;
	bh=onSzumlVmPF8fijSEr1330QAb8sE5BTRJApez18CQTg=;
	h=To:Subject:From:Message-Id:Date; b=OrhQuE/mFHRNsujRp1aFk/lxSGbULMezlkXgRZcSwr+dPb3X9mNoV1nEpDUKMnXL1ZTjCtQcHtBZx7aLtqjWh0S7ujIdPsVzvSxVxfUDdVUrpKKqc2Eo83HLBhClGbIaTovCnO6aBZOn0ks5pSFyEJ+ozkVNEieJZdplxyz0ZoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7iXnvMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7iXnvMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D02C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726664753;
	bh=onSzumlVmPF8fijSEr1330QAb8sE5BTRJApez18CQTg=;
	h=To:Subject:From:Date:From;
	b=I7iXnvMTL3pncsrp39fn8fQStvr8YXaUAldB4kvLeOpn/YkqKuyTC2tY+Y0eLrSgK
	 s6SCqlKv9n0NPtjnqPuL3ckVi/X+EY/5EMlbaMRn76+RN3ZByM+CQItfeADlV70pRV
	 OSdi3Ps0eDbJZGfWmNOrh+tEuPCzGUVkT6dBDHV7xWPs8/NUKMvpu9sT0wP9pMD17O
	 qM6wKpLykG4fhAS5yuaP0bfTAaSmekx6TI56RI3LxfInZEhlgplxom7Sf70W64FTPR
	 YumNclgwQMXvUrqvNtpQdCq7SOTdksTBMWV4ULL0ZLjoZv4bU+ATEjbqgka/20eErb
	 UO54yavC5Q+/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985E0CCD1A3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666475361.7113.223874071717601043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63f6ea084a375d36c1a43044adac669007a9b9731c5ac3fb5e6c25241773b2f3
Date: Wed, 18 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726664753
