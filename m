Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A31634FF41
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769049834; cv=none; b=oYNh98K8Mphv3KXaRidc1SDvMBxC2FQ7m3IEMYUkpvVGp0eOrYFStF20D2jZMpGbGWuxPuAkJa7oToyB+5b778FmIE+ORRyH53H+sD7Tu9Hln2cwLdTfUJzBMMU2+N729s8APvBCN/4WdCtVM9PH6fM7QNjLMuvVVFqoD223JEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769049834; c=relaxed/simple;
	bh=1YMavaicj17kgUBU0EolneIF0ISFxXGTv67ynCjeB9o=;
	h=To:Subject:From:Message-Id:Date; b=uL5iG1ftEKv0ufkuv77jBE+mEY4LQLxaw1U4D7qWdelmjzYC9NvbLgXfqMCcHTQjyuSdHiDxUzMgLpgFUHQb+phMJyKODIn1LI0FxE9qVqGCuUjhLJz2U8MITCEJ3V+hxbvpVPhv6wd7wsq8YGRaZW2JbWP/GOYTpP+mASlUafE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzVuREU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzVuREU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F98C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769049833;
	bh=1YMavaicj17kgUBU0EolneIF0ISFxXGTv67ynCjeB9o=;
	h=To:Subject:From:Date:From;
	b=bzVuREU3jvDA8eotTf+PDuWp6c/qIoVJkcGzmrKTE6gH6xp/lR7GP8ys0Eio5w6MV
	 h78qMtdvUrZa1sOAIy+CJAK+nrsE8jUr08x8U2E6JXCxfPL+JiBDqdISVrJwYtV2hJ
	 4EhxNEUs3X2geWcBGfkxUnM09wsYwrs1/3zYj8HRKidb0xm284Ew3sShM7hW31uTc7
	 diHDH5SRG5vSzsKYehdCUwr4GwpBiYWAdHZ1b2gXfP3x5QnlcZvIVq0UGaOfyoUr/H
	 CyhSCr1maHgZpQPI2TCPR+Gfyd0t8FZ4MEujob5CgLBMR553Ssxr+E1Ue4SXpUz28Q
	 50Lf0F06gnhxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979D0C44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176904983361.4949.9210904697661560380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da65b0e3de87ed5c54989e6f745cef3579fb40f7e08cac4863a09fdd4cd49fb3
Date: Thu, 22 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769049833
