Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36388433C8
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748662194; cv=none; b=BSJpELXi6eZB0KPm/HU3I3Zub+SUBYwWz4caqRPCGfs4K8+Zi0BHHRbBsHZjZ0+Sa3RicXtZ7KD3v0Q4wb/hHsjBMb9CUb+3N5JqGSFEy2U6BzmoiJ8luofo7lRSQzQIiXFAYs4yZoi9tML52jAYmVCzps3YwjFjtEVbv0XqNx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748662194; c=relaxed/simple;
	bh=IDJ6hFHyx1VKjWpf7HRQq5w3rdh1bFwIeijdw/Trqzo=;
	h=To:Subject:From:Message-Id:Date; b=a8llV13QaT5wsCgp+9Q9PzxRU+4Dz3gVBryY6Dmzr5UitVqkYTqcFicU3Ltuppyj+2ReNsVPF23X3lSLlvKVjoGzDrOQt1p4ARXfU+YoMWi6e0h0jCyp5Z4ttUf+sXbLd8IHQKbxDWM+8k92wNx+PIYMkatS4+o0rHLDCaOP8a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSdywMjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSdywMjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DACC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748662193;
	bh=IDJ6hFHyx1VKjWpf7HRQq5w3rdh1bFwIeijdw/Trqzo=;
	h=To:Subject:From:Date:From;
	b=GSdywMjKcJBebhXZGmxTHqpx4hrGcqriAf4bdYq2KRy937PAVkILySfGvyDB3rCkw
	 Tk1+Qx7tfPZs563ossmlrmSeNBQTVu/AnVLpHkUf4MLdS1PegG9NxnqzTa/1tm+JMj
	 b51B/RPXphuRoCwGM8z6F29koSA30jfNv7WJSDlaOJZHDGhWTmwP4qwn4V1evh1u1I
	 uEIyH8jFxiRDiPNJa+mHTsoXzuHdO7Jbuabk/xSrAzWWiqK/YHv6BbPtUN2dcnpr24
	 wOsnfI07aUxOmpnXyPdfRSIDn+EBkN3gjfXmwto7XKU91ip/aPKg+r1goC/cRw6DmO
	 BRbe4j7wcpzFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93878C5AD49
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866219357.24079.4570643594169924146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 894e87b456364c2f9689d0a7d7eacb9ee5655c329a5878a3782c608dba1bcf0e
Date: Sat, 31 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748662193
