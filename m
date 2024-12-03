Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30625204F8E
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733257554; cv=none; b=gqs0NwB1iKPlQ3UE21yQij5bBNQAO+aG3j72q5CmilA6ApFHKVPDbD3UrDGSFORaujc5ZJtQbRqVJ+amIMAmdlOrYUxlIMwqH2DHc1M39bukoZtGfRbqlwgCBfOBMlgatqTiMtsfVrfyYne1J1nktb9cshcGq45BqVkYOkScXFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733257554; c=relaxed/simple;
	bh=gYyo0kNMNg4rkyHVvkVFJEspYO716uuMWdipN4uwI8c=;
	h=To:Subject:From:Message-Id:Date; b=gqccr1cGmJwEbdnqxXSWSLNEnX+gcw/cRjSnd2ZbBTM6qvDEzR712RKWrc6zR92W0uQKnZgbiqSPecBUtTaRIYFYTtO4YnEf7OUahHEiojVklGbzF8ryoOrk6/6UvJDQj8xHynS5bEMXmKNFHzGidO4fGMnhGHioanpEL0Ww9YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5gRBTCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5gRBTCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B547FC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733257553;
	bh=gYyo0kNMNg4rkyHVvkVFJEspYO716uuMWdipN4uwI8c=;
	h=To:Subject:From:Date:From;
	b=L5gRBTCGjNENymFyWGtzacPxhFME+MRVL7YmcQWH6iE4+EntQGOh0SOKSxfVX1twM
	 7ACKPt8jxJl1dNBnxuwbh2brsw6FC2WrQCgR3i6jjPx0G3vKwt5+BLuVGaVukkzxO+
	 evv+Pb8cMq2SFdtym3nBp3YpYOd628zK9dTp6RDQhGh0ySJLBUYcgafZ6gxr+tIIqo
	 fDKVa5yeBC9tKmHzVgvubbPP0CjLwUJWOpkPHsc88ebQbze/NDsM4DObz5rflFu4KO
	 FY1/DBayDOmycDdz72pDFMfvJDyl3gdrTyV0EM0x7oRKErQj70liZP/c6Vk4knPuzG
	 F/EMf4NPthW2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFD5E74ACF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173325755363.16322.15957155362860881676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893faf380caec9d468580f3c6d4079c5e51d976df0579e1a0633c46f8455c767
Date: Tue, 03 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733257553
