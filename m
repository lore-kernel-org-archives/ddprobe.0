Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B323502A9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719877523; cv=none; b=e1GUl9J47vSLA2HODFf7uLZ1kxOK8eGIp23xh8xMXpDmRHoGHv81dksCvAq4s0r2nRymIwm75reIm1sW603CPa1RZROrUzis3mPreyG9k4pF26SZ7YjD08YfhcAjyrjZ3GPEknv9FDNXJ+VLYlLefsN5B5q07QKLD8zUVqFboNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719877523; c=relaxed/simple;
	bh=BhIIo3cINsXnXa0bdN5rLsZp8j6jaHIrounxJbMniXY=;
	h=To:Subject:From:Message-Id:Date; b=VRX6D7UU2TtTm7Z+th6sJ84SU0n2/8wmQm45R5P/Bd6lgjciTz1TEwzgibZ0w3cxu+5oJzA7r+9DNwIVV7QKqHjPP2A/rr/oa2jzs484FFG164Oc8brs/lCMBJ8Bu+mTJ/GuckfIg+r5xBkbBE+IwgrB+iaLpC/5vYQA93WhW4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlrP+7ty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlrP+7ty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E354BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719877522;
	bh=BhIIo3cINsXnXa0bdN5rLsZp8j6jaHIrounxJbMniXY=;
	h=To:Subject:From:Date:From;
	b=UlrP+7tyJCAKnyDL7bWOxq1XApIjWLyWo4JydRO0ITBIRFzpG6otDaL0KjdH+yrQl
	 2Mrca5nK+QcLlUYWhILmqcoEURIfwQZl0/XCNHRfS9EARScshuEMLWxeb29ZJft34J
	 TKaEb64jZw3Mn89DXLLshNXId6QU/2+AqIZis84qtIsATP/KsRAUwACDixq2QpRU4f
	 CbuTcQVlxeD3IcDJWG5+k6moRBoc9vbsYN3e56uQJTXS0hzpLJ0kP+QzKBfKMUSoWc
	 bGmtHZ35ndWp3/FLK4niXKQmeCI/ok3e1YrzZZbpL6Q5i9L6fC060FaeVx2lHeQbAH
	 j7ZPvZmWbWtkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FF8C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987752278.12161.10861535157181720814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004f52d94227a94e04ca629aa3c5ae60d2788ef3ebf6ecd38fc3ad39c3c6dc36
Date: Mon, 01 Jul 2024 23:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719877522
