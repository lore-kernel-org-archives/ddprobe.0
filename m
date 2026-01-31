Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1698A1F192E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769823234; cv=none; b=Ey41FSeey0uoFky306EuEWmMkuIGbQ4lRCct0eHCtI81vnaTRty2ipBItRHj3j3n9v/P/iawZcvHBO7gAj93F8K6mw4+F3bVwf285ugrS0A7E5kVNv2RBuLe6PYNvxO8NdfU2Wh7LePraq6bD3+zbaBi0sMk10jeCIwZ3Az6SKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769823234; c=relaxed/simple;
	bh=vVOzED5eyw7gtijnddDxsHBfkfdzSur9DLUyzO2YKhc=;
	h=To:Subject:From:Message-Id:Date; b=IxJjQnroaDB2bdxaonAY5aUhu85gdU9O8Igaw29a9rzYZZf7grox+kyYQUDosxsDvNNX0LVxBEsoPNNaOs24QIlzRywYR8GY5bxDN/ANWGzej80weVBero7IGclt7kwUaJDLQXaCQp2Yd0Lt88PDcynA3dYbFuNv4sgK5RbO7ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsEIxmhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsEIxmhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9441C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769823233;
	bh=vVOzED5eyw7gtijnddDxsHBfkfdzSur9DLUyzO2YKhc=;
	h=To:Subject:From:Date:From;
	b=NsEIxmhbDPQqKurvke7pj2XnL3Qkr2OZnMfvKeC1fW3DCdGW9/3Qm5dPa+XJ6GAVp
	 591jlGtddAK/l2C62LvrKc4Dkl/BnQiNtkxqGFysWN+oN1j17X9JOT/IPV8vb3Mb1Q
	 XsUyHgoRDtPwZ5Kj2nfWLwNPCB+Zn8kuZSLv498deFlj04Lh0i0kRUXwS2KHnFA1U8
	 nRHd/DSfszd9wJAGhh/BTP1/fQQkF32bkRu1cGwFarppOBBGqxbcmkPYjKMDTz6xWL
	 neGiyRpDD6pZ+vB0I8u4I1pTCGYKN3WvDgagN3KBMbFPzoWNMi0SMgi6wSSp7Poe+y
	 U+5gozYLzfdIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DEBE6BF33
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982323357.25170.3536837896063464231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1a64c979d3a1cda40b99a94bc0eaa80347f76920382206621c83e025ef1f58
Date: Sat, 31 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769823233
