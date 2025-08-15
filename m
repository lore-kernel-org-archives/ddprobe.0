Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383EB2C325D
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755241794; cv=none; b=j3ynl+WixFspgzYIqIUY3LWPo/TuqZzcTDWFI89fpuM7gO5g8Elc7bRIK5Myx9MmKroHKvkc0e99JJLuaJVrmLMwU2RuG/ut3UOaoqzHioBwlcTHV4RZrLcX7VK4EhtdmA0W5bQdNGPJ6pCH1fVjv+/cXDpwF64+P+p/7IVGhhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755241794; c=relaxed/simple;
	bh=CnwniU4OVoly702OZ1QfRB+D3jo8WQl3XgDHHq7spVE=;
	h=To:Subject:From:Message-Id:Date; b=QkMkF9zIzu3gNnkeq9vnPyyYZl3t+oZsLQ2Tgj8a6pXhe0Wifr5ayj2Mnk2Ye5mD0FDZeInONYNTx82cZm47/W5C9OD6FndPr5IRRKj1iof/zO7gj28+DBXJo88V59MH49Nf8boWSwx/vat0xBI1C1YgTZV5NGSk5BLkEcSqKIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjtldiJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjtldiJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC9C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755241793;
	bh=CnwniU4OVoly702OZ1QfRB+D3jo8WQl3XgDHHq7spVE=;
	h=To:Subject:From:Date:From;
	b=pjtldiJhJ1hM0uy8hXCT4tPxw2m28XMBy/IzpV2R48+dfmKlw5dxdWKZBWA75sQOS
	 fCK6/t/ONdro3GQDN1+21560/K+bOji3Grp8pZELeoCOpMmfyQxT699xp/ekclUG99
	 GDR1O138V/ZRbKewjBXkeQLps8pihUy67nU1U9/uB+zvrbrXqG5EpAfNvxcmXky21T
	 M/MKfKtCemIIYfll7snahVre04qk6cnL9VkNtKvQ1oUVd8O1CnOZimubnoEnmMsi6F
	 IMQ7iU1YGmEsruGQHsTrgE0SQx8gKzPzIbpXZWeUadp6En5mZJWY0+QB3paKpNioXU
	 PhG0hEIXClhDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B3CA0EE0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524179357.1637.10974598791536325679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5652ebb9420a4a64aec54c35480ac626ac84b0e66302ab18831e22f3f58296f3
Date: Fri, 15 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755241793
