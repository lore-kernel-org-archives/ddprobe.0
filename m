Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A2661FC7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720863623; cv=none; b=UtZBHPW5QA6kpG2BGN1VvoxRtnhsXxxVpXFusaEHvpb7Yg7c6Or+zjaP/TH6z76+aUijxWhU1BmacWp5XWMXTbDZrc6Nj+wZoEL2lAK26rPdgnluFPTw8BVGXLEYPbKzzAhE5ID2jCe+TU0w3Sert0vOhCnfgDfGjVfLkvfeDfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720863623; c=relaxed/simple;
	bh=GzFSNgauWKFctKPBHNIjwteNCBx6+RT7y1WtcwYh/FE=;
	h=To:Subject:From:Message-Id:Date; b=RuaLO7xYjAYnNUZak0KiqZnKtxJyCODpIdhWbxiiwCbzMtOu8wNgIQjaES/yF4svlcBkUVYBMt/nV86e0nNA+oe24JjRu4WLvOCejxwA2J6TSKLZMox1qvsxGv8zatBmTmy4rzMMEYjXBHtcvBlZHXVmShb6/aK9mrrl3Rv49BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLFTv6XH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLFTv6XH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10912C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720863623;
	bh=GzFSNgauWKFctKPBHNIjwteNCBx6+RT7y1WtcwYh/FE=;
	h=To:Subject:From:Date:From;
	b=WLFTv6XHuwfui0pdT8Y0iHee62/hoMQxRfTtV9ar4Ao5zmKELoAB4yr3IQI49czkj
	 rj/GZBEG1QaW/+R3EgoVXeVnK0QumLRVwdbk3WPYRd8wkyFBq/ymiewcjsUfv102Bm
	 PfAMZ7QKXRHPlsxvqTnikb5fyXIbhBnPD15fDiztHvpD2ws6iMu95I2ielzBhN+m/4
	 x8qt8BOnWxQZIB0Ycgcp/c/PXSL3pKwJCr0xDa6DSo5CmiEcMk1F35Bgt+klHdjOu8
	 Rr52Vl5+ELTQOs8shVRsYsW4YGJKOK6SWGHUPFr7Sks5bdi4BLK2+FyM7HGKyXsnwl
	 kWHBGnlrM+cQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE1C6C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086362291.32651.8135812837967531826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cb3b906ca633cecd86f77d070c4d7c59b0fdd7b3a1d71b92f8376e7f79d2d78
Date: Sat, 13 Jul 2024 09:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720863622
