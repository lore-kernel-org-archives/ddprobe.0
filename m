Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138793B9D8C
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782731914; cv=none; b=dcQhZVxDTrW7Il5vXVM74nnV2qa5u2nbblBiAPkxQQHZophtTnpaaWU01KuBeujY5UOE80pBvykAj2ii7hOpH6yKGxxrtpE67F7QiCCp/EHAftu2vP401c8BvgE34oDeMZXGxP08elFojUdXUjkRtqzbiIvaNivvaxWc512lOZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782731914; c=relaxed/simple;
	bh=2XRpsIygl5KfV967fumaIlZ3wEvjtwfKk6ZGExsqNE4=;
	h=To:Subject:From:Message-Id:Date; b=C5JjMx1zCzD6XsQOSrBpG8hMG0h4y/DWmv2dlajEgpl7BuPVd8FtEAfzEHJbM3ux1aa5zOvoDM+raQmMNrvcNvJ8wfB0cR05mZllyFZVF2iSIyhgVuHrcR0xg1fE/jUHLW3zb1NRrzLkf/LXdXEUCLSDZ+hI/s+RCJmNm343dm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IDDTLIWk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IDDTLIWk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29E0C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782731913;
	bh=2XRpsIygl5KfV967fumaIlZ3wEvjtwfKk6ZGExsqNE4=;
	h=To:Subject:From:Date:From;
	b=IDDTLIWkU5BDcsc2oLHs8vwjvA3Mp0A0kx8mhyR6Rf+aWIWFOVRq6a2dJYD2Knb+D
	 guCZ2YCYUQKRV8EyGu/BpQW5l/KCtEZ35xFBMXcvi9fcVopDiAvq6tmS9avRklq94R
	 uJY5GnAglWGFxi2KctaXC0R6MErsTrAfmqikOUWZ0KzTpJH63YLdoOxXsiWUh7UWUy
	 SyBGXznfkNJgawJUnygmbufE3OtZut7TjASddYFXBX52Xsnrxad4+o1+7RvL4Tpk8t
	 aFObAzBErlMtlEHOczVj7cuSkg8HQqsKZCwSLyInKqREvLd/xlJMtJ9feP1AXFSI9f
	 XMAC4ZGgOiGlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA19FC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273191368.16537.13996022358094030794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e25fbce674c3d32e67ac9b88a4937f1f98857ef4d3ab0b8acaf17714409ff4c
Date: Mon, 29 Jun 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782731913
