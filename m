Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB492F8E9E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783439314; cv=none; b=sfLKMbx2+sSfy/KS1rBEZqe1QMIu1mQn1zAc55cZCVigq5GjypWLvxI44NSgf2H522rboUADTqhfVACXXvnJI4yAxjsI/26OrbfVAtXD3cCl4jbSm31Vcy5KMnQOudIsh/2ECnNxKO5e2YJv03CrtF/GLSykSSP5Jat3RDoOonM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783439314; c=relaxed/simple;
	bh=8YnaskR7be5IW+Qiws4tfyNfg6RiQkvaHsFA1/D+h5w=;
	h=To:Subject:From:Message-Id:Date; b=KCim4ony47pcLl9iZQLPxU4muLIkTiqO9+/4o8w7wtKeEVLWXQOYhUCvf71etH6yjB5IAbRcE4nRE+mJ/AOoa6N3Qmtt3YWSbmeetRGz4bP082VysDemmLJr398CuD9nLsJWUmVaAV8YIiZ8pLddKNM8Qd0hjuOCiX2eaTQmQjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAYf1Tlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAYf1Tlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE13AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783439313;
	bh=8YnaskR7be5IW+Qiws4tfyNfg6RiQkvaHsFA1/D+h5w=;
	h=To:Subject:From:Date:From;
	b=aAYf1TlqkF7gNpJAbkcww8cxytdcLIZ+BLAA1q8KJl6c+3qeo5G4fHjTuPkqvFmMF
	 mcOS0fNSm04T3/bXumsPDTORrEozytzsHWaQ8T4+/W5m9EEYiHItCusUt0tSoHbW5u
	 yWeE82Eo79hP/PAPvX/rkisxVAKT8URcgHxmaNRqDuKN+cPwiR9MCGF0QttnGsJTao
	 ILedCSh/+CdOKPGDITC9bBv7OUkgATtvuKyDs/nBz5qnrI02J036k4IppLqEm4r819
	 Xqdhzzcm5UDli+SBcKpOV099EF5s2rjvVVR7DYFIZWXNrU+66lBXaV7lcMUyu+/obl
	 U/iok/BeM34nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D0DC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343931368.12603.1799864455781300866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165d8920fdba8f95d66dbe285714320faabe759bae06195bdfbafe8533433357
Date: Tue, 07 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783439313
