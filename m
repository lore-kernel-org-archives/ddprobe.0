Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F805293E4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790868634; cv=none; b=lYw0ZmYJCU31eWPsTzHXWkr9DJkxujd0hJJ7EhsjiA755q3oiw85yoRhNgsK4R1hwv2FX6xVVqLvp2SJblBqjJSGB8paAw/b6jEN0EYW75sshImxXCzDZwoEEOl4O/jjL9ZzVBmMWy6MpLdkgFeD2uKX9JaEYB46KvJUGXkXKoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790868634; c=relaxed/simple;
	bh=in7RfntQnylhM+fklLZrosvu1VB6RBDEcpPAGxc+4Mo=;
	h=To:Subject:From:Message-Id:Date; b=GdrH21QC3QOYrOI69pPm66IsrkIP19UsHCP0/LmCPh+w2msVqAdj4/SnaUSh8SN7nY1bH6Oz7d60H2Or/Ys7cQWTm+fpzqnIlyiE0Cm/4nXA0sYObEPAqyxs7V5cTy61LOSyWY9CKNsftPFp/K3N29DxQ9c25FnT681L1304gX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEYMgiFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEYMgiFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0877C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790868633;
	bh=in7RfntQnylhM+fklLZrosvu1VB6RBDEcpPAGxc+4Mo=;
	h=To:Subject:From:Date:From;
	b=SEYMgiFqCOSkanQWnQkJ3b5WELMFtxETHFnKSYcVZC7U1aZv786x5tUArgG5yyjdz
	 oVX0cPceWrYSg7DFIJHIKpbV4eWOGTza/lfkj5WYSCU6RKGRAHWYHr42fogz+CuYD4
	 +kFcjMfFnxi/c5d4IHumND7lyxIwra0n5RFKvVWnTzyeaPL9dIU9h6pjKVx9BvHlnP
	 QKsrF3qEH6VoeXDKtiLzs+C4csrYs8VmDMvNKs0+xWZGcihOn5cqZarYbrLDlW28gl
	 vvfoSiqzgx6QIGUoX9LxH7pM/UWnNIAxVu3cWorDh2MNmNnQRAjIXdzm6ueJYlriLx
	 Gh+po4o0pf9qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7111CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179086863371.24373.9171839773657464018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8138c83dd0eea72908cc3510c2afeb26db6eb16107155a037d965f7493fdbb25
Date: Thu, 01 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790868633
