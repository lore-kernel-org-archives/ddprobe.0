Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505AC27E07E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783205914; cv=none; b=dXTeVgSFST6XBJfmS/MoTG1PY9wpfELMKufrk6at+CKdRY14Xu2OlrZZsatTdN48nDyKJmb2WJNehio/JkYXqaFNm6HLMKV877pDAFAJVsxXON4IUaSlynwvsXBpJM5TVRv92NgQUCe1BrhScXWo7TZji6+z+RfDk2pEmnWxTaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783205914; c=relaxed/simple;
	bh=OGOZdUjOTS6Gv3Mhz0hXFil846P7KV5QUNBMpyGm3nM=;
	h=To:Subject:From:Message-Id:Date; b=EtEp3mLSxop4sf0VVQkw6j+VEvOPh85c7c1vyndXuz23f5hGtDwAStbmoFaYKrdJE0FkL6/tBaVVUQAuNTEJC8OMcA5Ca1QJVIQlFDMwBwbuyH5zMxa40gfJ0fNaFuGLmocQ4xzTZk4b86EjADS1TALWRjoSf/RAxkEWdHf8PwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0NvXGSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0NvXGSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CD6C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783205913;
	bh=OGOZdUjOTS6Gv3Mhz0hXFil846P7KV5QUNBMpyGm3nM=;
	h=To:Subject:From:Date:From;
	b=Q0NvXGSWfdHcc271x//D88km55GcnJyEiZp2hQg/6Zu5gPj+3UYYNxuoB2RdQw9GJ
	 IOTvUFbglgZIIgB8faeqWSY8SQkCXKOyh4Xh+UYOo3TL5rMhtBCsl2AjwlWAHy8bxW
	 kWQmL3wzxAgczZlI8rV5EBf8oPW0tfYgvsBhuPQi9tH7biBD2RVq7F1S63sRcPjmPv
	 wZPwPjbd3ZanRyQEOUR6JAGLOsqwTA3B7v6q1s5MejAUW2bjZRTu0pZOADriq+6/1f
	 DAVcslTlf6Zo+Oe4n0qQytvjkXg/7BxmX3OlcdcGFp3toAZrPq2YZ5JkHBqTbn69Yz
	 5bsDMXMabNCSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2743C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320591368.31602.11699514311072682990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a619bd35df4b0ed12d08684629fca33985fc0d22ec7c8a616654689a4fcf5f
Date: Sat, 04 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783205913
