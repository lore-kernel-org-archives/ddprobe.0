Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FE5A923
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731252354; cv=none; b=N0MN8trR7Ucr/k0Q7iYv9V9pQtDMCMtK9GnoCiOSkTrT0OM2zGAgO7HT6SdxBlLkdiUZfzbfjdOvWrA7VzriYhBpEpnzRKUgC8IAJuYkfO1qROb/XnjJzurwaoClvWbytgRMG3oy0rapgCUskt904vUM3Q9x91Ul+GNOT8pKUTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731252354; c=relaxed/simple;
	bh=iZTtZYkEOnPv0ZLcHE9vXXNSMFScAFJhzZ5awzbHZgs=;
	h=To:Subject:From:Message-Id:Date; b=FuUhOFOnSTH43POObfQbr0y/GnTpz6T9zd8vA/HwtEHu6kq+NhVpkehRwMC5t3qwNeLiqj/OG671ipdd0dnf024GT/u3UWlwYRL6Yc0DNFj4136QJkLmm4sDKhSiPwvuvIJa4FtlRluenK4zxYa06jdqxREV4DVco+gKaMWPtow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsX8slCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsX8slCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4874C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731252353;
	bh=iZTtZYkEOnPv0ZLcHE9vXXNSMFScAFJhzZ5awzbHZgs=;
	h=To:Subject:From:Date:From;
	b=CsX8slCivBTUqLeaB00XyJ9C/1Qkqp2nL+0IUh9RJkgO4bd7bfznbYFWK+edP4S8D
	 jpP3a3p3tP3TcQAWg/so8xWGZH6kxQCO4n+jvEIrxlvg4bb1Xtf3GeiWJ/zKeRzirD
	 HuXE0KdHV0HqRW7gRWM/MDsor77r042CFfBNsj0gBa9B/MY7JPVehrQzre1fILIovJ
	 8Qk806iidvQKLcsgvz6VaIKXdt2x48ltHHine+TcWqRHXEA1wPU6GrmpPjnaNde3Kq
	 MsxFk6ThzTU9q6ZWcrbuJ9C/n/qORA2jw0YTRN+rR0mHC6XsnRIcADGrO9jErBsDOB
	 Mlz75wZ3JJ6Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E08BD12D43
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173125235357.25137.3527606911974942363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6869941b4b8d2b90d88132bd26a56315b3dab885b245c19e6ed5833dfb9553b
Date: Sun, 10 Nov 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731252353
