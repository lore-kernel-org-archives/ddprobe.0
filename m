Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7822E06D2
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755041994; cv=none; b=bU0qWMm6qq1P6djki+pU3CfGFBwX/i07QKPevuZzSvgKY82yl7BYy/eFP/3hRIZUT7Fq99PJ5rslq7eIW+lCFRx4ScIHTKOHFn+Gos84InXbLWBCHyMTkEPLUfi68HeoTX7IR2OhWjfhJPYjDNXbUKeetOknWhF30iVXj827phw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755041994; c=relaxed/simple;
	bh=Z0xEn10B92qH9zCbrhVUKrcDP3hWAWiFtXCg0hHb+Zk=;
	h=To:Subject:From:Message-Id:Date; b=c1NmD5IK6WBua+IM3fCpu/n7AhOsvroGrpPGzoxo31W9T4SwzVOOiN4+E3GXwi5bHoDpTANeCN6OLLTNd8Y845zOOk+m/f7X8pxOaZ/a8GCoZREJJCr53SG4eR8pZ/iaRijZ98a7Rrj4GCmkXEaF5zUKxUr1rNj89qdhLA8HNE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKslCiBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKslCiBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0465C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755041993;
	bh=Z0xEn10B92qH9zCbrhVUKrcDP3hWAWiFtXCg0hHb+Zk=;
	h=To:Subject:From:Date:From;
	b=JKslCiBoKpuzA7cemvmtHH4i1Ap8gz0oIBDj50wfGy6vDFNSLB1GzYui/bnk9MWKF
	 mz2teAwS256l0pQobpIz2IXHrfoV1vohotBmyl0/uCO/38AAGmoaD0G/g7Q6ILrS99
	 2wCzxh/ZQQCQmHjROw/2BP+jgwTQMnQ9C0Pknqf+qB4erFQ5jIHUkwUsT4ybaSjvPD
	 pMMKSireZtz5PO2nf1Z4pUWhIHk8yDWQlqjbNkdYtRJe1UsMBvWjNU0xlTTJkfvGYA
	 8pPSS6gFUNbRsgHH+/HHG+nhdJHJo5IPkT1VGEGV9X+07sPLVcuUGMwI3hAUzanp9r
	 NqjnywhsPbSSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F358CA0EDC
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504199357.16037.6964407663198623854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e4858b8ea2ed08745e74a9b0b4535153a3242d0882d8c595e13e0ecf67607e8
Date: Tue, 12 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755041993
