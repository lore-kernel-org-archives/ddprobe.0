Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A8732C85
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747001394; cv=none; b=hsj36HiJW8hAVGbXAu3TZkqX0MhYml6xoZ5dqJKQixhtET7cTLQ6U799as9HqF/1uvC1dH6I1141ATK4a47tpEjUdVl6aXn9mugujC1hyHUMJsbdUp64UE73puK3cn7TUc0zgHcjS+EeeClMkjXnkeklC4/tSBN2/ZMvmpWrDJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747001394; c=relaxed/simple;
	bh=kooWBteyLbEn4ouCWWq7GNG0xwbOIGQLSmm9dFJkvE8=;
	h=To:Subject:From:Message-Id:Date; b=Hw63tvaPD8Cyrdt8xhABKtWLfCcMxWsUsK4EICI654dROkrSOS3KMAOXdD/H8s/lVVyN6VWfVE8DABL9UwRy8xdwxu1dfzjy24Dz7fwMvrvdPL9LVp8hTrveeMTvA5sBKvnuiNpvyMdLO0G7igD8+QIXkSVvZUfB8OoneyfX6RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qazDdahh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qazDdahh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7413C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747001393;
	bh=kooWBteyLbEn4ouCWWq7GNG0xwbOIGQLSmm9dFJkvE8=;
	h=To:Subject:From:Date:From;
	b=qazDdahhB43dOWMgIDDNV3d3q2k2w2pEPdWHrJw/z/Km1+D9oCxY/gnfp3towSsuB
	 q4tGc44stT7M9Iah/CtUOmp5p9I0v/lSVhoOaJmNVOMMYANjiiDwLhyORUziSdUBKr
	 WvALGL54Gpto19fNO0b59qef2unbEYZoqfeAFkA6gzsZDaurzt3ht87ajx3/rodG5F
	 LvebntMYBuyMgaEsu46A1LIf1BD0HMT0VSMuFehGBBA5j4z8H7DdXWLVaIpz2QT81x
	 LPoBcI31e8uJR9NxEYDd7955JbViSgm2DjEQglfhEoDLbcTBfmclePsfGTrhE0Y2D8
	 jk/soLxMUO1wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959AAC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700139358.10618.7788179662693268318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1beb73106bbd03402f77d0ad2c0fb97c935a567f463c86f683ad977e57c82d1
Date: Sun, 11 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747001393
