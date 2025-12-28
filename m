Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4536963B9
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766889234; cv=none; b=GwH5OCU6qiHlK/A6ctpv9KG++vSBpnzTpuIoExxMPic7T81X363eB0svkae5BvE/pOOyItcwIXNCX3xj4FwQ7MCirn6dA/YhmDvvHrWPT7zluEnf7j4NOEcIvwf2/0w4bcSG6G7/VPDeZirANJjaQtmR3xqFv5hg0QoJgwHp5v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766889234; c=relaxed/simple;
	bh=oXV89lJgpOaYpfcAo4GVGymdJzTu6CCL7h1PifPnsQI=;
	h=To:Subject:From:Message-Id:Date; b=R85sFrJoIO36smaygWICa9JJ6cY8QLh1lVvnF8pWdwXJzmBkopxRm4SNMdpBpUuqOYC9yJ7doYMZmGIGD8CcoO5XuWaFj91GMQf5bFFPJ/7V4Zbj2Cel4O9jXMAZkUBCUekrJUMMESZOThPWmmpgs15zqeKCf7dhOGZGt3JuS+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRdmB6vm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRdmB6vm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC17C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766889233;
	bh=oXV89lJgpOaYpfcAo4GVGymdJzTu6CCL7h1PifPnsQI=;
	h=To:Subject:From:Date:From;
	b=IRdmB6vmK0LL8b0rKsSdPB4yjD4RnOPp2g8uJqkZKl+bT6TvU+XfpudSm/u7rstqn
	 tDNrPpJT/5Iy1Rnt7BQ4BD62wHzxHQXHiepBTLpl1PkmPC6gpzH5cOd3hjwhNhglNB
	 NxbtO759nOyB18WNuQOIMBYTwczluBY9NLIXbo6NinPwpCX77n7OSQH/hQU1PRUaZz
	 5LxyA/2quLZ0nUR6whulHUG6oCKSezhBQVIL09+JfdT9tRz/9fiILBy2Dtub1iucd+
	 xvVJVNk5ojlpNqQ8QSYOHVU/MRZjbAJemjht/6nRBdAr5jHh8YImT62sSY8OeuHLct
	 /PP4LEiw8I9Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D82E92726
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688923359.16595.16486363917700033083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17807b35cbd903de3a41228ef53a0468a1319e9b268084177ef4c47dc80eca64
Date: Sun, 28 Dec 2025 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766889233
