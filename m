Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A5D22EF5
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749083994; cv=none; b=d8aMKT9xCaWcNFK6izNo2AmWKC0SX5Vg1CjQ9GA9kFzn6ldI6ifjyEdR0/1zEzXwuTAC6f/GiB3fgoE5KAdYW6VPqNH3VAXMoctJyB5OjAyi3w6s6zQtcgJFYPcLywDULKL8oBrnauQ7fMucYfS+4vppugIIgPOfWUj6ViC+v94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749083994; c=relaxed/simple;
	bh=2EAqKx/Kb4hpWbDy938pw7kTXhk94Ld0kP6rRt36UPE=;
	h=To:Subject:From:Message-Id:Date; b=YmZzBQDppK8gfcLJmoUnBF2qUaghQIgHeJ5iiakNiMad9PiX8wdQ8ZBDp0/dyrWbyhdjYD41iJZGuPMEnkzEZdtTgT0gAnfx7+mcualsH9zsfQt+dC/2TlyDYD8jy5wS/og8ft2jPvJVkbg14J9+8+0PoQGQiJOLsPNJmlk7P9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJj04W4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJj04W4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DC1C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749083993;
	bh=2EAqKx/Kb4hpWbDy938pw7kTXhk94Ld0kP6rRt36UPE=;
	h=To:Subject:From:Date:From;
	b=BJj04W4UQHZFabSWgPZPHT5CqxRxX04gt+8/8n94IexX5UfS0wz7eiZYz0F8kf1m4
	 tl4yLGoOlNG5rQ4LZiPoX/4z8o8XVNBaSjemeFlb6ZwccjerbqVL9TOUXS195Fv78O
	 fsgU8fg4PFf6C0rKRF8m0BWVAql+DWQtyzTr8dHLgJBUunEtENrKFBZfPCSBUUAG+4
	 UU4a4oEzERbcIN2qa5BFsKeUrOhHercjjmBSFxjSyhPcCOVpeWN0EF/IyiyrCsEvja
	 nVtUZ5GOydt0b5/L4YJyOX5fiYISKfulL6FQOeR/YySYiVE6XldC1RH2YMhjWd4oH0
	 0+nua1x/y0sVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95421C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908399357.6477.14889143312665058080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e5d3aaaaae8a6b129c1632c889dd63d6f3ce120f04045028c5ea872037b1e6
Date: Thu, 05 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749083993
