Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DE61FF7C8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758946194; cv=none; b=Zx/XO4DGHksARVqMdFylsjh/nKo7zDjrPK1xJQyvIB5Depp6I3d7uaHVZq7eGpm3w6l3dll9e/Usrbna/zfqtFbtdaczGDn524Y13+CGAFgBiPyGgDZIJ25bd6w1OyFMSsXIhxCUMSdr9V9QNg/QWJzVTNYgOe+zOx0T3VcqLwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758946194; c=relaxed/simple;
	bh=F+e/vyJrN8tLcRtipOy22DIDhyO/ypnDDFFvwr8vZtk=;
	h=To:Subject:From:Message-Id:Date; b=gb13Qhx54Sva88a1k/CcRoMdow354dbAq5+ATwc/cywflmQveAeJvOvsu2EzETDJwFs8L57f5fbU4b4/rFDdA4iJWoHOKaWgaXKDQ3wNNxnOvNt85zLer2SbbCoTnPLKFdmWxZLvQvrRrVDQrJVt2YEpEYy6od89zXdRZGLvz8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoyGjWCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoyGjWCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01BDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758946193;
	bh=F+e/vyJrN8tLcRtipOy22DIDhyO/ypnDDFFvwr8vZtk=;
	h=To:Subject:From:Date:From;
	b=OoyGjWCy2ZPQoRfg2e0EDNdKyJ5PrucDshxQkrGG6TQ64UwkfLvVAE0TcE9+Up8BX
	 hl7xfZkA2P/QKT1xk9onSHUYGOIPLPtqDIiGubCG7F621YX4CsnIV7dIcAj9sK1+iU
	 hNXDzRjfA8asd2J2N66IqGSN8E8TZjGm+toV8zzFKl12+o0k05mgIYRCCQ9bZCSKkj
	 sCbCD5VeNZnRxz48w6uWkQX4F4Ckg5mIPvrXGeJY3veoNbz9bPoWRSGxa9aM0g83qI
	 qA8/plmTwFgRmj17OP91C0pHRwdcGsYPTbr2Z0zsoMMx3Q7Uz5M6UY9QYAYKhyPPYK
	 tMafZgJkcQTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F603CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894619357.4570.11014701271178567735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58a9098c4b2c57b71dbe2618844df0f44c3c99fc03b7c6dba2b05e50ed1e352
Date: Sat, 27 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758946193
