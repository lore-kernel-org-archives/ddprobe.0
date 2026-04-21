Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B3F2C187
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776784654; cv=none; b=owdapiEmkC/9FNwOv4KdRlvRAPF3PKAGABt/MtEOanAYDPT5GG6/3ywqUPXf6keO7K2RoFtuY+9MEDqVoyagum0F3i0E3Oap6PLXGNbgP+qt2Yyo5LtOyGi5RbH3VLbbHo904YPPn6YE/nqkfTAKadWg4jIsG8a7B8Vi9lfEqMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776784654; c=relaxed/simple;
	bh=GrUEayjwsYnRHhTlO/cDA+7vuxf18GruGIAzKNwDK3w=;
	h=To:Subject:From:Message-Id:Date; b=dM4bs8RiwgncG9DLBwEg8V5DrqtjnyHOPL8MKmEcCf+hqxJpRV53Q8Mb6yBLePdy0SnUhsenYPJNJLFOYIuknFPtWq4j5FAPV96c9yhdZ6uTDQoo/0aE6eO5vE8FOZyP3/6vuANeLgSnXAs15IsyVag5yYtKN/JBFSouDNO6UYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4jpkmlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4jpkmlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1477C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776784653;
	bh=GrUEayjwsYnRHhTlO/cDA+7vuxf18GruGIAzKNwDK3w=;
	h=To:Subject:From:Date:From;
	b=O4jpkmlj0MURGmTastzLYHrPhvwaPN04DY9DaJ+sMGqWoj8kMLjr6zPB+zi4h67lH
	 +4Uul1mm/YifFh7iN4duvIc6cO7bEYzUXYpf8pjykgMKs7M6LgpD3LrnD3L1tmsJ92
	 0eyDL1Iuyvie/NRPhFhLmq0+nL48Rc0vKWTBbXUFBTS+fMLTSc2ploqJ/mvjbRsXfd
	 H97sHJ6kE53QMvz11p38w+SeO2nO9K5RIcsNhSAikSFs4lHgZXREe34eBOMMvI3vuu
	 H3eYAJFDzUFIUzR8q43Xj0fNDuEiS3NNCON4r0S/4JTEdB1D3rKYd6RbVzo7OcI5ld
	 VMxuOjuH3KSPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC06F8FA90
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678465369.24092.16188205653840127448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12bd57305455c0ed61dac7b8b8ef6e9ffbdfd616483ffe578e722725d5ec7b2f
Date: Tue, 21 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776784653
