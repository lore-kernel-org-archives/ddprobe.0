Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3842B372EE4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781074534; cv=none; b=YYZhm0/zpBSWs/+RrIsVg9bbc+aprIR0ufHaoTPPckCQg0isJegkxNgVvdKMOQGh9Sa0BBSYdyR3wU0dMPVji91H5dcDCls4MEVKZJcWr6QStP6fO3UTLVJvCmpvfY2eCQIFLYsD9fhrqwK1bAgp7OdVgerzncnhjKLJJlkemMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781074534; c=relaxed/simple;
	bh=nie5n2+0not+h88yozUtUmJzjFRQPK/mVsU3Fq87Q4o=;
	h=To:Subject:From:Message-Id:Date; b=Z0FhvA+pQs1++OsJJ7Qg7trS/AMSoiys2qPxPH1M2hpA7PgU5sJoyGeTfAYSmLLn9yHL0LJVUBzSPDCVWsOpv6wMclNXOwW9sM5E5O2m99ag/9nNooc04GeuX5KTjsk5lddZeOTlJWKY8R+V12WWOI72wAVf9U805es74hhg7po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opXCsQYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opXCsQYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7BB2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781074533;
	bh=nie5n2+0not+h88yozUtUmJzjFRQPK/mVsU3Fq87Q4o=;
	h=To:Subject:From:Date:From;
	b=opXCsQYNO+rshADfpC+tyXUZScMesJA8tiBQqWMNSTN96S9iq2c7oVPv4y2kdkwKy
	 wo8WVO6ixQgfJLPGVEcqn6GjOhvIRuFFRFvST03ZCxs1X5358yaW7/+mOPdx/WBA9D
	 4q2sdmZQL4G89r9LUyUyELh7ZGvXhX3csfQr5Ems+6p1ry97CLJLedEHG7wtBO6Cty
	 klXGubRkIU4IM1ZIObjMGY+9ShVUZ5Dhtklxr88y3YDndDZaa5U9mcwKTdtEAuapZf
	 MJcP95AE0opWncxqIgo93akbGmt4UOSQ0FWhh02rT972MNRMbxBNANtsrODoKMUBd5
	 ZX7D4nBgySgFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5BECD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107453368.19088.6488850697038976770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190fd314e13448f2e71439031e80c2ea9884454f80a1fb3128b5b8b235985f5e
Date: Wed, 10 Jun 2026 06:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781074533
