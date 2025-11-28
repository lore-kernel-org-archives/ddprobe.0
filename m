Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2932135979
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764307974; cv=none; b=Kjv4Cex4NWBx7uIPHY+2/dCIsbh9zRDDiY7DMeLZaEct1z+s1d29ARy6KX45DM3erknbducNmqwpoY31b+DLOqiMzdkkjrPk+vA2dK9A5bLJ7aF1vljwnQm5IvKF3lfju3xARY/44fdf6cIfdGmMuNLxXJZwIzzddU2BlNj000w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764307974; c=relaxed/simple;
	bh=AzsfUpXfHg6X8um3cyBaREuSJbcCQPFodkQpDexPWTw=;
	h=To:Subject:From:Message-Id:Date; b=NuFqfQVqwzI/6wPuzjQTdbvlsiLnpw8WFYyhu9gVO43wRavfCh1eW1CPU4asMHnPe7mNntmJrkgS0sZaqIb46rhqDjvSFUR5Mu6TdeY8B69mDztV7BGlVBvIYNP9AR3RXKhbFddqFL5EGfM8jnt3TCagtUh9YMfWLPVaSmqk/aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMAyjra9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMAyjra9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DFBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764307973;
	bh=AzsfUpXfHg6X8um3cyBaREuSJbcCQPFodkQpDexPWTw=;
	h=To:Subject:From:Date:From;
	b=VMAyjra9nF0lZFkkrpIqp8jLUfmtlBNFLBwc6DZbp60J2+cDBDxsgKYv7dZek/Dwx
	 Iyk+8tHNa3XM3GyyKx5xE9/DsZyY6qpkYGQ4hcqJnUlR+qi0RSHa32oXCk5oVobhak
	 t9+mzNVEDo2sp+9GASHWySSy8abt0z8O85IEHO7SoDB2YIFULKNH4Zi6GL7CXq8B2F
	 1kqhUR+Xzwpm7pxVvlEfRVfpN5HaXtPpcX2T2AclZ/UAwyYpygiNyObJBt8wq9Febu
	 8Ef4y16tfc51Eiig8Oj9RP9LVl19uLnNChwzzOTuMOR/O82MTGoEtpYqYRe3w4y9Hu
	 ml1tIIOlNdMcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8CCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430797358.2437.17416147352013273144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40739a64dcfd938f037b095f546fb0555e59f129058bbc0412e8eaa146d0ec28
Date: Fri, 28 Nov 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764307973
