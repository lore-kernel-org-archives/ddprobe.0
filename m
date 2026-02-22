Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3171D1917F0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771786494; cv=none; b=SSjstzyXiC+0FWi2JaQGnPPakVTRCF7qrpIdOt9WeDkepWGMFZRF3h8Z14bS3FiZ3VCPZt+Pi7b+noGny89lcrXfGrF97eySxLz5smW4IzWbGcng5ZlzOgi1iUn/kSD+58DvhdeWVShuhSCyOW0TuJiV25SIKMoHMn/B5ylWpaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771786494; c=relaxed/simple;
	bh=290LaMRc8LXxahGipKQtQXp28OVomLRAWRi77MmtPag=;
	h=To:Subject:From:Message-Id:Date; b=gidBaUqzyo32aPYiCDGpO1lM3mBv0RwyGfH0wdTMYC0vK3+goCipcZ3LUaG+PImYcYbtKs0yUyn8MsNkdj1G0ALBAbhJkqf1hE4GvLMhFhtCXMjEioKq+46W4C/G3kPx7qweE0BuYLslr5995z6h3myjr1ePASWDQPUt+1DeQEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0k3EhcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0k3EhcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC76AC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771786493;
	bh=290LaMRc8LXxahGipKQtQXp28OVomLRAWRi77MmtPag=;
	h=To:Subject:From:Date:From;
	b=e0k3EhcLKUlW1UnyO0kZ4/BZAHozCYOBwWxfk7m6/Orh12GxDqt3KSUhFPP3JAzNm
	 vDlG0uroSPXyQhLstBFTbddixhBWILwT1bPo0p4b7/VRg8L1adLt6Dj2gLWhjBox7Y
	 Fi1mDGyI26R5mNi5oGGGDh8EEPiLRqa0CHaU/OujSUtvFBEAl+HCdlKS0/Wgumj6gK
	 iyxAZax0Xrwwzyrpf9+1BzF4tAYgHlEjvY9YCHE2Hq64I5RddyEbOrLlP86wyrAYYq
	 FOPs2UTs+b4FLXETNkFsH3ek17P+jktlFLWJRjhtOW5mrOVRWwaKk3X/QPLvsQSTo5
	 7qTR85CDSdbdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7691C636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178649358.26722.12909687296146003992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e491390893fe1dd585cc282c26d606d3e27a1c4a7ec90dea7705c23a1af3bf01
Date: Sun, 22 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771786493
