Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C3F15E97
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719801263; cv=none; b=fGu8QBPZd/v2P9hDTT14PO+Vcc2UXOycCY82iiw97ELqWP5LNFIoUQ8EbqWuoSFup6P5NGuA2kGloTLk09CCmpOzYfhwoWQTlQj45d3fsX1Vixwnlb2N60WgDzu6hK4YbewnHFQin47QSyWRL2YYTK0vjnq40TGl6iYCoEOCU0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719801263; c=relaxed/simple;
	bh=pRkshtBo54QIsTTYbVbVq5AjGmethC1adEPYW+Vz728=;
	h=To:Subject:From:Message-Id:Date; b=Vjh8HWD8ov6VfgqI5WOtmUYKRBPezKBsy2JLI+1EhzpQHtweqNToXDTbHR1aqVhSkl56c8f4DegOuplolHVBbmpv4oVINkDJ5gvIl9hrHSRPTG522MRT14nAj+qZapGDeStxtwQr/U1c1AcEEBnB5BJa4uZ/AbMlx0dkF0faBGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hF8s8Oa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hF8s8Oa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F3BC2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719801262;
	bh=pRkshtBo54QIsTTYbVbVq5AjGmethC1adEPYW+Vz728=;
	h=To:Subject:From:Date:From;
	b=hF8s8Oa7dvYvkOFB1YD6YoQ6JzAY4Fnv8vTlA1btox5PEdqxxcArijnvgNanic17X
	 U9en2QK7BHC3zVMb5GVGPk6ullj0XIg3dTE3PxQN0yQTQaY8h3hwek9KA5/AN1u4CB
	 ToC3o39KHuqPrFPLzEVFVqrKwpUg30UIdWHRnptMzn94jfcF/Te/2ZgHIle7Ai/IqO
	 Qjoar+fDvKBp4Xsql3l6jXYjH2WboGTWm21T0lNb59MpMHTzrzDkfPsE7ZijNL2Ehl
	 0Y+Le7kF777rvqmlPtPhfXa9E+5PXDMkgRYhyqxuQYhPHTOY8Ocw1TTHVaKQPA3vWS
	 kw39sWjPL2MiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCFDC27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 02:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980126276.19098.11437262780394220242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6306420e342421b84d8a5b3b25fd2c68571667cb28b020c886379ddce66202ae
Date: Mon, 01 Jul 2024 02:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719801262
