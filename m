Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C3517E019
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733439954; cv=none; b=mCh+/GJk/zWqToOJb2IK05EFJLEp+viEzo6qNnExuPhXuYbuWlDJJROHhDLOqRH2izCNt68zMKKHa+Uvvo62vnsBj0aQ8oL3KnWBTZc+mxjU97MXDMV0q41BAB/WrWpVQ/x9nrOgqvtMZa6D6VPkL5yHBKkeMajhKHCLK5Czeek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733439954; c=relaxed/simple;
	bh=x0YpdcymPbctoVlvj39DHD3KqA4gwzNMFU5gdJwE5X8=;
	h=To:Subject:From:Message-Id:Date; b=Jn76iCSU2HwnCH2iG4Xcy9Yw4aEkrZzrBtDFuz89lE0WdWD2KwnRkLTpo3khGGXuG9j51CZA19BBbyLEzUpCkjR+nrRX8Km0L8wsT1qaMpggzUciX2OB2zoowSOH71WikpvEWR6qylO9rIJa2IygKJzId8HuIlZgYaKU5s/VK+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azIWJJnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azIWJJnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F1DC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733439953;
	bh=x0YpdcymPbctoVlvj39DHD3KqA4gwzNMFU5gdJwE5X8=;
	h=To:Subject:From:Date:From;
	b=azIWJJnlz1YGDDKYS5egyNzoRedCHu1tc/gc2UYiU56WrMMl4WyhTJQBfDSTzcaD7
	 hxukBiwywCy822ZqA5MS25U45i7JZ8ZidY9Z7OVE442hqC7VSSv/P/qQCHyxe4FEe/
	 d7MTFkLrOBeCl56VZpHG/N/FBYFjgpR7hIEHlhp7f0Y33ibJjSkVYrgxSlLCiUTZKM
	 RsmTWTHfBS27ULAco/RN+RC793Ai4xgou/uSTJ8xKdEOSW97iWog33K4PLOBJnNE0j
	 BSwNLxIlZJdomRXriGQsZX+obODPu/Od81TkLxl8kuAKtnyIYeapMVuFvsxr0/VVW3
	 OvUz8HXllE38g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EF3E7716E
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173343995359.1512.4441222240604675840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f465d79e9ded964050ced3a7c46a88090799640ee5684a14f7e64c3b98d869
Date: Thu, 05 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733439953
