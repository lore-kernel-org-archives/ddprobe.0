Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B354C98
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748078994; cv=none; b=Q2KIkyttfico12Y9cmYuSGg3Rde16TWDasN6f3aja5L7PfyC+snmI9dUKJjOLbtTg87ag0lr4jmnOpyDTaue79WUt2Bcl97VEdjydwIXx1d4zGTcSl55NaIqFn/hDaj7V9eFVVweHE3n1gHwW8cQgOBy+E6czvNFYf+xWJXJqcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748078994; c=relaxed/simple;
	bh=j03DfBgsaAHCATsh/nAieT+qLsiiDJiiwaSz/3MJAAo=;
	h=To:Subject:From:Message-Id:Date; b=s5LuCgWV96J3JtcU+M3BYOsPoq0JX5GZJG189kx5Ok0RfkqdBP3CQ3HBGmYI1utKITgjVoE1qlD0mNF82msFn1DyCqGsHiXTpECJQOm1hY2Tmlf5k1dRjtJCyyPjPAFUoywFvKj1QHMJ5E64VTkyhEMW8KQBzco1vgTHp/JtOpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZeLYN2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZeLYN2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748078993;
	bh=j03DfBgsaAHCATsh/nAieT+qLsiiDJiiwaSz/3MJAAo=;
	h=To:Subject:From:Date:From;
	b=ZZeLYN2/+T5X8328mtf/SIGaTMpljO55Fh3pzDAiC5MVNdmuDMW47O8HcSpxSyFl4
	 zejwJ10vezPBs8/QEEEbjlOy2P8XA3wEFUBGe2ZxOL0QJ4/MaqqsjFFv6gC+Bu/5jl
	 z/by+L5MnKFtMoVwmKvxd2Q1ObLUTS0OzTeLQ412mcY38gL6JsZAHYJI/Vu+aFHL59
	 +VpRxnh1K0gdPZr7h+G4do6gocb5KibYvWAC6WKm4tsxIiz0xFxjC/zDi7Wij/cDm/
	 ICOOljOQvhxR/B4fmg7YOTmyNj898KD2qdEeN972vOO6R0/u49z1Ua7n8VTgMnewSZ
	 vu3JsV5Qshqow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91021C54F32
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807899357.13515.8885584521496803139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6dc734070f3107862dcbb7fa8930b84f8c1221994d1d05034950221150853d
Date: Sat, 24 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748078993
