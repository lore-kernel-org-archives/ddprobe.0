Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152762E0928
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756786194; cv=none; b=YDqAu0kVl1f2XQJ3hCKoOt55KrLQPUK6YNCx+rgpWhSJq3xXIGOrdra5EAYeVOhV5XxVVtDWHn8kDvLVai+KiAQjyxQwdqbCrBdy45N7AacygXRS7xfx826ETzgF2U3nWB9jlksbAxXFblhVpKwzy3VkVztfr2A/FTsqdD2/xPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756786194; c=relaxed/simple;
	bh=NTtGrv0Jr71frPXI3XpIYXvszeD9TuTFTWh/Hxo5xsk=;
	h=To:Subject:From:Message-Id:Date; b=DD7CL0v0ZbmK8lYqjFGsYzcpuXUmMt3nlEZ3NUjcqe9xUryVcFhPprbWTKhZKwpiM8JJgcd51JJ0QtYue/SFYqBL5TswXDnPzUasA5d9XoapY3+BbhU+BG1jVf40tz00r7m6KdfX5/FOP19zWJWsWupJaN8QmVloWHIhPYUwIdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qP7l7GX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qP7l7GX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0058C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756786193;
	bh=NTtGrv0Jr71frPXI3XpIYXvszeD9TuTFTWh/Hxo5xsk=;
	h=To:Subject:From:Date:From;
	b=qP7l7GX6y6yF77SvyuGSuD+c4sidMzIO7ad12XomF5rgz5iegqVMb0ga0j+he245c
	 FHw2k+Nl0AqpMq/7O3UiF21N/4ebqD2poBKgtqStm+/n7ej4pUPmJSZhQmUbA4YUju
	 UCUCjfGCgcw9rwQc3hgVEtOZwEoLUjnYNmHYU7MOGt9GEm4ZouV0VyA1uKueN0JRoN
	 s6DYHCqTfZqwekiDpSF71KXN0M7m9I52+vlaHB1ZQNe89WpzOa8UiTr9gCdrQ+R4vl
	 uaPAK7kYS8EMSUqBL7ZnwCVuUip8bfs8s8FjY22RWCyzzBjQ7T/O+UCO2tqfC9uhVo
	 +kg6eJ8svoquQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F068CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175678619357.29999.5520684384689183092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4036efc2ce077856708f497eca3c7f0d434b9d9598a6b0f9c8426055d91c7a04
Date: Tue, 02 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756786193
