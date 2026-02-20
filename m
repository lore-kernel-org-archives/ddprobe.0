Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D9D3074BA
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771623294; cv=none; b=Z8MAiXviOVlZDGc1jI7kzSpua+i6UcubhuTyjYVbgZ8TzM79ie9seP0G740cAQ7yaCt0QqN1scOZKLnx/GxBmmA/k/25Gz6e7SLVzrgn4T8wxkWpKP9LWFjf12l9nDoA9AeAlJZCgSmCbdoNNX3gQuAFbVRtx7nu35qoem4o6TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771623294; c=relaxed/simple;
	bh=vWTSf+pKXMU7U43JDgMZB9c/QOHe3tMEIdSAqGuaPf4=;
	h=To:Subject:From:Message-Id:Date; b=A1SYnArO1Ms3qByFD/mKWv0QUdq/YafD9UlIkL85WlXsPSm6d9RGls3Jrxz5ycUt0K0N0M4QpbnKn/Vek9HlPKCt9WGQ72LO9GZhzqyopCkewQ+etoIdbA9n0CBE4coGmzZeGuDL6oaRllq0ik37MRX6I01VPnokjDiCNy1P10w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX9AHJ6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX9AHJ6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF25C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771623293;
	bh=vWTSf+pKXMU7U43JDgMZB9c/QOHe3tMEIdSAqGuaPf4=;
	h=To:Subject:From:Date:From;
	b=cX9AHJ6E3IvGNgj1Bn2miehtuHxuZ8W+L30Y494FqaCf2CMg2LLLDRsahqIUkZRuH
	 AdPodt05US5D8fl5zWPstiAIRsmMnUgg3pjeRLvHJaLF5jSLQplJa46koBm3nxEkS7
	 BapRznTkDG51cFggwmqVQM9XOQf0v0mz1UqeghXOPZT8lXyLaahmXtGgDkIibprqI1
	 +rpKqEPMJI1TY12Qt+X/QTZqaxIVOhJT9AqvNtS9r2WVMJGxcDyRBHjCG17rzr/1qh
	 JFThjPvLwRHVxsw6aTvYgQlviXPWg12PF5FeuuP6AHfEJxlkN90etF9adts99D5Xck
	 Pji/b7s+nDXcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96316C5B55D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162329358.15452.6064436486381752793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df4e6e7b793a5dda73a5b6c5ec3deea8329384a4064f7322759f70883425b37
Date: Fri, 20 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771623293
