Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B7D25CC79
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759658994; cv=none; b=T713jaEemz+0C/etnmpF2yFSl1cym+G3dZwE8e/9klyZJtwip32udPsVdHghHXDsRxa05z6f9FzJgv+zSgey5EWPGW/oHJkRsECgjZrl1pt7tj1J0qxw2VqzmlgJacBFGzqmQX3LFRu+QCnhMoMofZlN5TIt4Na7mmWp2U/6Nj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759658994; c=relaxed/simple;
	bh=evPmR9Jj6r8P9s0pvWtqfocEvzyTubIMXn1idShlwwM=;
	h=To:Subject:From:Message-Id:Date; b=HT4bxljyx4LqZYt8EO0T+x+vQNSnrFDddX8wZdSxxW4LctBRroaT7A5TnMgd5mr9b8OC0vAESU0H4aBYckahQetNkn77xbwehmbkeZ62vW8ucx0Bi40jeYQjhEykc1rhK8e34HtV+ibSKnlM+mY3ski7LAraya0HRuDHtKpcyaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg5Nafp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg5Nafp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4FFC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759658993;
	bh=evPmR9Jj6r8P9s0pvWtqfocEvzyTubIMXn1idShlwwM=;
	h=To:Subject:From:Date:From;
	b=Vg5Nafp/x3ygViKy6FMVoTEzICEG1c50UDIRTI8EbjC+2PMMYr+0s80QBjKUnwrf/
	 ypa95Lq5DylU+Pm+HjdU+y7ogeqN70khQFMKWJHubh1L1uqKGFdtqbA69KwrF2ppXx
	 10gp/lpmfdESHWJIZJcsfOjzv7DwRF6E6hkpQo4kuPPAICv/jMs0/HN/XCuLw2YDEJ
	 LUrCHTgWl+I13Fvn5YrMq+IyXQsT1RMChhPC0J4UXd8bafyHKvD6Owo0mY1QBE90yc
	 AhajaUuG/GhlpBFvPbNyf++a/VZswZdymbrOkYmkwt0AxlNbOqk8SRFASTUWBbvgoM
	 eGfDGN6Osq1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A793CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965899359.24803.10531974676596158591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca36ff3b884a2a30a15ab5e1b3896424e83db60988b957fb3f1b88697e4426e2
Date: Sun, 05 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759658993
