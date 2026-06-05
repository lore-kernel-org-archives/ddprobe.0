Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BB937BE8A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780679674; cv=none; b=m707o9gLC4ZaxlNhcv8i4N7EWYq57DaXT5Z3JgP6uuLiBl5GziLzcY4495BpGV5k3p0zNucrYwh+7MHs1EXg+zu5gpUzXXjY8w1Qq6urZ+9ngimNeA6yFeJBIAeFK9LMOUTIhrHH3zVCjIuEdPylQ03Q7/91RS3IIBIfX8kLOek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780679674; c=relaxed/simple;
	bh=1Zxzj/k+0lHbuxBOfzM7fF/koN+mP7JZ0CcY1w4c/NE=;
	h=To:Subject:From:Message-Id:Date; b=UYoV1oUUCK6BInBwAMSBhVArAhjLo9SQbnqUnzseqlGSg5srW2Xwzv8+SPO83stO2b0j9nh7W2Cdy4LwT3LsHlr/pvSXZf4I6eI3XnRGfboo4h9+jWGCJqqkdUZVwGXwMR9WiocKx12xwjCqLjT/gokvMsgHQFYtJtZVl8IiBIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ700sLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ700sLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B73C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780679673;
	bh=1Zxzj/k+0lHbuxBOfzM7fF/koN+mP7JZ0CcY1w4c/NE=;
	h=To:Subject:From:Date:From;
	b=EQ700sLIQnWWsKCxcJjcj2k7j+/SiTSUU7Ox4nCu78wtLaktLFPFu/ET/MulX8T6o
	 qEC0PmxRCIDyoWYHG5UUm+AIY0yUR6ZVVzk3N9eDUZLv5uQIvTwJiwYX2ukiHAJerg
	 rVu8JEviUgpbtzsCOjNVSRU3pMqcKdIuoMR/jeoBNorPtyDaPrQ0bRePyldIeFhXcV
	 bSLf1RpbwjghxWVy0FstH8/6F5MWjDXfjYwSlsukWsoDhbqoPjPCw1rXGM6L8zhen1
	 J5xh7WZKveflheSCyhjnGsTqKWR66eNUJt/Gaesd9NWdcPzFdDCS2Yr7p7ze82ZcJZ
	 3ZRYUfbw9u3cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FE4CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 17:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067967374.16851.12434210859739039047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade6c7e52507e69f87ca3b17c86b63123ab66376dc29bcc43a9145d4e31273a6
Date: Fri, 05 Jun 2026 17:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780679673
