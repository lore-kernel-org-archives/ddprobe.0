Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165261A9F93
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774832094; cv=none; b=iMSJ+uETURplF70erK+fLSJfYg7SRRL0Uaxj/Ja38sQfjzYZsjp73Edfc5FB3tgju4b/+V0gwZtupv/+t2p9Z1XZnPUIcOpkyaXg3EGSApWqa/O9P/mEJxlTXe9uzczx2Q6KZ/jkCIoWu+ERLnvJk1LXNoLNhhqI3URP6fhrM6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774832094; c=relaxed/simple;
	bh=qJJjd8FpHxqUBE3QZAjespkHIP0yBDb7RClzRaj5/n8=;
	h=To:Subject:From:Message-Id:Date; b=mC+mx7cgSlx+OtLkxgAaU1FWCo5VzGhmcaMjto2YMtoYdZZl4MhZUl6YZkpsXDy0HOr1O7i7lcITBN8iQ+cBTwgPt8ytORO91ebqPUcd/dkbckaGUaIkFjo6ve4twC0N0D5Jnsf3M21XH4HwhDXJxN+fYcYVf0jifsl5HJTteE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZHt/YsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZHt/YsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3399C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774832093;
	bh=qJJjd8FpHxqUBE3QZAjespkHIP0yBDb7RClzRaj5/n8=;
	h=To:Subject:From:Date:From;
	b=nZHt/YsDfO5xO+c7eDp/FgIe9uEB+OPcqZ1ZxBssf7TWkmsJu4XLB3EbQuqriCxUK
	 q6OFZEv1vQuOBG5gtaI1jsBe1JVNmlAt3tup+VkhOo2clcpttzZwkuMTcTD6GmrC5w
	 9gLvvpk+y2WkF0did/gpp/+y83J/Qf0kfwLCmakOKktI5z8UxBu93rUp9UyCAe6tC2
	 bgO6CLSVe1B4ELLqYvdj4sO8BfyF5S0UnL4gdMOzRFzardpvCUFSBVH0o7MARZ84NQ
	 JUlNXC/hsP8SAs1xy7ZHmdTPpePfrw/PVyl5acY5kNK8HE3Mdb8pFfMfOyD3hdqHg/
	 T6BUe9tQRWbyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C98FF4927
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483209358.16628.8594735716115508022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d06630aff6a52395c19c4e4d4e7b4524fe951ec235de4b58b8427b5f128663
Date: Mon, 30 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774832093
