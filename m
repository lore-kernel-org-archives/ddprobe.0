Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4B4324B16
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773295494; cv=none; b=sg0VW41byOdv2SW9LK8eOjMyw2QY+WBYd1jTpkLDXjujFjXwhxmC+TYgVzFpNuldewpzTBMeRUXbMwGjosWsDfi85PsHpKvXBkDEK9/JsyvPPGjeqz+zRa6k36jX88642n1D+w3Zi86eEhzNbxWgkM0cK/hoF+NF6ifWF34XR9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773295494; c=relaxed/simple;
	bh=8/HEa40VXqCHSZctWG75e68KoQm+PMK7ALWjjW7DnFA=;
	h=To:Subject:From:Message-Id:Date; b=E/ZNHvHRlzYdulj9fGwpMWGfOLrpIxYHqIG80I0VCdsH4uTK3F7QX42SNQqsp2XijEHLVKYGwYRk556jBK1BBU09Qn3zHiShm2SgCU5d1Fj2m9If5oiFwEGjXsl4Mxvgp+dynMYRDp4yp36PJkes3ZIZS1ySNISj1r7yo1Up8mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJeLRQma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJeLRQma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A996BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773295493;
	bh=8/HEa40VXqCHSZctWG75e68KoQm+PMK7ALWjjW7DnFA=;
	h=To:Subject:From:Date:From;
	b=KJeLRQma4PJM3UQ2XniyerNXxxLrYkPWMAOwEQEMuF+keYfpFfxgPNc+dGilsR42+
	 wdOtEi06YQNXKnirGmLizPuM8c09VTnli7hyjybIqd8OfUnrHOlo/92gFtii2Xp78K
	 8W+owi+mbkM5xNiLil6PTYuHKfJYPsubKrnBc+nxXfHxxV3P+sQLgxF17boeFPKDDC
	 9TTLOSye07/1JiBVqNf49OSHIeCEupH7EEKXLSsMIzUwr5r7f0GI49vCOIoUfxIFwR
	 vJK+9mNQ4eVXjMuQj3ByfO2IszBgf4Tw8tDpPw1vlvOWk5r6hs/MRXDBX3VxoGSfcn
	 iQxKgr0kas77Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EAFFED2D1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329549358.32762.534137369964775937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 829069320c229b00f77ee8094716ed707cc9dbdd94846cf601636ef68ddd269c
Date: Thu, 12 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773295493
