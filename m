Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FD4192D77
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742028534; cv=none; b=l0mp0OqMd5FEyQ8bbALitiGhKOlKRHvpRkemki8QdKdfZ1d/AduXUVo6HGdDqQVc2G2X7SHJmZ1iiX1wMv4UsiEbLuBgb9XpAeMMlRVRURhUV2hg0O3BbEBzNLfma03np+ODEyDMmXNWd5ouJGaxIhVNrIDcGONMVc2ts5CCQl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742028534; c=relaxed/simple;
	bh=F2h73aJfts7LKDi3V1W3QhXy+0IEBuS5vy25SGN854M=;
	h=To:Subject:From:Message-Id:Date; b=L/4zDtCvBP13fJO77VzkbPAzMHx/h7zwLsiI9LNUVn7gILOkZ3zLibEI+I5MVgaVGfy0hfBY/WPyf+VN+0hQyWlON1lLOO8QsMKRmEARBZo6iXYP0kSGGc91Vymng8lHBipxnTe9DjY6aHt4XDM19ZcidG2zHDYn33BOqQ+Byog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7REp5wB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7REp5wB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2529C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742028533;
	bh=F2h73aJfts7LKDi3V1W3QhXy+0IEBuS5vy25SGN854M=;
	h=To:Subject:From:Date:From;
	b=d7REp5wBTs5LesMopuSaY2NB9vrUHSPdFun12aC9cNMQCMx0afRsP526Ui/tJQCca
	 0D2R9DhiXgQOuvTsqy4dUqoOwVjVREP1gGF03CptVXMW+DQV23yKwpMT7Yw5bmjZLt
	 kWfp0qH7pyTXxUXWqe22CN3YiOx1uT2L+zFy6YxW+nVZQQ8yhWxZmGjsrXllCvtqMW
	 8ULPBjB+1qXp37SwB7Qk0eC5NQacfFKIhJcqgdl0pchWiOizPWAcWlHk5VXccHBsG7
	 bsx4XcyFLn/h3t0DTBK/W0kWK3R4UHK9+Q7IhvCao00idCrKxjSGPqvyzJgh4moi8j
	 rU60vxWcGJhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920EFC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174202853358.26027.4521402740614232805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d2478cfa5a010548c572f3fa7e20e1a95905baa5d8f8fb976942c2583d3c3d
Date: Sat, 15 Mar 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742028533
