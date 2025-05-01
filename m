Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A7D174EF0
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746104994; cv=none; b=W4YTWJFmjuoNbGtInvUejVcJeuEbbnLlCZkZEeNH7D4eQSZM/ZPwhjmyhxdtGBpSrlMFOV0qQupTVsIswXrsZTtHmPQOai//i8L2iES9RdEBVFqeeK3mcd9gu3H6CcpOQ83ix+pWvfU4OpFlNLvUjMvaFWn9O6W8v9GZ6a4B57c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746104994; c=relaxed/simple;
	bh=wFXeX9Nv1a5CqzY3EN8KryVn6IZvYvyooDiVb/IZdps=;
	h=To:Subject:From:Message-Id:Date; b=lqB694sLXJXzbT4GUqEy/LuEYMdEsS1PDE1kZbCBwNqhGa4TTJ9HcciTFJHR3GKb+bpGkd7rcoTOl9no+P7rvndAl3byJl8TPLJHsVTQMqFhKvIc0IACTvP6JcXL8rHyeEdr56YYNa9iYJGvlfXq1QJkflIWeQIFe+TDB/jzLSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N00QceZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N00QceZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A105FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746104993;
	bh=wFXeX9Nv1a5CqzY3EN8KryVn6IZvYvyooDiVb/IZdps=;
	h=To:Subject:From:Date:From;
	b=N00QceZBHzdfpi+eqIRz9CF4QKeAvEcZvXo9sO+EvCm277xW0SdtRyJuo/sVProbD
	 i/BY8HiU0SbkexRt+zcfY1yeHlb4QzCLag0Rs2n6wK55vTTprRVr84vRcmaenJM0Ph
	 VbtYET9uxjT+YJtx/nF0bAsqyie+0FvCfpU3uOU3NgIMlAAW8crLgatbTQZVrC2Xmd
	 DokO9tfVcjIUUJQyyBR3c+y5acD4grNe2A6x1NOtw6KfbYDz6eUExwFoTbpmQDqdn2
	 QT1QA+vcHbF3Al80BwORW2eIVMEO2pxduk/IoRgnIy/t3v423olyO+Tvir3cd9qVsz
	 wbhEjlYN0C0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB6C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610499358.15435.2386260658838681943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135019682726b2aebf4c48e606353c964dbbdf8a44c0a3b2287e4859a2e5d5a0
Date: Thu, 01 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746104993
