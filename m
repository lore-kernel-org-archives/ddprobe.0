Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1D8256D
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722591954; cv=none; b=WQU84E9IEwlHMazbaFaFhV4dl4xwmG3lHIk7WQyWELPhCZmCiBrnXd73mtPvMbMUbXrWdecVawEzCGBb2yhZL0x4+7HjZbicYIor3DknIuK6FgMLAFpD4qcwzMRyhx2XCyKlTGdyERDC78PGATAtiq+wqKRWe65+9tjnzS+ir6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722591954; c=relaxed/simple;
	bh=5bYLCPeKEITvGD4moy+c6hR1Zl/1PiVN7T7WS8OdBEU=;
	h=To:Subject:From:Message-Id:Date; b=Iii89zZ8mlyjqxnGwfpVfXVu1fHs9sPfTDpM/sWJXLqtrtZROQu8ACdoWN2hP8EVLCRmTeVcpZIOjoObdRJzgfMIRRbzAFr1OadZFCqAceqclNY3xj3jDguIIi1CIMpoq19u8crpzP1DncssS25b2ypTLoGDZmvO5sn0p9eC8dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nk1ED4ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nk1ED4ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA91C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722591953;
	bh=5bYLCPeKEITvGD4moy+c6hR1Zl/1PiVN7T7WS8OdBEU=;
	h=To:Subject:From:Date:From;
	b=Nk1ED4ya+2FZdE1n/828uCVm+91pjoS5ctGoNOL8aLCbYJ06+DWruE2A7mRGasTV6
	 V+fuWPag/v7ifgybRB8uo105B7+MQHJH0ivMl1HFobS8EOOsqSWcxq9mkQFQE+HluZ
	 gUtrCFjXdRz0IQq54pl0po9RsHRgYv70UcTLgxdg98I0J7SwI67DEJhcRdW2x/YV0u
	 nSh0XyHJsQbGjfc7oyXdOnkzqoPz7mWOS59rCO88GrYcSYCxR3X+P6JoEq0ydGe2vq
	 Yq6DnRDpBXQJBalmDomgmRQLIn2JH5OMI6qOEFr8MkWRTvnbFbIwcGG5V1ZngyUXRG
	 JnHJ6uFKWMiwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9326AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172259195359.2732.110201620764191754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9eead079abe93d5fd387e840371a30ca53f0a5a317f8b3aac00dc3f4c4c508f
Date: Fri, 02 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722591953
