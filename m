Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2CA2D12ED
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778655634; cv=none; b=G4tgHeUpzAZZ9ALAng/ihe6HTu4vB/U83+xB6h4Tt7QMSGUYLWS/B5d75o104Od6wKeuEQS4OGY1BaA/6z0GmtPvmEkxgFDUABfCPRODyH1Cwfntnsor52DB0LvsAJ5hPbI5YetXrzoQ/YVpOgRlD8WMv8H5Go4EdXKVIX6GAWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778655634; c=relaxed/simple;
	bh=xycvaRE7n4NrLmEZGlzpT9eUUCG8QrGOMjtZWwkhI0s=;
	h=To:Subject:From:Message-Id:Date; b=Rfd+FtPPO4y4A5mz6XSH3Czq5cv/sf9fOr7Vu1Yi8ZwQksgsWdfiw2wKLaX3i2ESz6QWM+K9R22T1t5h47okMKxgYQa70GWzune5OzsUyHXhqUfciDW2gghU6kgQ/IJ80FQUEIq6A/cTsqjTkn/VpF8hnSg5TKAYkPUeh7txTCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMdtiyGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMdtiyGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF3EC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778655633;
	bh=xycvaRE7n4NrLmEZGlzpT9eUUCG8QrGOMjtZWwkhI0s=;
	h=To:Subject:From:Date:From;
	b=bMdtiyGLMMXtxsRyDh99SeV+QybGPyL0TB1lraZKWpSN/CmDqDJYLCetjA5Z8AQO0
	 YFJIIO9CTiBDPI5PKfTlIiiX81XNXeEV2jtzma4xNmBa1Ve7PcqA9OkmCJQSBXvd3e
	 bxDldFOvb3YuLXEc38gitmkTUbPyOHScMct+l8TrMktgPn1yeyDkoqpb4SJk4IMrai
	 S2oF+hpVpB4cRO9TnbFwNh2gHkzpSRqbwzuuU06CLQIOgtqT+yICKry2Cs2MUMAmC2
	 k5VGf8uRa5ldqAhzsoHyinKL6GwxbGGdS0ReoqLiFBUm/xO99iPanQuAixCptDbbkQ
	 uOc7o1gdEBTmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3E2CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865563369.10663.3473905880869081170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 927d3b8557f9685e7073ac8111706ec077bdfbaea31f207dbff735e9826a8cf2
Date: Wed, 13 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778655633
