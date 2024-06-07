Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D843B64E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717804043; cv=none; b=GgtbtCpIg5Meec/DlcPTyfKJOnS4mRbW1xhPh3/zM5X7rGhai0vYAxC6mpxQ5wBjmjKpQwlydhKjsa3O9I93wFCeDDCmW2kjtGTM5Hk29ycULtUB1+H5R/2pxwhctX+3kWbQuXWvhilIayBclxRRwk8/zhbCd5poTney4gbZ7c0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717804043; c=relaxed/simple;
	bh=qpMrxQ1FiVI9kAa9l3p/caXCb4kZl6TzCAKa2HJUibo=;
	h=To:Subject:From:Message-Id:Date; b=ibu9jgOUbLUMAWYS8Acq7+U/U4I1z8fg06Tif04mBpSAAelnJP2vyLgNMcCORugIjq39ECVUMlclO7DDmO1tW5C7zdN6ISnxr6E1MVcxrHS9ztc8mb0COu8zEXQQnrbjyOBr8BWCkr06k5AI/jPVrkubonqetfblf4ow5AbCi6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpC/NpS0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpC/NpS0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE9BC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717804042;
	bh=qpMrxQ1FiVI9kAa9l3p/caXCb4kZl6TzCAKa2HJUibo=;
	h=To:Subject:From:Date:From;
	b=kpC/NpS0enMc8Jk8OGE6/5BPBVK0bGIcTWIzu6PU99wQb+fhd+PRQ+mKQzsahe3CF
	 FdL/Y8xpSxvij2vM+VOAb8boQCSEr8CZCdzsCY1yIxJpKVA6zXAvOhRLWORY4BT+n9
	 uK3rVtlOANTkPhp5y0FRsZGsBc/6fv/67LhPXKtE/8axUvBS0oZnouc9rZhBfFRpvg
	 4n1mntnsUDomcur7VigSS7JWoTUc31d0aNN9YZTvPH9fhZGhHd+Sl926jstxuCAyKf
	 yh72NhO7I9GIGFC78j1u1Z6NA8YyBVaw0efgt3B6SkgDnYL+O+t5BbmpEHANgA1wFY
	 h04GOe9Nle22w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B8EC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780404276.15189.3946749782327779221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa6acd2efa45ba64e3b89f9086033464c25657a2018c7a584b434ff7b08cf79
Date: Fri, 07 Jun 2024 23:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717804042
