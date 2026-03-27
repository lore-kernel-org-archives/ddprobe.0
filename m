Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B8C2AEF5
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774614894; cv=none; b=EoRdjC6ktOJgJW3AN6+cuo33GKVAh5fwUg/HY/wZE8m1io36C3rMpDzsXgnX3ep8qwrHHgeZCI6G6BFqIUhjK+Ati8S9f9qqi88mcAQdFuviD4vowc0Gu2g0LN3DOFMx/o03dCtgWMxaXjvZxxKmrF6sTng5cwsL/UF0lGWwhKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774614894; c=relaxed/simple;
	bh=2bmNzufdfXiA8FbM8UzTGFJGX810k1wnmgUaGPbfl1o=;
	h=To:Subject:From:Message-Id:Date; b=LDCeBlTxpPpZjQ8QcgVjV6wH7vRjwo8x4LNR7NHcl/Ue2onlQQECLxs1OVorH4xkv+9ukUtoriVZC4CKhPYmxjVJgPddHRmR0UPsyyGelv6OIsBzjmVORHMfyyXV4enrgac1mX+B5KdlfV/ASmD5jaK8RjpJc0XX9ko/JNqdzsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V34pi1Bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V34pi1Bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5347C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774614893;
	bh=2bmNzufdfXiA8FbM8UzTGFJGX810k1wnmgUaGPbfl1o=;
	h=To:Subject:From:Date:From;
	b=V34pi1BhdqOg+W8y7XADSP7IdsAwjvNRjNCNOaeNI/O4EyPC1sWEnQQlFoK6O+uWg
	 Ik3U9s9ATuAU6ny4CtqjAq0fMtnd2FW4J/NiJYD9GUP/Y1GrSiFNft8wV5HP7Y+0yJ
	 OmIYtKZRNpI300OdJ2EmNu+nSPuwpyzBM33mSZRKRFikWcK4ISZpLNVy2bxZ7nJYVN
	 bCjj3pulzhWbMw/hK3QVanmhEQ4WbP9hHVJpJqMMgbb5+WdxiobAHDz+asBq7pkuLg
	 2uKmhl5ZD/ziy1kT1NAUkyKs8YhL7YFWcm+MsjFa85TV3CTCNdAT1/OgXkxpu7KpCq
	 oh4PUv9Utu/SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D5410ED66D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461489358.15712.1758156375692979315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb25e23f1b6113a9bb39f0b638060291bca18fe4df4c3f1801cd28ff35c0dfc
Date: Fri, 27 Mar 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774614893
