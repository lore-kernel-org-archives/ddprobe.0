Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E8626BD8E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 03:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739246215; cv=none; b=XOpILHdk2oFBtywpgBgKpL7O31PHgkvK+g262c0vuFyPOGSMprPOoLRp7Gc7bt+HiIztCqjj/bA+9n0PIgvNSG+PY8pLwzY/AD6Jq4MqkCSMqvVkB2WYiA0WZdf23qWCHB0WUcbdSRBjlvH8Ccrd2rXccj3I0fWXa/YTC5X8V3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739246215; c=relaxed/simple;
	bh=YoTugkBQo9+PYKpXL+yPEyz6Yy7BRB2OcmZ9lnsSaiM=;
	h=To:Subject:From:Message-Id:Date; b=B87ivcH99muQxQDiaFUilBz4MqgZWBtyJK0WZJuu2NHE1DfADcZRotHzMHXSX1yJcr9DhN3x2ai0G7IHSXbPY0+w4/wABxRIekrixAawHZve+sI5Bw4vhi1v5uvPDsevdGinMIAHjUIWumAdvtbrlhr1F770iIYqrxgRjzFiJxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GT80piQa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GT80piQa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9482C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739246213;
	bh=YoTugkBQo9+PYKpXL+yPEyz6Yy7BRB2OcmZ9lnsSaiM=;
	h=To:Subject:From:Date:From;
	b=GT80piQa8Wyw8q9PuHzzHWSySLhT1tJI7jQJBthV+fqbHxYd3wPe3DDHpS2Muma5X
	 0lPEj0RL5tBUDT2hKQcUcDAaHgBaXgOz+5im0I7hNRVRnkaf5q5EqJFwGptaauXms4
	 dDpa5T8bSUVGdC6QMH/15hbjFZJ3Pagfu/S4wQJCTf7sX1x3OrCQVgfV5nCtf9DK2W
	 FOwoKR/mV4JUqoq/2jZZ3sar0CtG0tgs1cBhVrCNvKBW5MZWpCrrqPiNy4n0cRsGu7
	 6lztbODo+y7uExArnKz3HI9CAc69h70WDkF6ae8mZdxQC/zuh6kJw7RQ0D2yfDNqtQ
	 /sKq9J39OH+yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A0FC0219E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 03:56:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173924621373.9794.15612917345639070014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d64e4cdd40de6df4859e57bd20605b04f43b69eb8088abed04c46c50405a5852
Date: Tue, 11 Feb 2025 03:56:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739246213
