Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27136275869
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751384994; cv=none; b=LPlaJAhmFv1cNGX5JR3Ks9Y5u/Dd51QDxf+oyaiPDEO/L9GqlQeuqpYHZdbTEYX7Ozbxx/Norx6KKwOMux9g+xrAngl97Zg+dAdXfazTjkLMAkwkcldPHSUIFMrajzoopTT0skPhi9d4mtYhoz+YdOw3TyJb3FUi3qhtRBb4RVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751384994; c=relaxed/simple;
	bh=KTp3eApWYfxjNJ5Cnbm4L4QdXfJA188IGcGuV9D8w3U=;
	h=To:Subject:From:Message-Id:Date; b=dsO5ZYO9JQI+TEon+M2O2pBnG1bbt9I7JWTDky/tiZT15Khjebtt6cgK6gV7ieXm3/USIfxKHmfBSFFTOiQkvRhdiRUiSPWpnNhcodvZltHOfrnvYapgBeBd11fcxxsNL4ktotuaITqOP5t67hyM0XEN7yWYjZkebvb57W9x5t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncaYw7zB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncaYw7zB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3E8C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751384993;
	bh=KTp3eApWYfxjNJ5Cnbm4L4QdXfJA188IGcGuV9D8w3U=;
	h=To:Subject:From:Date:From;
	b=ncaYw7zB73kpw9d9mSwWIsQly3k9lmPCVYJcAivYnqTpdTVDmnZ3PzmeYFTZa3QY0
	 jteiEsBKCFGbYVSrKXVSZa1/iGFETe8OvcWsCG6Pfs8CbdUiHzs+J5k3efq0M3ULV+
	 1H/V6faBXlc7CL9+eFmM13m+hY8pJgRhWaO97h+yEgHRt2WVrc1ynl/P+b36FAz9TB
	 9ZDBv8ik0SxkKr8KBTeAfbtIkjaGK3DOECmjqGIkLRrzYCGwx24a3a3LkiGBOEZL+Y
	 KjtA8TE1zOTFykMFDEANahf9b8ZgMbg7XO0iI421bVVJcrIQaUb9aql8limIrO3LKM
	 4VTMZS23IxXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F9C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138499357.24450.6697132438334164053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbae33f9828471c02e60cb4f28022dbb7aac7f83e16250b71f111cd0310a5d66
Date: Tue, 01 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751384993
