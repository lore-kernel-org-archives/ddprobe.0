Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247AB1BF33
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781225794; cv=none; b=lXGDID+iRh4tArdYBwOoyTFYMndXgKW0fSFTCuV/cvGrH9oYu3PJffk68VTInLfbFP76bPvzhxPnBANrl40AJwbtriOunTKErYALayt+YVBvvM2rjlLfzBdfEL8WVuqe6tZ/cgyQFZui1XBBL4KGNhL7T8afw6EeDeBYUm3Ve1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781225794; c=relaxed/simple;
	bh=g3m68d+XQsSUOtFMm7W9vBMuuDN5B3ESYufMhy8330g=;
	h=To:Subject:From:Message-Id:Date; b=dpv4Nq1DochBvSB/7/W29+87JrBQoun+k/YyxGR9y04BASnaznjikH0CR0k2Ox7VigLU4tbHceOM0teM5Dod3L5nTKw9O7JDTkG1fPK5934PoHBWWfPZEiGv0flynhkwFW9IXYPF64FWhKcy9pezUecybWR9r85Ck0I73FB4dfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Azhfyl1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Azhfyl1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87FBC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781225793;
	bh=g3m68d+XQsSUOtFMm7W9vBMuuDN5B3ESYufMhy8330g=;
	h=To:Subject:From:Date:From;
	b=Azhfyl1RmeLstOZFBzSTKNmObZJqmmPPvsYNiFN2h4Eb+Kq8gcxJ7PMlBzCbj3bos
	 jah3uwl1sK8T2XR9BOeQZ6YN34wHw2NcrVKCGcugc0UbNYGa+abJRstJgNGTwLWE8/
	 aOJJNKzTVc9CRD0kgtAMLVjvV5KPrxo5Zz017zdX4gl3sSG8TMOhLMaks1tU4IKytK
	 Dhq6h+hZraUexLJDpTJXJugeV+HI2oIZKfip/FeJaQ8tepWyUfsmSYzxxStMzxX6t/
	 QeG95xIhMflnfxJpyB4l7oaWCvszgbj7yRGldMvz9X10QezE66pU4IejtvwdoeywLb
	 yVzqHdDjSgXzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08A6CD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178122579369.21131.5473081969907741107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a673a468564e9a5f94d80bdbd81c7c330b73204517640198477e88162bc026
Date: Fri, 12 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781225793
