Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8BA2628C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743733797; cv=none; b=Dh3csUDh8t1v8+RzZLKoJyySu5HdAxTvN++DIp99RcYI4BcRwPIMOm8JOM3/2amlQ/LxCgXguDFeiV311k9AuSVzNlrYSV/SPe9AnkbDU3WdjR5rG3gZPb/+JrzfkLM4C4CmD3u0mhCAc3Enj9jfcsolvVyU/xUbx4GLc0LvylM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743733797; c=relaxed/simple;
	bh=IrhCyCjtP+r1AbpIdBCcgXF8oyryoJzVR9KEHNsLqsc=;
	h=To:Subject:From:Message-Id:Date; b=U3Y2I8eG5yE76ifZn8W6SjpvPZ5ahz8q/I1glMFCJPh5FZ4BNLF8mGLW5bgZMp3u6PsSRM8tRqfQ+gZ7xnIU9O407Sx++7ncenwgJ1hzobKvu1aHS5HOEPAwk7r2aGtz76CZGomDan+E6RRoOKJZC1nbzGrGp3KZW4znsHlgNQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GU3MimOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GU3MimOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79A1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743733793;
	bh=IrhCyCjtP+r1AbpIdBCcgXF8oyryoJzVR9KEHNsLqsc=;
	h=To:Subject:From:Date:From;
	b=GU3MimOdawwX8O02zIuhJb8rzpykCpNp962YTJq8BBY9m4a6f6Io/XzriZIevoPoB
	 Pqrm/EDW4g//3PDqT2Dbn3R5lBWkPVvQwujsx9feDYHX70idCEF5c+Z2wzDZzdAPzI
	 OjLFtsw/09tCpRya1ZNsSwS4alifq3MrGZ8XUfdwBQSGS1BT6hKGp8XU9R2T1fH0pT
	 qgBKZ6Y2m8NBF8p6WoevBWZnw55j/o5IcuZH8lwZyKvXjjBtpZko3AaHa4N9OcRq/2
	 EAwvWdxuuw/a7VxKsrzYL7nbJgPUAip5pq/6dFnSEjKZAJc+RzQ/F+PiXmUrbXeF2T
	 Gvw2bVapb74Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB3BC3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373379361.29071.571690832982912635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60af62581f8786312dbe5d53be41cda8d6259d80a58392e4b918a2f29f98f675
Date: Fri, 04 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743733793
