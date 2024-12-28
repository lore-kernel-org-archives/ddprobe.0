Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3404935974
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735406154; cv=none; b=Q/TPX0GnoQoWqikXSW0A0rAPozt+t6PGv4QCGwd1Rxt+D61QeOz5HKZWkp4g+XUVdcWZqaL7SyxgJIjxyDXHtYNFWh4PmK1THXp3m3bXNyEshfDg4M6bv4AzJSNvLH/6e0LSY744DuUYmI70jZlDgKUjqAG2gHannnh3KFNa9s4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735406154; c=relaxed/simple;
	bh=rdIt28fzmStW6z/loZRlIOD5hTvy9eNjN151AP0s4pk=;
	h=To:Subject:From:Message-Id:Date; b=D2Dw/pxLKvRD1fxcUaJfskwNPRsF7eKVU4BxQjaSq2PCIb0hI7q+l2XfxTwvMQOeXNWJgTMnt+h9WyCBeHh19Kru/OdwqKD4bUBi0xCJAOA9+bh+wVn7w94Sa9NzKrtqL4PdEGYZUIueuATu05zSxR6m1SwqAQZcanfjT/sqFbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbMC7w8n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbMC7w8n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27AAC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735406153;
	bh=rdIt28fzmStW6z/loZRlIOD5hTvy9eNjN151AP0s4pk=;
	h=To:Subject:From:Date:From;
	b=XbMC7w8n4besiHA4Mymj/8hcxlXczEeiD0b4EQtjpwheIN2Irx9WKWfhvhG++NvQx
	 SrZD+CeCqa1EltuM6DAhgYBSEOyX2y008qlhyFpeLBvc3OG682zsCWIu3aBw/cu2iU
	 L6/WJIKTMihTE9uDlbgN0HZH8O1TdXFxnuLM0+2jCPSHdhOPs+AnJL/zLkEC84tICH
	 p89xofB+JY5qZAKb/de2sZWuZmcDTmmF7C1B/72YlP+G6ij4KIvo67+C2rQe8RJsDo
	 fs+nq2UpcWkIkSrzy9k+eQreZhMBbCyRpEH543UsgKtkUvajaLWGMalP1+PZ3DfYsE
	 qRRq4MXzuktTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975A4E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540615358.19592.12381048349776610234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30ab30cea518867ddc5c743e578f355f84398542b0e3e66afdfa1f90fe1777d0
Date: Sat, 28 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735406153
