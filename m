Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEFF328B7D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770731034; cv=none; b=UxwsjlCw/iYuHAcUmSLqw2yCk4/dSz27L4KXZSxHMZ3uZAC/CDkmU67EQX4pIzyPJY8nnyIqULlU2nJ1e3teHJCS1wUzous41TJsv3vaYVRUZ0BX8jkc7OyHYpQ9lT5cMViSocsgx/l3z+BVqZi2r+T9Qnxq8zVeBFcZ9QfwZi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770731034; c=relaxed/simple;
	bh=APazXqZKiqdzIxKX4FfgP/AYjqDY5rkhaLveaQ1axZQ=;
	h=To:Subject:From:Message-Id:Date; b=u7hzkHIvL7mbTaurTB7LOUEUca9e2sJgi+r3QwaqPKpnBFU22PGtFGp8GHNhmHYMrUP4IfQGcetiYHntQSBXudMTzrlqdZBJxT0q8FdcGPghGaqROQaO7+1QJWJlr0kKfW/020HmvSQ0dB2d2A1wmddZ2oN0xaTKIWPglaQ+esA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Og+v8N+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Og+v8N+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97CAC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770731033;
	bh=APazXqZKiqdzIxKX4FfgP/AYjqDY5rkhaLveaQ1axZQ=;
	h=To:Subject:From:Date:From;
	b=Og+v8N+ncPdBaYHLw/O3XfhKWHNrZnN5X7Dxvjq7W8w3t6zqlGJuycvugt0InWPyF
	 qEu/olIvpqZKKG8sq4oq1QNH9B9MIqdhxp+hPcswAHsammnBskFzdjf9OOp8H3/GYa
	 KdYHfd7e1ZOYizDQMViQkpS56kGoYiLvjD8N8th+L0Zk5yVpiVQP80wpclGOeBL8ty
	 sEuu06nQQXBGzn256SdQixUwAH1qB3yMRw2t9aAbFBvXZzHvX1vM4Z5ZKZM/WLCA8w
	 uJ1jN1MVIWLyL0N9DCBA3pckpAttxX+j3/jIksp52j3JjSsDCLlb4pHZB6ZmD8Y/MJ
	 ALlcpKOY9dbtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FA1EA811A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177073103359.24276.4867995254664069189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f48bfe37ff9ff403b173773bc0b29d1aed4ed321f2f3ba1658c958bc86ddae
Date: Tue, 10 Feb 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770731033
