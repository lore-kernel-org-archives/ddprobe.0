Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497BD4C74
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748986794; cv=none; b=QDQLbG9Ku+2jal40kQWV6hoVdCzIYVPDZpGPzV2HxP16etUOACNDzJ8ZZGEfgWJbxetr7LNMnr+OcseYBCvmVEFJQU6+hH4bdQUJu0dxblbURS2HEH4XRav0yFuv8mRNCjJiZ+zsUNi1tfFe5Ok39ScXPt3G7h5Uwntdp9rcfZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748986794; c=relaxed/simple;
	bh=nVUf0D4JMfoQYSv1AzdrGpglqfrZCzGju1crPocJxrA=;
	h=To:Subject:From:Message-Id:Date; b=G5rIBSJlgnCVpSYZw7AlNSnnbRiHShDTBPrpC34IJzCVV2SSiTloRlS5uyzIbVtmV/TaPVP5pqg3x8u/K9fCAa0n8bCoHBcysbQ+JcSKtvR/+weZ8a8UICFsnJHKGzH4VR92TDO24LFnO0RRz76TdLewaLw4qkfaDpLn4RPngJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvqALS5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvqALS5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DC5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748986793;
	bh=nVUf0D4JMfoQYSv1AzdrGpglqfrZCzGju1crPocJxrA=;
	h=To:Subject:From:Date:From;
	b=hvqALS5m6TDagBbqK27TGp797nuWFuUpm38mi6RmPVFMizUIC121H0U1IcGt06WKA
	 CK0Gffrz+b1NuuovH+0Y+KePNqkx/ODvfsMvc5/qZrpy5sCN3xUObVu8eoe0ISIE1k
	 GBiLoxf5NoHwW8U8LhsZtzlHK22e9L8L+I4FVJC3RGlKnyjHtW8ECyz79MhjkjGq3w
	 ZtfOwlj7DfoyiiR+K/xBD4WzzmVjVvCHNImBEZlRticJoCs6fvBURD+tTzXyFNEid+
	 2GAKO29ptIVIZ8rt0NAG+asvtek05sP1rV9VXF5aKm/yFKebjK365D8qLQNij62M4D
	 ePdolrfFMxLRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F8C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174898679357.17146.5265696727588274093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0303cce3db25f33ebc4b5024c2d04fa5ec0e3786d15305baf96c66c863fb24ee
Date: Tue, 03 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748986793
