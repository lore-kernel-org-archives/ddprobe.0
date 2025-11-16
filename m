Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C23A63B9
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763319714; cv=none; b=i0FT+tKNzwz93zXwLsv07jeHLRuA5Nwcu0+pSvgpvMy3wRNIfMvWXJKgOp1r1aYXByWzoSvu7tOsv52Ocm5rzDsCI/wBU5PtD28I63GJZgRp7RnqA77vVmkGbM1uXXM77gc7HaoDNzQhcA8RBVsog6b6ZakpgO3rZ+2A13cH9Ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763319714; c=relaxed/simple;
	bh=6eVS3jlXQhjJ4SXNrlZwNOnQ0lbKZIR37YkKfSp9Yck=;
	h=To:Subject:From:Message-Id:Date; b=SYdwLLiA6ZgetTG8qYoD2LGESXKTZh7RX3Q5uMCYkDxkSdx2hlNxhfbwFSJ+m0a4BeewnU7dD+GVc2LQU2171UznQNCTcNZAbPOhW/1Zrfii2oe36LghjbVoSqq2h8uiooXyx169s61vnUsxBsKU7l3l9n21mzoWfmicVEWqzbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXmPlfDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXmPlfDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03B0C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763319713;
	bh=6eVS3jlXQhjJ4SXNrlZwNOnQ0lbKZIR37YkKfSp9Yck=;
	h=To:Subject:From:Date:From;
	b=XXmPlfDX0Rua1aDH3Oj8UYN7g5bXrbxsN08osNQI6K4+WJdSbTU9ge10k0pgTKv5g
	 2aoP6DptfyVtJ89JKGY4pTJMwUbbLozKidj0qMQZ+J/ZYdKJbcHHwZGPDQF511uI8n
	 UIdJ3awZ4bU0VnEE49JBBq//kOTthyIPHJqE5bS5g1CPS76YzjrHTrKK8tHHdjEhPa
	 AMTI0VT9YntMUWdB87l6VcXJDqGhPYXAXPZEZWB4fc1QXusUPIP1Ha9O2T/GJwnOpB
	 ILyNEtX4UO2PA6g8U1ZdskTx3QQNIcF9SVZzQANm8d3YuXQv05oswL0WuUftuMgxh5
	 sUhz6h7eazjgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F75CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 19:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331971359.8734.10842113134841225799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff42dafd763424e69a615f0ad4e6ded6a745a40429004b9de0da42b80d84a9e
Date: Sun, 16 Nov 2025 19:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763319713
