Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F9718454C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723478154; cv=none; b=ayoPRqOrrekStgIXP3KR9KvQqYMM0h0A2Dno5MVWDirbwlctD4N1kNF9jHUduFJuONAf98YizU3Hb+ygshwciKCCyxOFRfgi2cRdj67BzDTJ+4MZJCruAwVXlTB7edvu6h87zFebwGCau7HL6eJazUt0wGO0XdkdJknKgOQs94c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723478154; c=relaxed/simple;
	bh=VxYj0FfgumQMYB8K4Saj6qgqnqAwMSmNLE5ISp7Jzus=;
	h=To:Subject:From:Message-Id:Date; b=IPtbeMHWd8nUaECYpoIjXhm37TMDPLhGpEiGNeku6JgAf49QcjMlWUM5DOrVYpqNJurJeDtn55xbK4MOvKwkpHGFOtYjjSLYMFSImk931r60JER+gqOxxBBL1DjxcH6izeX694SmuPK1vM3THuuRiEOINmnBbcYJvE3VqUnwnTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlxfmGaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlxfmGaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3158C4AF09
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723478153;
	bh=VxYj0FfgumQMYB8K4Saj6qgqnqAwMSmNLE5ISp7Jzus=;
	h=To:Subject:From:Date:From;
	b=TlxfmGaFffsE5v6ckcB1Pn6oQUDWMMyPtqWx7GzRxt7nWFg5i3zcofbh/CTfsJS0v
	 h8Dv/kOR87ktPtD1++tBm3ARo7wCe1QE/cGiWfn7x5Z1afWG0lKFSK8KuIzjjoZI12
	 sQ5ZMIyUclxnTCg4ViWJuxBhZI1L0dLincshA3GxBqzWj0hwT049pdxYoWEqHppt4J
	 FrE8coNfPnp9/65CXL1WVJl4S9oOQSUzRcfg76fE5s5y48feFWMxyH6qMFHXUhCigg
	 2+poqo+ktFzW9/2o/jl9TyJCPlMXmaTd0G0DyzsVq0bhfsMee/Mu+1GnGHVjI+lQEs
	 cjghmcWCkRy2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F85C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172347815359.15747.15211365997035101288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f750a96c118a98b510c05c24f7b5905d9ce6ad12686a2222cf3e702c55e7ca
Date: Mon, 12 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723478153
