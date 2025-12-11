Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189052D1905
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765426375; cv=none; b=AXjmYLwBmcbqE6KzXZNy1r210Or6cploEYm8sX/90b4clUBLpxKRAR+G0QgJfw/KxRjICOM4cFdJvD8Iw13QmTL69W+20UECZnUc0VWE1WycXDWYRptqkEDdk9vmildtACkYuSRDAhRFK3boV/hKPNsnmfdLS4EP/HjKlh52AM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765426375; c=relaxed/simple;
	bh=9OZl2Q7mnjueCCWryRgHdKG69TM3OVUZLr7QKVcEer0=;
	h=To:Subject:From:Message-Id:Date; b=hgkVPouEaik3MlCZXByGeisr/ZOJ6io3Q2O0t9JmlzLOh8eFyv2DZkGOUoT4PE9SObdk0JtD6EBwduxRdOEFoJ1tLtQzSGOLRLBmbGmlY+zO1V8odbuGkjGOkUQFcgLBZ7UZi+0yVAxb8/YZcVg/fKpTlYwrIZZGEO/Lqc5YZko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udnCOlYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udnCOlYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FBDC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765426373;
	bh=9OZl2Q7mnjueCCWryRgHdKG69TM3OVUZLr7QKVcEer0=;
	h=To:Subject:From:Date:From;
	b=udnCOlYWFAP1167uZC9sDEJ31M8RDGseYThhv0QqIHPBI6iDxc3GfOece1lUa2DLb
	 bgK8kNYeH0gXqr4aQkDWth88owlFiIA90WmcwjvfSvQFjg67aqg8I6RpJBu6itmtxB
	 vL++qCxJIvJ40LT/CzeLvyn05e1EMZtKLTkE6QdWdLwNokDPBC1aixIfmZRoAee6kv
	 W9Q9Pcz9K98r5u6xww2aGomn8KjdNSk9MqjnKD4QdL8QFtSu0gJMRH8HBnQXEO9f0K
	 qAJMGX+cZN+kGOUY2IG8szw5nLFFWCXX5sX7DYrjf4vcVcvaIjfiugkc4KhdeiGCVk
	 ppnPsCOa1K/TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A18D3E78C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176542637358.30525.3195356447997591573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd198855ef81bbc33f995da394eeba358b5d713f0bfb36921d59a2bc6c8e2e6
Date: Thu, 11 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765426373
