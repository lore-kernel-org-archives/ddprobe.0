Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08218204C36
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761253194; cv=none; b=PqKVFpHUCc7WXeaGXqPvycnrsFG7HspQTKM0Mt/vM4ZuQAuOVK4f8W5zOXMV9fFU3Rk70Wqbsml6Wq9orA4ZShv1uQoxNMSEGMysuABVeb5oYze9cpql4ZYZB4oYHDPGRQT7wWa70Mx3G7Bfvcx3XgpBbO9UgyWCpCLVWNPZy1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761253194; c=relaxed/simple;
	bh=WMUMRL1gFEVFMAvVfm+pXsrQlgsOq28+5P4PZLLJt3I=;
	h=To:Subject:From:Message-Id:Date; b=SPfaId72m6eeg7ZZwUHVfQ5XUWuyhdtfbHVec+heij3B8rp+/JzAKnV0Lpv3o6npuCVLzj2SIRCU6zIjtQWhZ6bz+VpajnkqaWsNhSObFLkP6+w2B7g6GdrrK97TJZV25L2aGwUNn/+CMaNvvWZOEEIp4Nhug7NZ3hhEqX71qMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iw6MQJ71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iw6MQJ71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6034C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761253193;
	bh=WMUMRL1gFEVFMAvVfm+pXsrQlgsOq28+5P4PZLLJt3I=;
	h=To:Subject:From:Date:From;
	b=iw6MQJ71rVn22lENkcbYTwQlDqcVbysMvjuVWd+Q9qpvrcsJGYa363BhXLMDlfLMX
	 VyDayaL0DFS4ku/NmXc5JFdaZC+OCp/AjYLZkfIF9t1rLetB8e1dJrOYvI8f1Tpdmk
	 WNsAOD06vHB3HN89yQOA1Gue73KgH9z/K5ycHhRyFL6YHs6MvLKd9WmwWpWB+zTode
	 px+rqowBkdqIUPnCqZx6A4M6FdCxYZHGQwlZSB5uVnFwofegclOdjU/XWPLcweGRRn
	 6UothR4ZMjNkLH9K1Meje6zi25AIfg2Qjj5V+qtYtXmDk+gxN8hElEI2jyLPi31IRh
	 5hfiXurIHYMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E4CCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125319358.19388.9049993766429521177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c64d8b81b3d5e4b28a9a30a4efc986fe1ec383d948d5a80d33ebdb3b1eaf3e
Date: Thu, 23 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761253193
