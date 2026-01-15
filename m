Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6FF63A7F43
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768497233; cv=none; b=L0yi2E5qGze/nM0L7yrU0EXZyzO4c4pUWVAWbo8nQuL8/IQUufN+TeawXgAMCkVJ8o5q2LYDOSB27TS0gysqmrJdS5qWD9ftREJrdG1iIs2EzvwpqYJoCfKlkWamNE1vQHX97xDAj2lSxk8Fn0l64c9MzUacAUIDiHogdsWp870=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768497233; c=relaxed/simple;
	bh=c2AleLb7raSVEFs1FMrEZ/CJsUf0DNR23rOzEmSeB/U=;
	h=To:Subject:From:Message-Id:Date; b=FfH2OiruhfK0b3IQ9t4QUIUuSazNM82C+9ldCIOQDpvQ4ynWwlOCM543lADBwkDrmHq32UJLqUwHZ6VETA9zRS1xhSSepIYQq29m5h2IYO+Uin35CSrhMPiA2KXeaqlNSTUb6dGxT9yqsOxGo2YQL35oAFTuTnnXpzbju+3TkSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjosdG63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjosdG63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768497233;
	bh=c2AleLb7raSVEFs1FMrEZ/CJsUf0DNR23rOzEmSeB/U=;
	h=To:Subject:From:Date:From;
	b=kjosdG63I1QeFJX9/oGHdPFuzEnPxGcTI8Oh7PyiAQSyg0+BSTQO9dOkqT888swJT
	 nwZxCLVVcNcL4mT7EeNCShovkUDbGbnG8PQ+Ff4JAxWXGkDE/AatgIIIU1l726nNXM
	 gSFx5jgCMhOymvjwaHZ8SogQlFge1h/QZGc2VVxVVcT17106d3OnXlRbhST42qtFmF
	 kjz+VclDGNa8t4LJQLPOg33EsSbpO/qzatQ2tgxEWLECo0zK6KAvoyAEWZxOQOTmiT
	 +u1ayJRRP5NE8p5y0sjJwCoueXRdZD+4EDoiwvLcdOpgy6yVFmfpx5kolkO2cza7kx
	 GzSSEhSYvdRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9029AD46602
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849723358.11660.13084761620243905168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84eb85471885cc9f06713e0ca399700d40b47c2a599f205d13a6959424ad7e40
Date: Thu, 15 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768497233
