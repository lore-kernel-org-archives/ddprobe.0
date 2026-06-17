Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472E5305697
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781666794; cv=none; b=Mt2bSWCiNsAViM5IV4SV046ZmBLs5nGg8ATSQ6/L06joSoKaMLn1+evs7hNqxy+r9Xqe6iM6/C1geAms1BUeyRPZoSuHeql6DStve/s7S0BLTcf7takGOX9MqMlqWrlDHJOqRZWu7Y/tTpoiMJ/4hvsiyhBXBPTPHDSOBL2e1oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781666794; c=relaxed/simple;
	bh=/JhJPFFf66cEYIjay999S0UYnO/jy6zhd4Gq09LKPBg=;
	h=To:Subject:From:Message-Id:Date; b=LtgRyIf/PME8VlMdJ2lqU/WFxyWH9gTGk22YJ3yLXVFH6KhpXX1xlQ+f3L0ey5auWr9GyNGGsy3NeLE1MLkFy/duvsjNn00u1Sv6ulieH4BfwWTOsH2J4YD0mzYvA3OOP//zUJLmee73l6eODFRYxtjahc6JnRih40NFD9qRpac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoFRtxXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoFRtxXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64B7C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781666793;
	bh=/JhJPFFf66cEYIjay999S0UYnO/jy6zhd4Gq09LKPBg=;
	h=To:Subject:From:Date:From;
	b=ZoFRtxXGfvfm9Ffes/DPGeJ/STkwzwirk+/o3TkmaUG2zbSD8imEcV9DzYxZzFcs/
	 VwQVY8rjCoHjx950ELrZr2TlKvJ5Xq8EFFH6B5OgHYhk5mbY67ba3QItJSqiVACXcN
	 ahUTO42k9ac9RyS0wmAsBjjbXONKTyNBMp8IyCUXeJW9tWN3PrV+GfGaqwcsfYmW8J
	 417eAeDk18VLkuhvUj4fguF9g1Z11NWw7PfhCgIkzZ3JOQaJaRoQVg2IxGda+SS7NH
	 WVY/59Q79R9zCsOjclcVFR5FtYaIVjV7cA2mtJLp9hJQX9NwG4LQBdSPwdWhiLGcws
	 K8IeCve7j0nZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB0DCD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166679369.28530.5062063404125560506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af80f34b3ef45fc9ebe86ec980b533f260bb20f2fc2d307b8a8a9efcbc01dbe3
Date: Wed, 17 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781666793
