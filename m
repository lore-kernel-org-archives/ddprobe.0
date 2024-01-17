Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E548C219F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705505897; cv=none; b=B/A+gVnt5OMQbd7xHLArWVIJTgOwU6hA3Oa4sqTZbKi+RMA6f7oU4Gl6Cak5gCraZDoYSoVwGmKxOEZkyN7kDRIwEt+9OPI39Sir0C31l4sunG2zLRObShZZ1k3ouTS6JKvp3AqOCgb2Jh5NcVdNEDSt7kKZOA4LRrNPnN0KUpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705505897; c=relaxed/simple;
	bh=fxnTtYFQkeQPn3PUdu5pz7gRId51s+CzeSfA7HslNfw=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=eaUsRozUjdMNZk7AEdDHwS0qhpWRPmwbP7GMVzAX3XwWhCV1sh/hgBXBuFmO0DKa4Dn8U/ULYshyXSRoLJNH3cAXJQ2OY0YDnZ1g0S4qipgo92pBBtVzKkD1hDfwEevwdBz/Z5QLJckbT9HjkBRH1hRNZvrThs5Fqv4YQ6LOWFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sjqj9/6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sjqj9/6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD00C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705505896;
	bh=fxnTtYFQkeQPn3PUdu5pz7gRId51s+CzeSfA7HslNfw=;
	h=To:Subject:From:Date:From;
	b=Sjqj9/6K6Aop2SUX1hGiDRd1GyH7qUmvzUs+rtVT6HCUklolKucQiZMSrYQVGum1s
	 SNRvQAZF3NhwYwknRAZ9u/ddyvRtVPu32HGFjCO/UX2bl0qxNWJeqeUQb7qihbGoad
	 Y2Xqs6dJa9ITBSe5/ry5bcP2tVNtxEE3BCIySyoUScl9VGjovBr6z0tcQULELC5aMw
	 t87jOnPamcoJ9JwQEoOk7WK8+ro92xy3+Xi0JWKVtABIM0lEvgZ9bCS70ySNblTNQY
	 DXGjNvHjLk2FYMzhffkuN8PyzoB/wUxOfiP9+Ya2vumjAWzdF8JtwRL05FrFLw4g/F
	 wr2TfQbWSs6IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66384C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170550589641.27703.9028523189912005573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa7a9e89aa74f03f4c49553dbf0092bb2aae989281174aacb61f587e9bd78a8
Date: Wed, 17 Jan 2024 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705505896
