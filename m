Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0665C2E889C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773033894; cv=none; b=q0jI9icS88g3m3es5u1wZf8IQHYyAzl3dG+xLt1V3R98X/UOc6SwsUoN6T5CmKsSuPf3Bn3EnMt1BKd18NX8ObSSzyDvAgTPiPBIvKxaMnHt2mOrIFpFew3qfCBBo9TvhL/u7fzVlU47byFgP3abcZQPC+oTXMxP3r7zmo3QBjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773033894; c=relaxed/simple;
	bh=lvXdhXPppDrQVkpoFF1gY1fT0+QINuEDs82rK62pCo4=;
	h=To:Subject:From:Message-Id:Date; b=mj0ae9tKhs7Uz7YwV4bIpRTn2uTL64oe702fhCbg7beyfTxt9PGmkM48u6UM+5+1G6jEV+1PP4ZVXgfADXUtuHoQwV6rI1x1JRZryUyRKS03+PeaQJevE9S40bjSri9H8X1AMc+ef7fef44Quvgggj/n/9UWHQ6WWcycFhH9pXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T41bjBY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T41bjBY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E5C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773033893;
	bh=lvXdhXPppDrQVkpoFF1gY1fT0+QINuEDs82rK62pCo4=;
	h=To:Subject:From:Date:From;
	b=T41bjBY6sB6FsNODr4ZkEoiYi323JAwGe0iecf9s9h92189cylJGWRaxlmijGG6pW
	 q6mycOAq6iklIYwj+XlUFcaUZeh56FcXUnFCwDhHTWkK8+7tBpMbiGrWxvR3qrpztB
	 QDJ5hgcaBZvRz1hx1KX7j7GMJ2hdYCkJNwgwPN4zqf/5QXHgGZw5HAkms/vau8oMCn
	 Owzcv0pmh0OqTDsQwgLJix7Kjw0gZoAlmos8+TFHgsXIGfyYYguY1t7M6SySSut7/7
	 AmgtLUAIs8OOTBbgc0yJ6QrVxMA65PpAA7HkH1sqk4UGm9LB1yQ+Jzon3LWCjrg+0E
	 mAEukAdqOQWRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F096EA855A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177303389357.27128.15332894524441132730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f86682ee82ed48b57c6220e3705d5b7570540e7a96da385603fe23262596e7e
Date: Mon, 09 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773033893
