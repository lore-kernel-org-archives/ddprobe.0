Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AB523EAB7
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772984094; cv=none; b=IfbvFuCPIiSoHymzClM7t3L4s+VgM1Tqb0KpvjzIkOpBGAxO9b4VDq42F8c3JS5EStRVriJgcnt7WaIZKeNX/tL/+7ez6VEx8plFjaYE8EGJKsH8mihuDfWplohv/ItVWnhd2cJ/NKywY0QLylSAGJ4O0hIIlCjOfg0oDzYhMj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772984094; c=relaxed/simple;
	bh=7ikczHS+p45OK2AWNhV9N+duxdhDT7rG3Hy9mkIvWBA=;
	h=To:Subject:From:Message-Id:Date; b=NyOGc9XFi72B4cRHnxqNI8q2ZMioQQhNUDhPyKy54GjaV3dxjrJ9ARSI7cuDR/CzFdwAqicePsniAs8fDjniij9FqEeS/1WLYRFtrPviOp9oLOm6Al8jtvGcYU4420ErVz3jaAS3yi++vB2etiYIXH6G4Pq/cx8TxRP8AKG6Bvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAsfIUep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAsfIUep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9D2C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772984093;
	bh=7ikczHS+p45OK2AWNhV9N+duxdhDT7rG3Hy9mkIvWBA=;
	h=To:Subject:From:Date:From;
	b=lAsfIUep8ws/fkEJroKoVRelzJdJGaSXS418GojTqtWkClsceUBB/zlkoOk8P8xJh
	 MB5Lfup0zWdadextAXbKHNqoESoa5hYuuLxHfdcwvPmVeo816PsWUpq5lFLu59Ws58
	 TjDQSlMe1Ibi4Z5Mi6pnmxtLDI01ResPDB4mPM1KXjH5d1k9S8uWGX9WvPovoxJU+i
	 Qw0VtpU6l054S+Eqmy1BvsmFAv9C6xES7M3drBmcrXbzEWGE1BGAkmx8r3kIpSHrk8
	 JY8LLXdN/PGl8bxComjA0ipWeu5m+2CnsLrqiu47W40YjC/rnAKMUN/8FrbL1TZIVQ
	 1Mos5W2NAcQHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99316EA852A
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177298409361.27155.3898324489867548863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c82e210a61e607f76d221d9d79fcae46a6caa05d61f7ca6632bcd20ec90ba3f
Date: Sun, 08 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772984093
