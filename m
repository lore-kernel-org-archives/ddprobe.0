Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36693AFCEC
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785348635; cv=none; b=WVZ/ZH1oGwl54+J6aK7NNEPwiCf9XF4Zrz9BKubwbBkp8xf+OMyDFkTUTgrPQIVcHr7a2RXx66EytUejFIKEDH9Tkd188FvcWeOPIKC5iIilcBRMjDIk4FhW9S2shZXj1LXjb2wtobvt/JwvjrwsQBewjCosUO9xdFXNAemn9KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785348635; c=relaxed/simple;
	bh=m3XusB3xzQ1tAtbZcyipRLNe9FOgiOMmovDldS75EoY=;
	h=To:Subject:From:Message-Id:Date; b=bma4a8qlg36S38bZxLfVMKd36G46osifWgZwluFarfpHExSCTMFnvW0PLOT5L2YPDmJX2HqhOZLKPvEWAmhoSxATf0uzk5FPdR+9StufIWkAyjFsMjgFfaXsLYWwZMNN7LnDC6SSkToNHImThKAINK3cNWZ8KJDkhKUHK/pYExw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imEfLzcc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imEfLzcc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB48EC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785348633;
	bh=m3XusB3xzQ1tAtbZcyipRLNe9FOgiOMmovDldS75EoY=;
	h=To:Subject:From:Date:From;
	b=imEfLzccIh/oen2s01IlSET97zMCJhy+BXCwz3Q+Ied0BO8/qrkuUVd9EAmOXL4zq
	 +7I3D6pv4Hs9YAxkWS3c0GRY1L3MbMwO5LiL1wzPSJPUNzaRCftY3CGkSbc+0VLjQH
	 CTdYquYE/luBwHVvp3CWFiHwFOzt9ZkfMh+hpBQLBRV76xto94jAjNKs9Dd+l2croy
	 3ni9JhEO3Pxp9n4vlEIhZv4Vh3jTbDkuSNdp/iTW5mayGE38uhLcKJem8EmCLJgyVO
	 ylOhRtF/YWMjlVkiWHqkFofpgvcx5c2eO7cSZrg/Uwps3vSJ40UQM5vb9eH1A5i/XG
	 l4753BLnB6v7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B635CC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178534863370.7184.8675666304643552544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637f3d72817c3c7e7a40c4f8b39d75390fbd406b176ac57e2f2318ed7a371626
Date: Wed, 29 Jul 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785348633
