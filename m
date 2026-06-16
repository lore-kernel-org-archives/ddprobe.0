Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0793ABD98
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781577394; cv=none; b=dKr+0XzDu8ZabDgPHVDCeJSgLYCwqexMWCHLI7vYfdcf3iSAu6rjAPOYJ4UDicEYWYqmcFZqODTjcJoIACwUXevovH+PUgoc/OmPoBxu9eeo894t462Mp6Mp/qRtyjiyNTYXqiyLnbh7BbyDgwgsjMUai9ky9dNLMYUQ68uTiCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781577394; c=relaxed/simple;
	bh=faTz6YqYpgRjZVxifeLSHIoKRSiquNODuJOuia71TaQ=;
	h=To:Subject:From:Message-Id:Date; b=AAyR70XAYuoen+H6l/Wk4y4k1TnC8TjhHjGhqp+95zfnAcMmwukoHfqYc2AV87XZOfMgwJqdoFCH9h9Xhmxvlca06jqybx4XQj4BYvk1tOd2TXkeeBqbwzafthWe3/xv7FTT2526VfpQUMRN+8ONFdq8mDxM4emT2PsF9jqCIjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyJbz6xf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyJbz6xf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2160C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781577393;
	bh=faTz6YqYpgRjZVxifeLSHIoKRSiquNODuJOuia71TaQ=;
	h=To:Subject:From:Date:From;
	b=CyJbz6xftR6Y3F29zIzqVJ/dC01c0vxgKSeeQrMDJ9a+PHomwg+haoQSqyaIpPPhT
	 OaR11qfQjL3UiUlgzeNGUbHvaJkxN8OZExeleJTZiMT+ftpwyRJ0kOpLFRSAOE0s0k
	 AnRAsx3QznPelB8WQHNh/KatBIug9fDkLxWqz1IQwo0pd6agSYl/BFXZYbR+85hnRR
	 0w6wwg2uHAmP60TcCwylW0zP9IWbX9yySOZxkdTi1+yKr3KUaxeya52iDiFJABn9eG
	 iNmerdsT8kUecWB33OG9CVWkyHAdoC9EPKix5pQV5tbNElVFCh2tZVnJeIrzyQw4J8
	 qtj+xyUAL164Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B402BCD98DE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157739372.14238.633295749429749718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958a12cd531947cbec59b43bd3062353f816561d10ea6775c4b89680ec92bb3c
Date: Tue, 16 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781577393
