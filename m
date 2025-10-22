Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B4B32BF48
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761160194; cv=none; b=qHfF2C7iy8MaGmWYJqMWRX947nNzeDySxVsWEuNKJQK6UY8pkqwJcLgBjq9wfSx3JHibIlYoI80v83kZGJnTdO4LgIragnNix3FaGnQl38b0EVwHzjRGkhCyZb3w8IuaQ9XR4HojH1VTwxnq/U+sLjPRU7ZUbGH/x9YahZUYwsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761160194; c=relaxed/simple;
	bh=33Fv8f6qcaQ4h+KjS8jdPmPRe8HxDWfjc3Y5peypQks=;
	h=To:Subject:From:Message-Id:Date; b=rJpT67GIIjqGgrUgnqJ2R4KxJ+gQEyMq/Uj/q0YKHpCbI1yMI/Hvnwck4YdnsTlx9qKyZGw9ifHNqAWCNEvezhmwxye4Hpf1eUCzU58HvFpObF1y7MfDHlHswGdNYA2OXlTTUVFg8cO+bw9kj1f//4adj600DspB7nzOqQc/Zcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHyZ5vef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHyZ5vef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761160193;
	bh=33Fv8f6qcaQ4h+KjS8jdPmPRe8HxDWfjc3Y5peypQks=;
	h=To:Subject:From:Date:From;
	b=bHyZ5vefaGN4zPFcNBl9hLOcx58be/gTVDSb0QHjE4xu6Ko5KNTahYcV9udRCnEU7
	 qxgkPR37u/hexO1lzoMuJsRnGDBIxauMIU5NUkxqwN/tNEc42Rx9f9J+LAtzQ8Lyf3
	 EegET8/im7m667X2Tbpolsi+37gkSJkpoEZhwpdeaYMlquc5iDnjbwIfYPy1F0staV
	 I80XCJALTNL6vGbcWVeXqSXMWh6p1trQf3svqhr8lWCp6Twv6WEgzhPehEQyVM6bZS
	 8u/PNeT4/aSZAHVrRlAoznNgnP5CvxOnB+p5hFWS/c8HnRfTtzgf2jxNZ05cAIaUWv
	 C4gUaTk6fpakA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F4CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116019359.15018.16496222822801199305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6b05e914778bc69db5b244b85d5d69dcb9f521489e96ce5d99557bb302496b
Date: Wed, 22 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761160193
