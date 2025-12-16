Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED6035BDDE
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765893234; cv=none; b=DupH7NuF+AvH7enB5nyO5OG1YDpmOFTAuP2s77rUCG8XpWU52lWVNuZELA4TFr0cJ5VkGFBbrmsU9yQC8W325wilTD/OP1+s0Z/r7CCcU1SRKvVqVQg//kaQrBs5WxEbh9oeUopmLRfbDnNYT5RFqHqZelDzJCIQ57Sj4cwWbWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765893234; c=relaxed/simple;
	bh=hYag21cH3QgC+iU9OuEMFuYfU3kH/89sQ2ZDkbXnQH0=;
	h=To:Subject:From:Message-Id:Date; b=VNodP3dtABVHnzFN+eItzICzxVJIuP2wg6ZpdCB/96U/1FsGQuKF+T38TiaiDwXqVzP/Dg10mGPjLkJ5h0++NyMEdiSWer3kVfvdjGBYdvpYl9xTqvYE/9goxfmN/g+ilqhq4U0SI6JjUTWyufCqWxKCCZPBKMDXQkC86ykRN2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBeB0FfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBeB0FfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25DCC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765893233;
	bh=hYag21cH3QgC+iU9OuEMFuYfU3kH/89sQ2ZDkbXnQH0=;
	h=To:Subject:From:Date:From;
	b=ZBeB0FfCBmSMTX5Ina33qUqm+DjYdJk1hFaiBaHqsL7C/D0UbuZQ8JRS2UHKa+Vj5
	 8V0ivSjijzkIKNlCgjs1v7dMc6RSy0W4z/2MV6g93ghZWU7Dx09V6S4irD/F5lxxEd
	 4Koq8FlwTToc08V5SaPeyBULXZMlYd82sV16uB9krxbhaJedLkIHb+h4T0r9fxXqd3
	 Ff9tqF/rqjuRvjhx+aSNzV4ZEo4xcrLrD+iUgmVzxVTdfJiOs1zbD4AFi+TBwDIjr+
	 ljG7a9uB5kNpqExGhgiVVsgmGfFxOUprkGZu0vnj31HW5d+1HUaajJ9ML3Qb96/ofc
	 Op7s7XYr8+uBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905ABD5E36C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589323358.32043.9437203044841361198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff94ee8088f8fb334de50b0f674de113f165d5d39fa30fa38e865e3aae69415a
Date: Tue, 16 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765893233
