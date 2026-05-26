Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A51C3B38AB
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779813154; cv=none; b=bi8Xr1dJqowHZIYiKuF69MIZw/nK0IOPrBPHqFv6pMYGCCM5bHOI2unc7gytQ84Vqgtr17nWM61aDcgJHsA+ANRYEKRQH1A+vVx1NBKs9gHuvHw2uapBWD+dZscRPZojxtifNtlvuFH/HzgoqddyNtC/xxq8gZaeGa3xeoGecEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779813154; c=relaxed/simple;
	bh=85ctMg+1Xm78uOa73GxeXGPHUw+EDFfggrqoad9+1NE=;
	h=To:Subject:From:Message-Id:Date; b=gSpHQOy6lko69CNigvkty9D5BMBdFv4jdaupIceYMLwJWQQORCWbab/Plv/ouFwQs3Y/cpNdzaj6oW/iOpr5P4v+2TQYfyaP/2U1VH5mLhcnFwMF732okyZ6Fy1c+BpG22c1sg91mioF5sd2aJIy7m7oaNc6hj2IdMHEk8Z/EwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBcbtiSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBcbtiSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0590C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779813153;
	bh=85ctMg+1Xm78uOa73GxeXGPHUw+EDFfggrqoad9+1NE=;
	h=To:Subject:From:Date:From;
	b=eBcbtiSDxWqQ3Npq/FOHE6vHobBU/ShEuSuKWOff3jBDUFXPyctW42ZOGqZoh3jVk
	 lBFSO3lWSXiGZKJN2MCgk2pLeFyaAEi3uqVa04hi/o/821Vi2nI2MPr/OiSCLmEbKe
	 xmJqfJ3E0XAltzly8Mh003ksI5VdeoIGEP1VtQvIdmgZ2Jc0Bi1fv3qB3zDYP8KZgR
	 KJECwoU63oGwkBSTNd5/DSrRxsmi87su/NcUiYeDPhHXGnM58LiaWznbFeB3hpF7qI
	 vptAj4RHM75rsTVJQOk0aYZlPU8NZrj0BYtKpLnsNSwXEwnuFGL4BXnBa7NHQEMhZ7
	 tfJdvM5+YOHRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40F3CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981315370.18255.5084871464090694320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b5abad16ecd6dc278e2000e623fc902f650a231057e762eb94c71a5c36323fe
Date: Tue, 26 May 2026 16:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779813153
