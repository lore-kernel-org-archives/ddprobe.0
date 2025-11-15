Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2175A3594F
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763195994; cv=none; b=aLURXIvqU7KhldM7NxxrFWIjD1mT9Bx9M1kKgpBy8SWmK8rpqMpf87VxRTQwpu8LqU3RnAwPGxy/3D8/fztA4lK7LqAJfzoRwA8O7knSxfXKNyJ+qrr17w0yp8iCnttgd4qjQbfwt8sh2geY2AXzCfxqLZTwAEA6/fbMivxYzvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763195994; c=relaxed/simple;
	bh=nlu2OOPUXqTJ5HA4yedtcyOMPkUKfaWq1sGcj9s+9n0=;
	h=To:Subject:From:Message-Id:Date; b=rvLaQ379nckiBGa06su41LgcdEu10F8Lt7Y6aVlN+SuL//ctqbo8kjbc/akUkzConYdHlmNKxoZAZnKVYujH1wkU1WU6u+yfmTCFKRpN4JD4SzyGVXaizbry9EWLyOe6gQfqdSALUCOI1d3jR9DGv5lHL8s5ZvvKIQiJ54jy/SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0hxrX5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0hxrX5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD306C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763195993;
	bh=nlu2OOPUXqTJ5HA4yedtcyOMPkUKfaWq1sGcj9s+9n0=;
	h=To:Subject:From:Date:From;
	b=l0hxrX5Z4J1rydQQTEs5TY0+u/WmzdIPVP0B/wVw1FVTr6TftU0qq28HuFZI0sQre
	 B8vR9jd9+Z6Xk2wLXf+4bCRFmIe21S9gfsb7oP7DLS7UzxAX1OpsDLV92coew48QsC
	 MdpCFVlQ3Pg0B+yFLSWOT4ouyYtNBeHZ1fjJJof8/rVqegKVGV3R2E2eOcsBuYtuA7
	 2liZaq1CWhQPI62FVTnkrKO7V8veOol1AHTmFSW6L1t/LYfidwOdyD+2HCMRsGMWKd
	 TiW49nk3/RsdzVKWvIks32R50Kfo4oV2oakJzyN0atn9qxaX7KG1lTLJZfH78B0eyz
	 bvo7YYEbFg7gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982B3CEB2CA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319599359.12499.7462068737881679098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34da995908b3dd7f557accb640b74f4e032f3f348b20b13611810e21ce9c78cf
Date: Sat, 15 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763195993
