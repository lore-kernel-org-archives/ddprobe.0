Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621E23BE642
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782367654; cv=none; b=DMuMAO6/dERmZ/cZWCYdhE97uiP2Zm9apmqyuj2Npb91dWrtzGQTuooWTA0nP2gKStIfnopOHTR47ETVaasphJoeDM2VQjWI/AfVBVT0QKTBCZsKe+6qX0ZtOjvCtCDdzrApV9iCAI0KjG03qVB/Iz3qIlb4hu1uTN5eh9XXrS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782367654; c=relaxed/simple;
	bh=FUwQtLuivsTptI0APqjLCy+7WTqpMwgI46YoPucS0Nc=;
	h=To:Subject:From:Message-Id:Date; b=gqusnd8lJQzLo5Ohb5f7O4QeYTLlhrRTt86bl6+5UlpksJ+Ph0pR37r5LzMUN2tV4uGKgOHCJ8JO2eoVW8AwPmcpK5yW//EIQ+JyIfbc2E5qmKBBSs+EmzNeWwUKlp0l/A75HaBA91lnK0XXK3DYEDR2NceI7NMWSVAitdGBU5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwIzTrwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwIzTrwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5FE8C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782367653;
	bh=FUwQtLuivsTptI0APqjLCy+7WTqpMwgI46YoPucS0Nc=;
	h=To:Subject:From:Date:From;
	b=qwIzTrwkUHjkxNqzmjA/qVw68B9+aXilcoCEL3b8IHk4Zu7ovVG/k3ybjG2r3+8N+
	 NwnmGsRJzQk27/56W5U9Be/+SU/+8kj4vVkJ6eGFx2VO0RZvF8MVMYVQ5cCFFfWb8L
	 APueytd6PJVIcQePOZod4sHJxfTSDcHkcCyvyI/55VUxJq7kahiXZpKXGKx1uCkaOA
	 wTr1iw/r4uxp2uW3npuGJ0PSmhGFThOfKz5IwpwGrKReKQemWUJOPB0xxc9X1bwuHG
	 L0LivGeRg4wbKsx2x6Fjwyt1Yz12J0WN7ddmyh/ykp8Wy0f+R77xSA7tk6lKDnXCjI
	 P4VJfejW30DXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F09CDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236765369.28979.15071591338631070990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d73f22853d84fe483135b722f14e4c705eb8b3f4ae02113ea3976471505f37c5
Date: Thu, 25 Jun 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782367653
