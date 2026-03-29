Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EED41F37D3
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774744494; cv=none; b=DGl2GPayaMwSdZIxojLEgiVg5UYNjQQOG4ykkzVeb8+mN+GVvw6j4IInUhlYFJnCwagZ0ZH9s1W8zqcB+aGV7980kgoTTnPIla2yiJorz5X5jwLoyYH9gDgbyUITO7Jhm/Ipownts64bdu600N+DKt4AXt3wi8wKbWG3VMkCD1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774744494; c=relaxed/simple;
	bh=xQE3XkfwFElhsnjHXreoPgt/cW5TauI7dJBhy54QlAY=;
	h=To:Subject:From:Message-Id:Date; b=RIY2Cd/wixgaOHfQeboZfrY2n+R5d6NdtySMioNUXZ2HPZ/7HIbNydj0vYXjx2rfsL1iu8eax5pyaXC9BI6t5wQJhIKVjkr6UpZ3A/ibS8aO+3nNFK+DBu7HrJFI/KugGwrke1XVF+1dYAXPQme/LCRTZ5ZmZVwcRliJi7bDTzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzw7iFaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzw7iFaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A914EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774744493;
	bh=xQE3XkfwFElhsnjHXreoPgt/cW5TauI7dJBhy54QlAY=;
	h=To:Subject:From:Date:From;
	b=qzw7iFaEIw/yMdsPGDrXVR2qUosXWc0tE8Xr4f/MWgYXaYZ6BW6Vloh+u5ow2ZgIn
	 0zPi6397gBCjTbG91TPQQNqDYLJ1meIAfEFxyCR2CTb/xaEhMk3GB6vU1dxtRY6jn7
	 r5o1SsSibz4K+DCHTaiaurM7M/h2oA8UWkcCX8Up5oZrEmoXcSEFaoIXlpRs4IpNSv
	 i4DLVfJ3Ixv39mWYQOtlVTKLmL1KV1v+FVTHr8inVXwBo860OR5+pqrFDxWz1Lkv1V
	 uX6yoo5SxpelASvqtNoOWlWZK9o55+ZIZggYxWAVJxquJGNz0I5RX6O3oUL+Aj+bDB
	 CUETld/zJktLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A0610D148A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474449358.20225.15342380215934260741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3a296ae331367fa71bf247c94b4a6b9984f9c6d02fdf6d3583c26d6af43a4b
Date: Sun, 29 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774744493
