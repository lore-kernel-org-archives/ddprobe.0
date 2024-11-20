Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E344145B25
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732071954; cv=none; b=Qv5zmn3Z7ktQ+Pe3BwwafDXTjbhmGJXe1BVYu60elpcvYSQUWAr+DB7684HqiN8tVV07HPe+ELPB/qGP9Ov9WB0Oafay29ThjPuowK4n9VbHVyxPROrHnV6ERtdbfkh5+ArkX9pVrv0m/Y3GtCf85NjZThv6G6Qx5/KgaKGNx6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732071954; c=relaxed/simple;
	bh=N2jm2iDi3tY0MI/COAA3tv3S81SrR375hx81G/dkVS0=;
	h=To:Subject:From:Message-Id:Date; b=sJzGgocB93yvBmqIQxhOiw4CD1FO+Rc6vGq5msGT8dekWIWHBW9AXOK0edTd2v2Dlz2X7h1pzyT3ZplzxQThTqkLnHEoem/gN6K5SToYKLZ5yxb1vc3nxAsy+hH/HGS1yIZWnNanEmDqFevCpdATyyKNIL6vvdBdZFrS3T/KTKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rmc5PT0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rmc5PT0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BCDC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732071953;
	bh=N2jm2iDi3tY0MI/COAA3tv3S81SrR375hx81G/dkVS0=;
	h=To:Subject:From:Date:From;
	b=Rmc5PT0sCT2xM4u53r9ATaayIt0BARqTL4j2+6CmGyKHmcykXAnohBdZW8tg87FHL
	 8DoH3nZlzSOvj/2rJ5LuDMxn4uO2R/1e43vUEMgYEl3IiAwXI6xEba+O5h6LFaw538
	 U1SnMXtqzDpMORYqnYRDQp+TkUQmc1mpz+RyqeBSPWSE9h2E8D+4dFT4+LvF9mrvmN
	 3OMozSMPQ/QSbO97NPBRy2JKQUYfwk2vPuIDMaBkUNVElfEePhKIC7/bRkyxtfEgqN
	 /1OPn42seFheLWRWRLXD3FeeNfP8bUfQNWXEUL0dFCahT+va7oX3c3ybpFvkZgSWMw
	 Oy+6nUi2b93rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A2D6E2A2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173207195357.8456.8441806489795414896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32180ea843a6a8225f0a6143aff1693bb73ec0952a0d5732c78488ca85bb5c29
Date: Wed, 20 Nov 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732071953
