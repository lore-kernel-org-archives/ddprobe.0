Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED5B19E967
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760026794; cv=none; b=LBNxCXHmlDxLez+0nrjVAJDmHEv9JQ2XGj05xiorYlbgwNrNcz8IBd9iYwXm+aUiruDBC7P+0cGqozfFDC/VY8DGn7iFgZDzyuMEUnBj7gh5IAIeD6YmJ6r/vIr/4nd4aZGfG7UBKamfU8ezFcn8Vyq5bJ0DmyyKA4SJLQmAT+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760026794; c=relaxed/simple;
	bh=I5SeKxCwWHodnNvLi/G1aN9S4zzCsI/LDE41WgISRks=;
	h=To:Subject:From:Message-Id:Date; b=K8vkj9Pqa4HsWq21ntK311IGjT6G0v1XwhWNNHR+2u0ikQeJXt51dpSuJkkDupsABMiAP04Wha1wYrZQepuoMBt25AH+gg/K2IBb6UVHtZQ6ttdIofEw4FNDTVI64Pf5xrpEaYfVC6yGgxcihmW924366nJodEKR96XegUfvxxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcPU8mx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcPU8mx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4296C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760026793;
	bh=I5SeKxCwWHodnNvLi/G1aN9S4zzCsI/LDE41WgISRks=;
	h=To:Subject:From:Date:From;
	b=HcPU8mx0SPxkMf6bk2N8sizO/i5Cn/IOdxzUqzCGggMQ55wsQ9wh+0e/tE8x/AmeZ
	 QFb0gU3UIaIGgCAUS9wRhY3/39WNiaVd2z6+rabBLpiDRNoOKCJJN0Y0D3ICaCiXXT
	 XGr9ijd2U6L6ubso0V8aleVr3uRxEttqSDNeafwyXPn/u9pJLtgp1AkYFH+yw2eRWG
	 2PWn7UWYRlC23TNBEOQDvRUezLqgkd7vLKnf+VsQJfmsP+bDn6hAKfy1l07cg/EX5h
	 G/KObn08QRDbnMHgReOWgNOvLp/ne7Z+YmbgpEi9mfGEwsRGFGfPwu6Qb5pd3g9ZOG
	 jqJTJR27pe4Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95282CCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176002679358.1990.16490560305285052996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208276e7c10a582dd718179c3634e2ce8b1d0fee2a8fca903b094b99ad708b9e
Date: Thu, 09 Oct 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760026793
