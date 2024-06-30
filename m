Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBDF1527BF
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719769463; cv=none; b=t93xR+TKa7JWwGKVgenqbknk3FBg1ctzvpmp4BNBOfowwIn4RVImvVmpOv1YI776gJqRhg/U4pCqQi+Zc9ieh5g13ZiX/5QUpuoekTEgg0dbLB/L4sqIL8Z3//vIlP8Ju2ifxIaFAiSLkNuXATRxJPbXJDjrL3uB0XgEpDumcWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719769463; c=relaxed/simple;
	bh=A6NHynLprgVwHMUBfjfB3lKZfpgfgmy5Pyooi7jBzbc=;
	h=To:Subject:From:Message-Id:Date; b=A9Z/W8newrHz4FitlaJPz6GexlsXhP2tAUA41ljJUyNbJB19KLMtsXJvhjLlUb3ZOUB6J6ilF9tmzb+UJTes8W9Fb452Ln9TUndN/NQnpk3rK4GrVD1M/dv6ZtjuDLUyXWc/4xpWMnDEUS//YSnH/uHaAqlGgpDLkAPXRNA/B8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfglxZ49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfglxZ49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA74C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719769462;
	bh=A6NHynLprgVwHMUBfjfB3lKZfpgfgmy5Pyooi7jBzbc=;
	h=To:Subject:From:Date:From;
	b=QfglxZ49MVj88Amp21Akui+XzZTz2oIZddpOADqFyHjz5eXLDxaIijX7Pcup6vNRH
	 ocELUDyGEcpAInXyA8zgZPYhodsHALg1HFfeWSwPdRZ1tKwJu/gDjfvK2gCRcmdjAT
	 brWyt/IJ8nRZLwCqx1abbaKfPhDiIeJVX522ktX6Wds2uWLV8COXOjdsbO+ShtmHvP
	 v1KZDUj6dZ1VzadmIJ/O7wxDawMcMLRG8W6q7HOO/I1t204nik8tuvI25SUf6fikyZ
	 4mteZRquMFcLD1rRx5p4pgeBFATXuRr2OdZ7VulFyNQDPyfs8TfOXoeKx04HRsylks
	 JXE8Zp0rM1/ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3CD0C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976946276.14521.18324509559762890958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c59c2565f9fead555269efb3121c8afa90805c50e6e9705f14f8ec62828d5b7
Date: Sun, 30 Jun 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719769462
