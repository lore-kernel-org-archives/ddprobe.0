Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E837523A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729394754; cv=none; b=t2/wq6dGVc4mIUoMBtiaZBQ5YbZHjs2DWzpKluanYHFqSWnREtur/IufnD+Zfhg6mnyDtwUnfP1Fs5aViHxvzWJ4cU8LG46W2iRp4O1LZyEBI/O6M5UxfbGvS6zjXc2UH7lqR4t/fSaFeGa6uWbiFty6qYkSUPFxmdr86+1TKq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729394754; c=relaxed/simple;
	bh=Lq1y/JlusNFj/Qa5jjPG9tUwXzJK3JDlcc9bI6oGCsc=;
	h=To:Subject:From:Message-Id:Date; b=poX2aveqRQ6iz3+tFuM4z/EMGuv7MmKmCg8hwRYFKG1m6K7ISNYvR7o3yfit6QKKqZL+Op5jHIcAJCmji087GhIhCKYYCMKWAmlGv/+nFMydifoiObgmwlKgvjYToR6iOVDKprEmnWihVt4NbhmHzmEOs45C4pYZ6w/dtNonf3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBInPyzo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBInPyzo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73D4C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729394753;
	bh=Lq1y/JlusNFj/Qa5jjPG9tUwXzJK3JDlcc9bI6oGCsc=;
	h=To:Subject:From:Date:From;
	b=hBInPyzowWjYSBaRJ9aszyOR6ECxpTzLBqB7HOAx+dOxCBITMeEAuwrwhP1obicOR
	 hvRke9SJCpB8w6a/Xw8VhiwiESg5Ct/Lf2/c5TmS7C+po86HET/FESiyReBxQo+z44
	 Jp5A3Ub43aGx2GE4S98YvlRNdYYOMslovufeYQR7KoYvVCTrajlVl8mX6RqqxXHuLt
	 tXSzHaa8yWjtSlOO+3VmrK8SCRvfflCyu99//qSsqmFi91pwq+2YMeudSDWqjKdPF5
	 EKfJZz+0K9bvFLLkULJZpHCwiiwgtk4keSgJAYrhOiDOY8FLdoncz6KCr8MWoDINMI
	 jghqXGN2yKg1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4465D3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172939475363.18241.8478151466168280001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1d3f0fc2da9bc412cb16564175b187bed5146e7c5b921156cabe7e687221a17
Date: Sun, 20 Oct 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729394753
