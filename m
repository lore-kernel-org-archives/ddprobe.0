Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281692B9A7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759789194; cv=none; b=XOLNp2Pvq3iVPeAOqVkv+Brhq8ZqYIcu5fSN2gcs8JGvPFVls2L6uln9dgXOlG5U+VkohXiEGuidPReOHzi7/Xp8rTXhT/lFZEmuakUF1MJmS7GHYbpy8YXkj/K9cIQGTNio97PazY+GKs6psv+JWQ1uD042iVHFRPyiEHxDS4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759789194; c=relaxed/simple;
	bh=N7veFsQlii5RcH+4V/VU1/04l0+l0P45xnFRYen8kTw=;
	h=To:Subject:From:Message-Id:Date; b=GNl4YkmntNyxJ91BSiGr1v9zjq0e0tByFOsCtiv2w07nZ/x3AP7JnujFbSI8Up5BCdfhDTPn56HCgrx7sDTi0+q12u2jFwM74dWTv1tZxPbYtIzQXQq/EORgOtH9kaSsXhY4orSS88JtEaXYAO5dchjHKIX3Ukwl+zOcoTbx7VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBySd0yp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBySd0yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F5EC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759789193;
	bh=N7veFsQlii5RcH+4V/VU1/04l0+l0P45xnFRYen8kTw=;
	h=To:Subject:From:Date:From;
	b=QBySd0ypRg00NPlcWLtP4FYs7NmffFZ/sqkNDBjPMsmMGyVqSLrnbIZfv2rH3Vxwm
	 5H/+dAPmHq/ZgNn9gaZOK54TDVd+z53ZTgGDqGNTIFzT0g//uR7OMbxHQSic5A4JWH
	 SDLQqKV8pLnLRoo5i4rl1wBBeR+qOgEIi+UzOP7TDliVbcUOpl0eUnwd/lkJrOLBcH
	 FUH84TPtIi4L790NcgNtj3jRTXL8wzwVmgnIe2c2FwmMra7hfw5nTDxD/U89cuC6sF
	 vZ4/HBslkmMZ7SVEmQA1WhbQpavXf4GMQ7Rek9dPkpvwK6HqKN/P+GAkv6ISIE61be
	 M+GubY65nFjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94306CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978919358.28924.11612819592333552529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128afe79e15cf80355871e4644698f1342b3f18f50ffe52733a0454eeda9ac16
Date: Mon, 06 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759789193
