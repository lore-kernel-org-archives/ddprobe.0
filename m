Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B28A23C512
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761406194; cv=none; b=G9WisphO3VtmNaJfsSENUNRUHACNCE7ud3UkWIt02f392NWEdAVJZbSeCM7sJl9rbsF60MenuPAuHBCFxI9eEBKaOOCxQjW0078ZvLSq6ShFaaa9PaR6UwX/McXdUSWstT5kvXNQSqJfvC+L2ivA32s6yGa8nv6sQoQ9qImlZm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761406194; c=relaxed/simple;
	bh=CwzZJka+hYcb7Eea24iNKVljv8JAlCsKmRDtqDypVeI=;
	h=To:Subject:From:Message-Id:Date; b=krOG572qIIzJDGclOKvuQjGRQVSrG1WQDDksU3dVBlZRI9tdXjfSelVZDlAvNpDm0d6kMwXGtb2543elkrOFNCHjp8VITDv0mApHkmeU2PfPx6GJBjAEsgimpMZs9gDwUjkqP0lWJmylfIH0bmHY0A8dkMWoCEy67q+gjyjKdvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYpZquAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYpZquAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CE9C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761406193;
	bh=CwzZJka+hYcb7Eea24iNKVljv8JAlCsKmRDtqDypVeI=;
	h=To:Subject:From:Date:From;
	b=EYpZquAh+bEWn2NlkyF1rc4bMnK5l3AuL+jjfTzlS7mfdjqxfyTDbjIjSBHMg7Gaj
	 1PeOvgvZDCuAmTd3PXWIWXyitNnn9vYLnlBSRLnxiZOtdZUQsZ790P4rZ0OGCq1tAI
	 6iiE0WEZppnCGZx8OeI0Rh373/LNB4+OxQ3arnYcq0/sXDOmTzopmKJRSEJvuwoe1E
	 cN3xkKaAx1tfpTGw8jyEB/sN5TDz7yh9gTRBOIpwD5CCN8KcjtkwxjabszDDPkarKW
	 4kYZlOdDQXQ2PTDbz5r9/L2m8m3vaELYvqnXnNXn2W826vtBSXoAmKptFUWOgay3xb
	 L2+ON6D0wsDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92960CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176140619358.3343.8593795703496177577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c76b19263e4f6c146d83320b15655ccbda50b8ed14679e2460ac9618a778ae0
Date: Sat, 25 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761406193
