Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 644DE1CD31
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717876643; cv=none; b=rZyRaTrGrOL+aqbc4Uny43mUkluHKG8rsiLrRM+37TyNriQ6uypS32YOVMndzDllF6sm3wm+lDwmvncDx6F2bxXJg6XUcRw4Cxwy1Oj2ELT3UocAIzPKqB3Ya7FGMXVFTTvSGfGsTmWcA/wyAArIRKHRqqQaTVNV6eI+vR0JIQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717876643; c=relaxed/simple;
	bh=up0eKSWie+uEUkKEc2gB+CInVXSbFUMXwDlxYTkShEg=;
	h=To:Subject:From:Message-Id:Date; b=ZYypKllIidetgEyh0rnwZFD7pOezmLwREIEx7LXMzMoIr9Ku/JsIeqy1J+t4LoEhgsK+FRVcAOIJxw4/k5AhkTb6IhO1CoGt+nLEG3mzUbMaImcQymzFnZFNXTMLb3oBa+QUZxGMcNQWEUaat8+dMPc8++v4jmU6v/1n1Do233M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTdLl6BK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTdLl6BK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D762CC3277B
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717876642;
	bh=up0eKSWie+uEUkKEc2gB+CInVXSbFUMXwDlxYTkShEg=;
	h=To:Subject:From:Date:From;
	b=XTdLl6BKARJb6LfuKKMuFC0jIj8NcE9/7D7GGCbrcOc0vtufZ3ClZ9yrWqqgaMkai
	 J1XeQSXT6EgGwcfy/FQTRMex2WfasDTY1C4S0cTTPdhiImb/XDF6w6z1QUDWBm43yI
	 xoMdDdA0lpEeWaQl7rj+aRCHleSauce6mfaJ4xwnk5cq6VpdiG3deaeS91oYYstiKO
	 FgSqJnY9Y+TBTZwry3BWniEdYhn2TRYEx1HaZuitU6Z9amuswlq/+RC4CX1trNkg0o
	 pyTrKDbncnAYS4VpdzKR6LhlzBrgjpR/KOU381EKv69mOhzaVpE4h3ki/hIIZfRg1s
	 dd5KFMHrfm4cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C07C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 19:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787664277.19970.17838126105888749369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4697e8b1c3bca08d87711c68b26175ce9c82aaf58395514408ba34a2d9cf87a1
Date: Sat, 08 Jun 2024 19:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717876642
