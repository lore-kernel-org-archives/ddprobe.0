Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130FC34F46F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788807634; cv=none; b=YQUp8MED3AQ1pJIDv8Yr4kJ3st44qvUxtCrvOA6Un8EOvdswk2roGGMLUcNFrfOtT6h7+WydzJSLVI6feXvoix0D9xE2e9eyfJ6LvmNeAQV1Sa+fGLKuklx5s3U6GefES9aHys+yLMbQmCy0C4KU63wOsAMJLqnNYfqtvgpbV5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788807634; c=relaxed/simple;
	bh=eIOutnNPHKWWiYMinKFUpm63jB+exrItCT+KG0Iq3iY=;
	h=To:Subject:From:Message-Id:Date; b=p9WH41izNWnO0MB7FpeAK7lyIYALbl0+9c52FyO1N/SiqzvdfiutO6qK9lxOS7o3njwR80dttu/KsRIKJ4kK0kwhzFHaT3OCJLXy1dPprkpDCJI8OAvm7Ux0uMpHutqMqnen5kRrL0RgjMadCYYF91qhEDctSMG6uornx8IWoBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wm4YCQDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wm4YCQDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8958C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788807633;
	bh=eIOutnNPHKWWiYMinKFUpm63jB+exrItCT+KG0Iq3iY=;
	h=To:Subject:From:Date:From;
	b=Wm4YCQDzhSiEOw9mP+qKyKU+0lAqmH+llI+ci1Hto69/UwaPrYDkbwYc6xKuyLZ3Y
	 uMLXABpCSOMPAqcmi8uxUzbB1KnLIfVruCGZDvvfNI3ALY7ob+sjMIOFNAKW6+7IVf
	 ODUv6/PBnLusMZO4dUyG4pasJB+ZHOJ8ZjbjZTTUohbvenTB47DSlpcn1lxaMgLHdQ
	 4njcnqO+4JQ63WUnBbSKWpf8JsaS2wTiMlXMvOHBEcfbBJUwc3867Ew2+U5am4OnW7
	 ucGF5krg6AeUjFCXQEpLIMwBcaifFNdiWPK1RW4FoS6SJb2+wv2VgviRWw9+6biQvd
	 rSVUPuvVjlAFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B39B5C79FA0
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880763372.12351.5546726066814123920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5748428b15896c9f50c9c73abc0f1d4571c130a51a974cdc98fa89461b547566
Date: Mon, 07 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788807633
