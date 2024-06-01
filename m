Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546056FB6
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717207463; cv=none; b=WrXkXgYUNfpHqYy+Su696I1N0D85MVPtplU9uQa/HcODOK2No3tItKJHKVHFCBcp+p0uB38Nc2CjTmNL9PkK4SA98plbz14LLTIiC84N3k/h0KZhY0sV2+h9TPIphNlvjnRQh8p3cp6BM/iv46i6PKJ5iK29ktQ8g51j6hSZ3DI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717207463; c=relaxed/simple;
	bh=bEjlI5IiiIqse/A/vPSMKSLB5jm3Lah9oQeZl9MZzjY=;
	h=To:Subject:From:Message-Id:Date; b=sf4Qg/CFGD8Zk7U4QiySvzNkRq35EmZhHygbyJIRyOP3l1tmvyh78NzY6mnQf/tT6BJjSSCK38SSKsByFuQUcFgMew/veYlhuzOTaLk9GhKh0GCYRwXa44FWBm/KJJrUcD0oUeaZ3L7xLM7QDtNIljaTnbFEX4h1qoqo6X/vogg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnkziBF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnkziBF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D396AC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717207462;
	bh=bEjlI5IiiIqse/A/vPSMKSLB5jm3Lah9oQeZl9MZzjY=;
	h=To:Subject:From:Date:From;
	b=CnkziBF5uDK5fF3JNDbaetmqD18ml6XuTUrICBBlopqX1mSbtG+fhq6hUg3mOrD4H
	 M3FUefwF4SsbX2/6wGWlZ2UlduWDFWEk6j4sL/qUVCEAQpERMVGfWxUJt+3xKDbRTp
	 s7MK0kxk5IVbFlOTgmyq3f47Ac6zNpyU0dTokeUTsIZbP2rJPvP0JykNsyoyseBG7k
	 1Ie8zSErpX8Oz1eNGYE29MFxrndWyn6sDzjTEPMuM/XCnmJlD0+R0sn/wLn52evz6e
	 ETz/cWjnOyf342B4Eh8ko/tokhOZi5s7pLU31H/bJtLBrY64/GJLXcu3plTC6MT9pG
	 VInvnhaTMc7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD405C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 02:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720746276.959.6579746968131942435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a413773fb7e96c5de60a2f5664594f9868c7ba6f494b752d33292103cd654b
Date: Sat, 01 Jun 2024 02:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717207462
