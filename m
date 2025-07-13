Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1CE4315F
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752420594; cv=none; b=SIZemPFNRUmEjpyQCpvQDUqAlM/SHH4rIGTIOVw4THWVO2x10Dwz2aSjuFcXCEziu7yoFNAjZS2se2xx5hj4qhLSFBpFblbeUYv9o9jI/s0q/EkcCVx03joFcoyxpGNCT0mU2w+lGEledO3vR8IeXQ8F8dT+G1BSYI5D5inFfIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752420594; c=relaxed/simple;
	bh=yvPaQBzHKMrz6Gkv2+9mF4ys7yvrPzLx6yENyiQlac4=;
	h=To:Subject:From:Message-Id:Date; b=IW2pV288t5+v04h7AcKSOT4y1Izjxkae0h6D3t+GKIgCjkGKyDjRqn07h9aSSOAVB6NNtBl1zh0KCwbRJbNvzwzfj3CSjPIHBO5fohU9Y/Cd7C4/pY2jDAaDvthVd9eYjsGBQhs9D7kHDYUO4aiJqFYcfoimv6prhfrz54bquG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqiFcQ55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqiFcQ55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89A0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752420593;
	bh=yvPaQBzHKMrz6Gkv2+9mF4ys7yvrPzLx6yENyiQlac4=;
	h=To:Subject:From:Date:From;
	b=bqiFcQ55yGm7vVCP1CT6p4VGe4vP/X5CcAzZf6PNQEo+yDt7zYWdcXx07AQAYH7Gn
	 Sc1gKXXjYCBPN1UiEr9wPjL2e8CS7ZpCjtLWS/6rfsM5Z7kkanB0+jM5i1MeOkUAqe
	 OZWoqtwJB1ZbIoiSAD7nYwjJ7N53NOjPy7UHVaqMca9qgH3y0H3FZwGyuP8lplWGOD
	 WuRaBbkCagZbFVq8IWH1s+apyke9dbxQ4LVhoDWhAZmINgJIYWfN9f4ot1bwlywlA4
	 PBcd/Q9wg9UptW+1Ub7155uywM8KSUXJ9mWRYhpnRrTRin3FCUdDQ8WL0RF/y6wZmk
	 I45JtJxooBV2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F10C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242059358.15899.14297211766757952352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8fb9f5ce8cd62e6f042db7bf03e5cb58cd17989d0fd006db7636dba563a6ae
Date: Sun, 13 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752420593
