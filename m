Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348052FD681
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779558154; cv=none; b=Xa5OqFzDxTaRxKtS1aVE25AnknBd4qZJy20pFF+OeWFaQvH2fOQi3moG8EzKxc2sMNcChd9gGwUJg024n8An9AbofxqsIf2KHTApvBFP/Y4qxJ1YdglvpJS5NyNd099SbYIk4SIW+n4hB2eWpVGo/ZfIA0bi8mqWIMEsoM5AdX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779558154; c=relaxed/simple;
	bh=k465Y9gzH42PUol6+gUFrD3hLpE8QWzxrv8xEvdKjK0=;
	h=To:Subject:From:Message-Id:Date; b=WbFaPyW5DgEFEzISLuwCbYwBxUc1r0MJD2sUxm5hw1W7X81fZMSBv4lGOObffZO8TGypzpRfblAAcMTHJbO3jXD0nE/krMRSYNdsfFxLtGdKs0rl2aLDrOKMQtubZscajlXpx5w5jI8ZQYY3wHP/oYkfc0wML3DDduRk/v0DM+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxsnrG5a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxsnrG5a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03C6C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779558153;
	bh=k465Y9gzH42PUol6+gUFrD3hLpE8QWzxrv8xEvdKjK0=;
	h=To:Subject:From:Date:From;
	b=jxsnrG5aHjOtEjw9yiyD63wz4m/FJS188qdqM0oTM43q17j04TkyvKTtWVqZsHD8b
	 J5RQ2rlBRnBlHMFs4jsEe3PtZamH+R/IIbdky93rF8TNLWVPVs9NHwOiIPhfik7x8F
	 +hbJGVw/Ix0XArShvkENvCazDv/znRlku+YZyXpQB3Ra+PefDijZi71JdhEjkXq3Zo
	 A/5oLTs2jQ66sG1F4191B6IVQiu0BCLcHwOAj+s1+AbZa80dVQ5Hi3XOIVYVvb5ko2
	 RiM7JuDwHfP4n5NprvxUmLSAB402zbrf91kVCIDiOEIoy4KCD5XeAcsXY/eTBi+8AI
	 U4IlZTX/7K5Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8762CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955815368.11221.12766680438210002573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ec9434c475663654c3c5325a72dab52b8cdf1053d58490610e4c5da4eaf4e6
Date: Sat, 23 May 2026 17:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779558153
