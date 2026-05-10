Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F0D33EC
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778385634; cv=none; b=mz28t4wanY2QtmfbOVeF3IXSSkQfcBda29ox07M3fwFBvYAgQzy4R1gnYpwNM/nLKAzqmNxWp772kCLjqEu7HvaaAByES91QyXBLeh+emKCUtyhvF6P1Cg5ng5DGvBqT565Oq+kuhprrPqZXHiPHsClBO6HzQ4UrDgJ8e6k0sRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778385634; c=relaxed/simple;
	bh=Eh4Cv4Bsap1ZVtsnwe+tHwg4BjV0fun9bRiNtGHjnM0=;
	h=To:Subject:From:Message-Id:Date; b=fi9xG3YQrmm6FEyRbo5dFk/mMGv+QTt+KOm2RIlIkXPBRy83d5GHpZqlwLc33+ZhYtw3pFgZxm5LqeQvnHKdxL/Iry4hNDOWJ9JpcSHiTgoWpvnvrhuYnI97DB6tb/ougTavlewzsJXC+vukXW0OSDo8blrxUnqB7WrK31KH7Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcBOJ+tJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcBOJ+tJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1046C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778385633;
	bh=Eh4Cv4Bsap1ZVtsnwe+tHwg4BjV0fun9bRiNtGHjnM0=;
	h=To:Subject:From:Date:From;
	b=kcBOJ+tJ5Y/d+hc44oGKbd5AMc5GsOqFMcglss0lrq57iDy49fmZHwmneLDMaCyPa
	 IEdAWJKVSAjz2lvPKPpmQF9Voo2DGpURZq5N42iHWDsDu8IU/9Gnh4HcIpEqQnqn5V
	 2Exa9cXjNwAsjf871LOjHUfX1kjNJBPISl6O8sY/ZpXFUxy30j7hcyCLkULHiXtIZo
	 tDk8IJjyRD7qj4BOUb85b1LseBwMUZC++DpdZ4qbC8+kyI5T/HbrLfAhVLhxqJBVYG
	 ib+x73XDHS5EkGmLlswmYa1Y6W88/HL/WBED+6pm1WadtrRYLJleapr27nmCk912qf
	 WdCnzo93kFOPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B006BCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838563368.26818.12201569209276603992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a48fe543a2a74e0d21ac31ffbb81304b0545a24c31410add3715cb4b36d8644
Date: Sun, 10 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778385633
