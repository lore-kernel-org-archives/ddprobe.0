Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3180224166B
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745402394; cv=none; b=Eks6G0shKt4MsQjSxRAOhrbzw+oEgB6RcCrhUEw5Fdy89vPX3ROIdhlvWv+lDeBMqeJpmXKSpUnChPDJY7H+Gp7puxrSsAtwnZL/HHoUQbZ9Rl4FgZibzJmQuvYRB/6QTYXR+TYKcYis6Pcxk5G6hCQc+/Q+QwGb5FbXmx49oio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745402394; c=relaxed/simple;
	bh=dk4JiDn2knNeqzFHPyT/QMJ98clnxtLhOupeBn9yjug=;
	h=To:Subject:From:Message-Id:Date; b=ZF9TtzfD4f1CZLdSfE2cFccJOtx5O3LMkBJc2QDR8tngDYJTi22XicT+cm2hb7zE8Tj9kkS/g6wUfScHBwrVlcEMVNuxw6ys0hhQ0Xha2hk3q38zTeOQTL6IUSKxflFaeNfzoGiKC34xtXpilYRUlBwdTwBOFF+5LWqDehy3WXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMXngpcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMXngpcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A0C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745402393;
	bh=dk4JiDn2knNeqzFHPyT/QMJ98clnxtLhOupeBn9yjug=;
	h=To:Subject:From:Date:From;
	b=vMXngpcDt0WSXW2RGpX7aZE6jnU71yW+kFhKCH8Q6tDmwSLW3mur7Lg/NlL11B7xw
	 ukOnGqqw0PmpvNC0VVIUTZ/9TVCouY/ChAp3ROc5adMdcAx/xWwPL0HTfOGrgutyKJ
	 FaWcyqzINDZPMfOR/hnwvBUyQc/X4GV4vcpRKuueA8hg0S64uB7SskBR31iDEFQbNY
	 XIaYrQvMGPPqRwZGsJ9XHknhVGWVVfxEf1CnOtHRD7gvZ3yJPbU/j94rxjuO5dY5tV
	 gqBaR5AHH6cTrrNkXBK52lfW0E7Ij2rsJXwzH8pLQDeFElwsIId4fRQOEPykdg+y9B
	 QPqeeiAXZMcGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9DDC369D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540239358.8285.13405827032580258852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5741fd77aaee768bc0bfdd70ff8249c24d0fcfd28e236de705c7c6bf3a27b53e
Date: Wed, 23 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745402393
