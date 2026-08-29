Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C8D3F1048
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787985634; cv=none; b=T3CR3g/LI/X2yTAP98HOlgoA4KrUpBls6kK0E4XzlGKjwyzramjY8FJGNyuzm0UJijatgJB5ke9ueqxtkaZa/wBTYBgj8SHnLSoIoL0RJoBQugBSz6bQqes7IloAxRv/1OBgcYaI8ej9z3jgjKmd98XkkTHYm2nrCNL3/qviUuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787985634; c=relaxed/simple;
	bh=5L8MeIPAFSWg+D7BbXJHAEGBfIrYldxaxSCf74xbUHY=;
	h=To:Subject:From:Message-Id:Date; b=FOHUQwtGe/11UJBuRKnPK8emFNR4JyKpBG5fECHW77AOZ+I2/RhoGBQsjAQrhgJHwDgigNBsOfzrjSWFmn9X/IMB2r+nOP3OGcRyaAfe+BKZ6XO6piXZcdzLP6MN6SYRUKuGZUSWlsuxdq87d+uK9jSup+VEfIsVnWKoqlEETng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8rUHS3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8rUHS3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E99C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787985633;
	bh=5L8MeIPAFSWg+D7BbXJHAEGBfIrYldxaxSCf74xbUHY=;
	h=To:Subject:From:Date:From;
	b=W8rUHS3Bwtp/98UbmcUibnQO56YXC7t+ec1cNU9nVJyNoux2pT0MVtp3ll+0Pdka6
	 8S6r3/R5zKPxsero4Pp7mQMH5nLFBRnLVxI6W62xGkl9tFYxCxxyunpe37Xa7Rmyj0
	 fJlEcrvRnZYTq/K1Xe4rREJOSFqeE50REy8WDO3aNcPlAXVXuH5EDzri8zdNHjbPEt
	 Z/xg73rvrPZCV0bHAbM1WtlMLzDSoEq92hbi7YeNRy8LcHioZ3ElQ/kHTX53qHqIv5
	 0PkN+CT1GI3xW1HvX2hjNNV21rgBwyNYblPD8AKpGffzMR9P24KSYAzmX8LTTelit9
	 EknhRq2eUdxCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1404C61DD7
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798563368.5987.11486143463258842459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb7fda39d6f08b573894406be79062053df344051deec264733c2fe4a2e70c6
Date: Sat, 29 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787985633
