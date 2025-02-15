Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405501624D4
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739661534; cv=none; b=WbsJcA6EV12tuSApO1zpxDOlxUZxHdpnaryMM3ZQ98nHmU2emNhcUJHIjoCqQXJvLpXjEz4iULyLZQKME8gUtMmLSZZuZc3dFHnTFzw2fUTqdYPKXxmVM07ZeA9+fkj0RSMNxtwEo2Z9wFsAdu/UdZQBHGt3/0cI+G5kLGHMyZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739661534; c=relaxed/simple;
	bh=3f1BGWZfJzShbI26+zNJQrI9zLIlcoQrDtSVSs5sAGQ=;
	h=To:Subject:From:Message-Id:Date; b=YZi+KavQeYIzXcVKq9Al37K2hqOZ9k84E4VfOfxGeldWwLDLtjXffgVnQEkPKXWkP8tomd1jSbAeHeS7OO/Zgda9VKwPeIiy4Re5QG32KYqqh5i3xp6ZoeW9Oi8c/NtPaMcnNl07HyT3Pc9ksF1JiXfDfHGkv2JYgA0SVOtAFcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZbf1zQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZbf1zQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94F2C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739661533;
	bh=3f1BGWZfJzShbI26+zNJQrI9zLIlcoQrDtSVSs5sAGQ=;
	h=To:Subject:From:Date:From;
	b=MZbf1zQScoG1Itl/nY7n8/vWCdRCNELGWTLWwFCwFxPTa+jny2Tp6yGkApR6w/4V3
	 NLvjJfGtPvABmDT0WY7rGtfj/xfkSL+2EbYv6b+c5mk9wtGSZ8JxcGcN8uvJoogJOs
	 yUvXakqmzfA3KVivS4ubCjVEv733CQDDUPr9NosMbKVhtQImIuDdWyp8q7diSUciAB
	 yy98JXIlr71d+6XabQPi6uPPVCbYcVPVka+YFh0gcYDJDjoKBNE0Fx2elkxq7KTpOu
	 uHX+ufkoA++L4p4CQJ5fPXI5kgWV8I3giiaEvpjz/6HMDUFvPH0GMv/15/ZCgBwiW5
	 BDe//1uKVEl6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94689C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173966153358.7956.9110427201228362860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60904b7fd967496fabb1d7c129ecf67f6084f23a8cdeca51d3406827dc66f78b
Date: Sat, 15 Feb 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739661533
