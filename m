Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E11C1E896
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716750863; cv=none; b=QJdNrioABWT+luPSJzG9GQNB6ZSsPKa1n93+KkhpcwfzlEcl3N0eW2kNiJf05MiO6KRB+fIbDBdE2Fi+7fRfMeVFEiJ/cok0oJGsaKaCVpiOj2l+/Zz1QwKRhEHfOcSeg4VFp4QrSiYBh//a0LdVHZDbC5dhtrkpMJJMipmj5IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716750863; c=relaxed/simple;
	bh=tzoP2inSHoy9oPGyK1w4m1B445A6Lyyv5YP0S4d0yvE=;
	h=To:Subject:From:Message-Id:Date; b=q2rs76jcGFFF9MdMzcMRJmoAMroQKnw7LmzA1uB1gUauiOhTIGGddEPeKhDsUuVuwTjmT0oXL4Xp1BDIogH4mBvkPAA5lOxvv01Sy3gJh7dIRprIir7TqSvJEERtPfRcbaaIEZA1klFKAKdCbXizf4fGOIxv554A/1Kwt4K8Fqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjlZMAfA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjlZMAfA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9EE9C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716750862;
	bh=tzoP2inSHoy9oPGyK1w4m1B445A6Lyyv5YP0S4d0yvE=;
	h=To:Subject:From:Date:From;
	b=UjlZMAfA25qiXPlWbuMj1lw3RNBOsp1NBIylGRzkhU9whqaTC4/YIjv9S4zvis6Lq
	 mJFXXTb9Z8Hre0M9sOyrX61nIduNMj4VmU+3Gf/Ze3hLYWGWnOxuLxUTGP0s80FOkM
	 Xef3Y7MVB+RBLHUHqZ5gQGGOnAABPoztD57ojFLtp0pRWWosinbTvfhuAQS4B4L/rw
	 uLGRsvrUfROX8ebniGnOgJ4l7lWd4b8kZ4/ljumX679POwEzgFmFOp9cne1QhI/Pk7
	 bNs0CUN2k1cIDgmtBaq7V7YVveAF7nDv8f+oNzeJRYU4SUiKEm0NCNxMubs6K5lzQ8
	 5fmxurAkQ7ONg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9E5C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675086279.22738.14639295028246729704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcebea3a13e8ee9eb3330ddc5cef275cec0190ff8be48d15ee585f723153f7e1
Date: Sun, 26 May 2024 19:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716750862
