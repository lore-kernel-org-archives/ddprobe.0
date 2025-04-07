Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38931322B
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743990594; cv=none; b=dsizNHwg/ny/A+i3beQONywriJ0pbN5ya7PuQggE2KrX4exrm/aHmpsK6lHpnhA3sQwLDtY+c+qezb9UK1ijtqUp8GrxiHJX1UyvoWg8Nxo+ND4Ukrks5XiN+XU3GzPjPXtu/STotBWs28CpLrWAzF+ELq7WQWFMTqG2SnEQXgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743990594; c=relaxed/simple;
	bh=W+cfW4vvhtlVuBSl7js3v3bVYXmSRxzmpTf21hboBwg=;
	h=To:Subject:From:Message-Id:Date; b=hFqs3FfpH89j4Ue0XMG+9Q6Vi1iziglKQBVUFxMyJFs60BTJM3i94TTOYztQBc/FMYZ0XGFLN0rnwdMMTh+lyhKfgPKHsnzytNYPG182qmO+K9Fy1j3xDgv5z7rJ9EQ+nagjLVJSiXUypjxmfljwMIpONreRCYjggd9laLzJQnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggJY9Nad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggJY9Nad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27AFC4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743990593;
	bh=W+cfW4vvhtlVuBSl7js3v3bVYXmSRxzmpTf21hboBwg=;
	h=To:Subject:From:Date:From;
	b=ggJY9NadqTmGJ5XNUOFQxvQ1L4aPpEVt8U6Ut0Ff3aqjC/DYdBHFCBXosOVdY3eyg
	 XxoL/cHT/FGQjOprt15jqUVgXaILpveKojwVtee5KHFTYICHsMafUswlFRANh3dnOy
	 v/8SsxHNMbknvSdExYTqwBrMCctOs8oG531uAl7RDBmx2M5fbTfrW0OaCbIxhezfwb
	 upso1S88mOJ9S4IXnFHbodjIfFNqMZArOoFKSEfg+kB64JMeHATCZF4B69jyd04kQq
	 PMUwslCZOwP50h4XyX9xjv9oeQXb1siGQXg7IZmuUwy9H8VmHZ5EDjhFdNsY+O10tA
	 Bt6X7vEIwLCkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C50DC36002
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174399059360.27310.6010425933353739672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b269c00cdcc838b0960a0be80afc4bff51df033c4131f12a104805936cd2bd6
Date: Mon, 07 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743990593
