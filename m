Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543BC3603FB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789005634; cv=none; b=ChHkqhRJcqbO8s7vx3qwAyk/EEpMRVvWLkhKmhIJDHkNmrYmTCwLW3QYTjeooVmEqvMgJxgSj/f+HLOyKXSz2EFXm2QFwqStpHi8WgXXmrJ0Lj/+GB8Gq26tGdQljprhbs5o1zeX4XzimKyd6XE5DSBlmRRQptUutsyVj6AKVMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789005634; c=relaxed/simple;
	bh=jhZlqWPtuQpQJnezlFq48P/RXJIZZiDIyqN/vOHgOqY=;
	h=To:Subject:From:Message-Id:Date; b=pt3hm/T4BQu4BlgFNTFVWg0YTRR1Gq4UKvlU76yJNcaSh2ecvnbzrGHvvcOxwuRqfGtgX8/pjAQf+c86LqpbwK5vKXmKTWixuWmsFUNAcDhgoAEdLh9PD6DR6dwMb0R1cSBr1cgQs5zg0j6RBsoiwkfH6BCI3yFGM+jSVRgGaWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2jX3l2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2jX3l2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05ABC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789005633;
	bh=jhZlqWPtuQpQJnezlFq48P/RXJIZZiDIyqN/vOHgOqY=;
	h=To:Subject:From:Date:From;
	b=R2jX3l2JmTMiy4SymnZZQQZE2x2P8PBsFPmHmS/vh3yVx00q/9DKjnlzAo/GZ/kR0
	 0ARKytmed2gSAGJcpEyKur9C9YhB81ty1gi/xmlxZkSBkB59y6EKosShpb2YJAHrq7
	 A6bEMo+jcCs8J7Z4Or9Z4kyin7ye+IHK7dCCd+EjScaX/aU5i3gM9EHil7lOxxW/Gy
	 FIVeExhTvFuTSDLMvoEQNLE+gtnpkS2e4AKN17bEvGohEFRnMBeFYyEviJyU1ZwyuV
	 y80nWHM7eW+wUsrUjRg9J1hj51VRPlRw5HTH2xk/2oYRbIk13t+YKbP8zfoEqS+QAj
	 t6o+t3eR9+FmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF5AC79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900563368.25478.6537808621634875795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6cae849d757ed29f93903fc9a20aced01daeefa4ecd20c38af177076e88032
Date: Thu, 10 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789005633
