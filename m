Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2830E37B3F9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775816854; cv=none; b=D9Zqdho3xFNjurZ1pNTDLT1K4DwwNx+IttHngLI+plevNZIh9VODgdpiZ5FLJh6mdgRBjJd8wptglZriTJusFs2RWNOLD4XxYgzGhlFRmzyOhZPPDfZdHXnY9B6QCvwPltQg8RT3Rp9B7JlcRQmtC3L19SFq0+I3KbUEyoZXvTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775816854; c=relaxed/simple;
	bh=R2bP08vaA090iQFYG6Zribt6EpLMuLzgg6WAtB2ud28=;
	h=To:Subject:From:Message-Id:Date; b=e9FVcpEk4Weo7rK9ltvOXyMK1x+hFYsIYf60tRJ5jiBdaZdy13vG79mALrbMY+/KocFCNKJ0QHyVOxnoSRvfG/18y0wqBzSOqqYiF4rw7eHcAwD9MwGymkGqMRN5QOpUCj4V6EJYwk336WgjaeLhn9CpLIVt2yO9oUC/RyPeM8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q++uAmjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q++uAmjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FDDC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775816853;
	bh=R2bP08vaA090iQFYG6Zribt6EpLMuLzgg6WAtB2ud28=;
	h=To:Subject:From:Date:From;
	b=Q++uAmjJXFBQERBCwHsmY4zfR9XFMbUFvls0DvlhXa5aAuBZ/FMO+H+VE4jNd/gON
	 jjO8lLFuISvjvuwKTObsaRmFckjqSwgcEg06S5kxmaWMyLj6WZUkhzLMQR8w6HV+uh
	 KfMUmFyecCRUc+MUKgpsJReAck1FpJai7Z7b+H4WAQZwtVLt3VV67F/k5pEuIF1RMU
	 C92+GCWWxStb13lWWLgWWMlTR/w7lQRAUWYDqbrFBRAn2qMieRtPMDS4DrWTupgle+
	 TNUcruOBYoNG+01vLKTcFgH3PXguJYkoFs4gJaCro2H+kW84QHm+6upktWRIEnTTq1
	 JC5dVkEnuWIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B78E99079
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177581685368.32449.12246710008777975965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a425e5b4f14d232cd027067407c9170049dfc4ce134861a37bfaf3ce98c69b45
Date: Fri, 10 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775816853
