Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315C65CDF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766928234; cv=none; b=NepTAjzJ2aQa77QP7SWV9fVFtPqylO4SL0gZTLEpy/ZmkIPSw13+D8+fHyBQQHWabposO7KLY/J8oBXmToPqmI2AFwEeHzTd/MoDHiyhPsQqs6+GLMibLYJFEYPddJH0fwTDL56Uy3/8APXo5hY9LPpiO/sQbIL0QLK/RAfbW+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766928234; c=relaxed/simple;
	bh=ajYuIYYazGnhCWuRrxVgAt/J4sOPCfEWst4rDgQiZb4=;
	h=To:Subject:From:Message-Id:Date; b=n0adRw6ILDStVwITK0ugDyrtkLGipU7nxohP7sqT4lPB20MURa+ipJ8awTQtrEAaG6406CLIRvB+iDDK62oFHqsAIuXVL9TaI/DlDS7SvxJ3is390u9/fYI0Splie9K4bnTtAzcWndRDIDsdOcDHqQoO9LtDksTOrSeDvufUVLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTAPSk5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTAPSk5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B9FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766928233;
	bh=ajYuIYYazGnhCWuRrxVgAt/J4sOPCfEWst4rDgQiZb4=;
	h=To:Subject:From:Date:From;
	b=gTAPSk5VjOUGYaIQYGTETFMLW0R6r9WkltbNm2F5Y1o70eGFEWxHqs9gb8PVdEWa0
	 uiqjH8MatujFbx4uRHGrNbiev8HBS+KVmClLl1I/2PZsLmY/fcKXVR3dNRa/PjMIDe
	 3Lz/eJzVaHld3nxWdo+aohKAhya948bLjQDs8qmejdfBL38f3ajInaax+fke64vV5X
	 Y+umHgonj0aaN/3lU2in+sroOEl1PMMnwW0MbHyvdr1j14rfS7v1tDD9NH4uFmDqF3
	 Ox3mfbowgE2M4h9BWvZjDIPBCe8QLko9munW61q9roPmrhhCjUEzMRzFs3x+IG+9r9
	 vVB3jvge+mwUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91494E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692823358.22320.18005381739168145421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9dea9fb3ff9b1990f9b28345da2c0b4ce40d60bc158127bd4bc29e5be56ebd1
Date: Sun, 28 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766928233
