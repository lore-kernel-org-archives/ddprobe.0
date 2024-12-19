Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBF21A071C
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734633354; cv=none; b=SPfmZBU7jzMVNyK6q0QLB5K1YsABXwP6AAX//wIjMUoTTwp8lO8q0LyHDEuHiIsW0a4J9TQ7kEQUVJtjterKElnxVd4KVvLf3wr1PAZhOHwhIv2/2fnhMSVW21l1MeZLQGvk9zgB35HQP743RRArareKRyZ0KAeIU0Fa70andIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734633354; c=relaxed/simple;
	bh=jY1sD/8a+oz165rrnDqQiUjlQdxnT9KEJLhCACJMmcQ=;
	h=To:Subject:From:Message-Id:Date; b=McNVG8TLbM9y3uCh0OhTmzSTRSABqIpNznyBaSrNJN1t/eIgl9ub/X3G806JRUP62NDEI6DEcsdSAkWZeG/dil/VLQ70SNrjrgGOqFnprcmGUquEKEg41iTLD9H39+MR71M+/1l+Kv7VTR0F4hghcdJLKLXBvs8LuvutzgCzg5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qD812Vsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qD812Vsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A7DC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734633353;
	bh=jY1sD/8a+oz165rrnDqQiUjlQdxnT9KEJLhCACJMmcQ=;
	h=To:Subject:From:Date:From;
	b=qD812VsfMPK59rWZAH/Qtv5d1I2P2uVhcNAHb6c9Z8AvZUOLpJ93o5oSNB/AmDDXH
	 lcs8L93QRBGUeI13YiyFnj5I7zyag2WS2XU9xDc17WDCSd7nZP3fkFxLnmqHG/WHC8
	 KJOd0aaQmzd6CdQZ8kETnij82dHFSiL2Ws7pFZ59PsBvyp4QpsG+40e37f1t1+aJxp
	 +LMEbS+b6NHRd+FZegA9kJTbnATSbvRj2vMKE/CMOBmx5HD6MGqAoDyBkhjbFdGsh8
	 Fe4LYpH6Lq/zPk4PQNKb2JtMfMVdnPmqBG6weuw8glwBfXWEkPzx3NU4ZsXuxl31/k
	 OTnHTivYoKlAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169BE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173463335358.27913.5524773716651687221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51241f4f36463627016eddb63e66c239ae460526ff9d239f3ddb362bf75ce2f0
Date: Thu, 19 Dec 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734633353
