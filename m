Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EED15E97
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736388354; cv=none; b=fifOKt/gNCbmeoaqQl1IlR+/ZVOKTrJTWJN/iUj2jBA68Mu89EqIBA1Voneiglfy9ez2e5SNVI/39VUx0WKXUQWVxPsYxFX5qZrQX8iSRDsqgfQGrSjbELGZH4wLsf2O9+KSl7oKLdbu7RsAN4c69gIgNSrvROcPu7WIHkScHVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736388354; c=relaxed/simple;
	bh=gfesCRBMj9vikcqDeCMeBoz6/tJJNCI6Uqen/fd/JZU=;
	h=To:Subject:From:Message-Id:Date; b=s6QaaH05vZYUFyUoTcK2IvzPF1bCk5NxcxrjmpauzoipJle6PAv5Q+3tkJT7O31JhuYCDDOhO9nkB4r1wTmfSI48s1E42uHalKNWu/TRDSw1WjNjB1INSMkKESsGgN8nXcg7FtMBCGV0NxRXkrqFNKlNE/AH57f9RXkY1sfmn/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCCS84h1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCCS84h1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE34C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736388353;
	bh=gfesCRBMj9vikcqDeCMeBoz6/tJJNCI6Uqen/fd/JZU=;
	h=To:Subject:From:Date:From;
	b=CCCS84h1HcCxNQFovM75AK4FPSXdBJIe+1x3Kml/K/03ysRNADKDTVpv7DfP1d4kb
	 9yOMH3t89zZuPBHTtYh0eVkCxSeRh0/9EiIgCAd9Wwg/89I9Ux2wH+dXpGGp9pqrNf
	 KJL+ulBqExxbvBiuK0K/8fWpramgzPvMmiA+PL2hiSwCwTzGrFkSG2bb0Kvh/IIFdL
	 SUYkMrWPFnh4JFwykTH2oQdXZFNUiB1n+W/1PLuOZqkof1fXf1789ggup3QUIbHNBP
	 mAj+ageYbyNAHM387YTuIPkvwYAht8fJ8bTE1ncmTye6vivCQ0luWC9DPZe/l1AXHw
	 BcvdwlfEPPfLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9717BE77188
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173638835358.10569.7596096446771096648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98d6c8eef0cfec35ab5f857c752916517a71fb08740857cb553d56a58646d13
Date: Thu, 09 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736388353
