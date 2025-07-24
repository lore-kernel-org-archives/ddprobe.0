Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C65A1E6DC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753358394; cv=none; b=p/HaiCEHoASlhXqMsHLIMoIwQFQt551SmHeuFMD+xntQMzzvksoAUnYvcZrNZg3yZUhYc6YnfmATe0jiz7rdoz3oU7MzdIMSLDtPL1VJJCsZQOLDcRU5PpNcR+8sm9kOj4NIKPXHpXrsHgA+N0dzJybFMEFggAPFVERT9kTz1sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753358394; c=relaxed/simple;
	bh=BbtS8V05n1JU6Paj2gb8D52Oh8SSKmZItk+mRnx9ixY=;
	h=To:Subject:From:Message-Id:Date; b=Z87fX5MC5Nq07EspDEtqq5FdjpZNkaRZDrxDxnQlxGYSw2sXhfDb27u4ZXrp6xNdV50vZNWK2LWmDCRJq8QDl4jYjJC18xMfrNl7NVlo2aFlTArCf/lQqmYjs3r9pFj373AptezwZR70ZueMLrBJYWnylvb52sIdAE0zH53gEqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMgRGMvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMgRGMvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA8EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753358393;
	bh=BbtS8V05n1JU6Paj2gb8D52Oh8SSKmZItk+mRnx9ixY=;
	h=To:Subject:From:Date:From;
	b=oMgRGMvwgSjQxXFDbAJzw99c1pd2PRyFKwSCuqIBfE1Fh06Gc7stwKqx1Xq9aCjqV
	 u8Tcv/OY6eWMG/CIwR0xJtoBnD7kq/NY54eb3K2rRZkZxwhD7nvvR9d2mTavo3KdOL
	 Z9c2pRxJiwkuMSPNeMOPrvCtO+WsdrMn21vY9paMfr1PLawsC/6vkUJsiwD0lR7n/D
	 W6R19DN249S2QlWJQ7Sd9/RSU4OoTFcSV9sL81ZSKAJKbjrp/Vk016N82NLa7rbl36
	 yCcTiZux/uVwloIybtwdozbeE8SrkhNVTyYRPkUZLZ8cL0aeBfYNJi1Whlicsxlzb3
	 gFCwUb84rvvIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB64C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335839357.1174.4049094052151154833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea714537443740d1e19728ed09f207d065e790c62b80fc93e8350b05046d8f8a
Date: Thu, 24 Jul 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753358393
