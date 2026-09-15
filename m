Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437E72F8E98
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789454434; cv=none; b=Ynj0sxLcntG1Jeezoy4AgUUhlD+GlShPMyfamA4IHOTbaP6gly2kSdyJGQChA0UZIlq913g4Z3s8bLZbr5AFvMblsn3vXZ08svy0SVRaRn09bi60/CgYwlextDijLIVRV3/7oz09HDuyLgiTczwRc0NOVbwW3pvG26CTQ3+lUns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789454434; c=relaxed/simple;
	bh=z0ECTrYj5c7rDUrV3WlvW/Mb2470Nsjg+dHq65BJALE=;
	h=To:Subject:From:Message-Id:Date; b=SAKjA85roIYBJJ1LMtIE0rvFf4VRrArBbtF3UFxFhj7G0BUDRznN1I/hraP7HvthFfb7VJ8q2Q+ejGS0k3MT01Z27jFKElul01wn19htZ1ArsmWlgNUVHY8mzk6WWRdhJXc9nW0QW31nZWjLFMbU1AbBILeC3aZM/gsicxiuRDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGgtb15L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGgtb15L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAF2C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789454433;
	bh=z0ECTrYj5c7rDUrV3WlvW/Mb2470Nsjg+dHq65BJALE=;
	h=To:Subject:From:Date:From;
	b=KGgtb15Lhla3HoK8zoLZKocqmkM0wn/RaHKhseBUunB31FKBleCLam0zZgXIZn9qZ
	 kd79bX4jzCyBtXSpFDrbLJiHTdLYJlgaF78NFLp4ztgAh8Jj7AkvM2rMOb3v9Ttlbv
	 RthsvWRf7rtUKcrkzmmwkl8la/soaQvrCisf7hJRcfhjp2o5ukVfLnMOskK7ut8XP2
	 8OF72oIVi3CIUzKWb42GyFx9Gm9Xpmw0x0Lu0Te5wGVskD3QjfYrb6w85sPj+LZ/Wb
	 rXoxr9XJPFoSDFIfknGqTISW5PHb6flchHgJcOc9gp2I9kCqWneDhKq2HiU+Ww1iaS
	 FN6B7pSquG4FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA95AC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945443368.17743.6425327757253107453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7567a289f5492859ca2b569f266b654fe2c66b2caa13bd60fb5da8a70c6213dd
Date: Tue, 15 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789454433
