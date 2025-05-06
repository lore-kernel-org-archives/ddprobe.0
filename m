Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0AD220F53
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746506395; cv=none; b=q08oIKHtT1xKJOo8uyA19ftIS0+8HSq1UIgI9ZkKBVXp5ustHS5CTlXoa6JTijzc3IUSrPm7FuHwrl5Z36PdmqpOiIm9o/vvwtidcukrGg/awvfJ8kFx39Mja4v6iGyDv4fEvalAXaKq72AQuvZ0AdDIJa6s8q2VJekR08DMCNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746506395; c=relaxed/simple;
	bh=xjQCYYA7XZ5rnGfu+E9aTEYhjFmCi6Q96hCpI3F3yf0=;
	h=To:Subject:From:Message-Id:Date; b=Aues1nffui6QE2U7Qfpc8DNV0vlB1ejjbKpW2+PsWvUxCDtZT1FbdgX32QTw1fj3DmMGqn99Fo92oqiiyFngNqMf1cQDJeti68lG0LJ1nw8LPTQ/eRKa56oRV/8UWK3kkDLNn6CLYMucPI+izgaMBRbGUMlBZ6xOM813dMvZ42M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAWqNQAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAWqNQAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD7C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746506393;
	bh=xjQCYYA7XZ5rnGfu+E9aTEYhjFmCi6Q96hCpI3F3yf0=;
	h=To:Subject:From:Date:From;
	b=KAWqNQAKeqeYv6LUiV50X/F7AJS/zctLmkKtu6SjHfvHPV0pguns/rxPvOJ2ZwXR3
	 gUuMJFSFP6pIRy23SSvhY/y1gV+XepRygcSqcKlbD5xSDxEAHlC27JuOjKLoNqM1cO
	 jY1KAPhSA2xj3oG151836dmzrTlRiq7qAhVgTILsMd5arcCgD0yp9UAjGAYlGKqN9T
	 v2CHzSmngF40sX1JMYE1nMuQUABGo+/FfGggF8bIEnubFHcsUAJ3Utox7FkmQ/+d15
	 o6Ux/x6e0IEfIcHiaft5r+z8jiTPhERiLWHQGdOdbCJHelEyCN9+Z1qKiYz3oTWPRV
	 0/Gau38P2RayQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F972C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650639358.7638.17762808617686130252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9937497a7f06aff742906cb81e40c3c77aff50f23e0bb6b83f3397c5f3471a9
Date: Tue, 06 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746506393
