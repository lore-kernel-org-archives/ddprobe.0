Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0617134F499
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767729834; cv=none; b=nAG9liCBr6MLSHg1LWfkx7c87oUxeaqbNJL+Vu44IG+K6u+Jx5IC0kKDnzxO0r6LEvD5IOm3ZkdnpYeRbk4USgqkWvOC/kZ3uN2uGXmbP1QthrMK+EEeD7/BLfGtsk2Jspwotfo42sS75cksLZmOsDR3hUd3OlJOHfnb/c1FFqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767729834; c=relaxed/simple;
	bh=Szv0rP87QAWnFpVu6mWtwwFUIZdnIEw6OwcPzKXiYkI=;
	h=To:Subject:From:Message-Id:Date; b=MDhvW7dmG/McghCue0GiwAZK3OLwrl9ogCBGfyKxHeJDDqL69znmzoAbxJ63K3sMCxu/Oy4nN4JCZPjVuQBtQuQ99uJzWk3J4O2g7V383lUG6XsBI3DHlhEDqSEgqAhvLVfrPUvB7KITK1CMk+M3jJGA6zD6pukIoPgfFIzMWT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orNgmcc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orNgmcc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A094EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767729833;
	bh=Szv0rP87QAWnFpVu6mWtwwFUIZdnIEw6OwcPzKXiYkI=;
	h=To:Subject:From:Date:From;
	b=orNgmcc9NdWxqyObNL/bY/Op/z9BBDZgJ+8Chri4ScMiS4GiCoiKgB4e9eZpMSVaX
	 uHoisoY0szRZ5VGUI3MapsDNLRfvweAkCmSX1Nj62fGq2eYVA3RJfwiqJ2klctMgSB
	 vMWO1B7YoCT4r7fX1BtW0JOIy5aqGIaYLmgHflsF3dZub5ASTn+fobQi4p3zb6INT3
	 TvsMakfxUG646TO2qNtavarCcxBNV2wP97UMO/25FPtWjHqdOmAlDAUQHWwaOmoa7x
	 klLVUYJdOooxW7iTuCkfydbQQN44/dsZJT1+0pueNW3ZM6ZpeIe6AV4LzcUAIWlr5I
	 L86HL4u1AyLzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E0CEFD01
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772983357.7251.14492493767820254171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f8f84d60876f674ca7a83216c96f52cef46c8fe9ff817bc9cb87c736f261566
Date: Tue, 06 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767729833
