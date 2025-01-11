Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217BA170A23
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736590554; cv=none; b=S63wd8PcAaV52BwHrvVwVJLPsjbnfvsnVgW44f72sHo/Up28fHJ4YLuoFGtRbb8mLVJsx/p6+U5NNwgBJR8L3W0YRf38Nri7jyuoxH+KVNTWGPFZBiqzLJB2HemjlWf8kdb6jBw70ukbHzeMPw6AAyG7g+JE9QEKFanl6abltyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736590554; c=relaxed/simple;
	bh=mAvU08i5bv/NmrHBAjKW7gv43QThvKy6AqknEkAK9rE=;
	h=To:Subject:From:Message-Id:Date; b=PbYsOGZp7sVtRTXhYsH3T/cpvFgiUnKMta8HxmvNlUp1FTO7bNUm5UW7jnqMOdCa8H54pEVOcORmcBdU6tmPRmfPa8MsDn4ft/2m71zIQ/0T4fc+xGE3duJiBLaeF19pP3y2bt27qZIBlPtgewPDM4b42J1043I0yA8qcvUozco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjavWpiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjavWpiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B63C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736590553;
	bh=mAvU08i5bv/NmrHBAjKW7gv43QThvKy6AqknEkAK9rE=;
	h=To:Subject:From:Date:From;
	b=fjavWpizS2MCeMj12hQCKVY/XIslSWSyzB4k13wB3LB4rBm9Y4BB4dNsrkffIy3V3
	 ZkHc4bQgaOvq+RBWO1dR5qymNTdsQTlYPpCpdvOGmM2bd29oG2elAjjaefeNZlXpr5
	 9zd6Q/uZtfr7P1MMZNc+UM9umaV+v/Y5oPo3UpMjOEQYyniO6T+J1Fa+RadRD7VYi1
	 FVOwSy8lkCUDwVWwDLFDYwQ2amDU4F2Lx8w8amDQsLrIG3dDjOo4sQE9fGQeXVi+pC
	 z37G4OzvJX8L0zDD0xr1ifzUp7Ekpvvh4OrbvyNEv3aqxNjROeEVxWIsQofPV+ZgeI
	 TYRwsCwLfJSxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97542E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659055359.31365.11695252966956035126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608c8a22acadf5be9fb5c474246d2c7be2e3b03cd02bd1f8e5c609182a732a06
Date: Sat, 11 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736590553
