Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F762494F8
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749130795; cv=none; b=UAkl04riHnCPgCnP4w6xdJgWEh9v6p4JJm86mt4Wklzf7BEvngQ2NLSzfYEOrEpuMIhhqvV2LL5kQwXej2hHOg8/l1mxD64sHm6mxhPN5N2kXLr5vSGZzIYiOom3B2IaTrWT1O+Pf3v2yTYTIEh/S/D0jpvD5EOdOXghPWjsrxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749130795; c=relaxed/simple;
	bh=1PQskCPrGzB82kXuN5Dei+3ylxyMFEUhvAu5oL3L/BM=;
	h=To:Subject:From:Message-Id:Date; b=Kqe/fQKBWoogXVACCEoNNnPWpz5gsP5E+It/ZGqbVEnkDLS03XnSDunfd02crXnDa+eLCsVqhefd3ClRdISeT8+i9n6jhh0Q5qOJp9pT9upNKD8jXzb3jutw9h8S9XsyPHCCgiDU+xrjvSdWg52BNj7RG3JSCRMVVjMk2SGdJ0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgC/9iIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgC/9iIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB884C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749130793;
	bh=1PQskCPrGzB82kXuN5Dei+3ylxyMFEUhvAu5oL3L/BM=;
	h=To:Subject:From:Date:From;
	b=mgC/9iIP3NvDF897r4PvC+5UYkA/gM7idoigzHER8826jjF3536hHkotYbdrjrnM4
	 YhwTxCoj/sFPpuKOZeluGlOl4BCfMPppxQH5ZmOy4XC/mSfU7kmmTXumsvsRuXzCVD
	 4GKaBVSXYQ7H5M47rralGQeZ+ZfSYPWvyo2S3oX5BMihR3GFod9RvCdiV7NGqvYxll
	 MnyzgXE+n/9z4rc44EkRBvLTTFKGwB5NcOBzleqS5U6nodfOUqZeZb4gZb6gEudgoJ
	 TPngkcXaT8eZjZH+CyXJXMgvEPlqvOAKu9cYIjN1tR3bnopnV8wmi4AotwIG5/yFSI
	 aKvqiXAAlryoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AC5C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913079359.2969.4453080129495669381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee79c97fe38f8bc842f2b9d7032dc22d06ec47ed65f0feb416788c53dd7cacf
Date: Thu, 05 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749130793
