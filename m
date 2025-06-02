Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D12522686F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748883595; cv=none; b=JhhNLavU65FQcNEGr4CK30iPv3i77hiA4ZjysRDCHikglgTXsk8M1cOdwYzC20bvo9NDupjEM3ajiCYPS5ZH5FQpbr4v/oXnlUckEDSOeSGNlhKLBbFaPDnoXx8sFboCNRTWrZX2zPfGZtNDzwVAOWt0XocugnuaDIyY85DVQhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748883595; c=relaxed/simple;
	bh=SRJlZXc6eO0Cn5SOh/X5WJ2maFpTIp+xBf/VDVX/IuE=;
	h=To:Subject:From:Message-Id:Date; b=HrKeuX07+q3rSFO+KfEyk+uWtF0mvGntiaIstrURZLHskkVDyGiakDy9QTevrjjBSNShXpCUv6YektjkIXyn7EJKyoHw1oI2VaidASEmcF8zLtBDARlwcFRf0IyTmPKmQeljqEChu5L8USVsmWSyeCfemxZGMBXYtoP0jlfW6mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rc0Pk8iU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rc0Pk8iU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA98FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748883593;
	bh=SRJlZXc6eO0Cn5SOh/X5WJ2maFpTIp+xBf/VDVX/IuE=;
	h=To:Subject:From:Date:From;
	b=rc0Pk8iUc9YV9ZyqHQPvF4ai7aDZPsgTBKCNW1+6vn9I5Aik5ehaD2rRKF/otfyny
	 4tH1kMAq1iZe3P1OCcMq+1kjsh9RIMi/uptgM5lx3vsup7PtYg40A+1p1qB8FW6DPO
	 HrMv6gUMir4lwskqyW4NpzPFijmZvvKS7FqwHb6P93lvPKycXQjg5Xb+onoiTOu5vC
	 zVUXKZb99djKWls9eqrbxmFvjUVXEj5mjuHuseCJb1b8uU7wgbksIqCkvNCn4V+YbV
	 v7XbW3/2FNG66uYAHiiZKGjbTM7vII6UW8ShCmeJxsJ4LKw+6Zu2gpuaONb2Q2zBCL
	 0AVnpAN98xaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A5AC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888359359.11879.10462923639765820620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fbcf2575dc5e3fb6e52829dd71312477e224b302033dbcfaa96d381f17348c
Date: Mon, 02 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748883593
