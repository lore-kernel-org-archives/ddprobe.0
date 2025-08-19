Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A5872634
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755583194; cv=none; b=sc9ZdHPGS/SWuZ/aaR/kP21Dd4nAKLAJUuRs2ohxJME6RZPD2rV0I/U/A0HeEz+e4QqYCnqq0jzQbtA8j4yJpGRkfDh4Xfn2NEqq7rWnwDfSCp54oXfJdRC1gfpDeckLAdcZ4mtc/PVVoIBC7Qt1DGd1iUsT5PyZK1Ug3+fUQ2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755583194; c=relaxed/simple;
	bh=nGvimN+bWbtWV51BmU8E8o3f8tlUI5i/gJwMAA2L5rQ=;
	h=To:Subject:From:Message-Id:Date; b=NTunfGmXHYybMI3a5R2RYTseDukv+srdLiqnaPgwqcGXW65ilHPiDsfAuvXY1bDwzFucQhRi4+SnpVy+DfYv+RT//TBopJObjCUBJihwRfdBOYMUwaUy0ibINeuJkQsSNiWqbZXXvbnRX3WrJtdFVgj/xhwqc9QrTo+H5kAbIU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/A+dwry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/A+dwry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0157C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755583193;
	bh=nGvimN+bWbtWV51BmU8E8o3f8tlUI5i/gJwMAA2L5rQ=;
	h=To:Subject:From:Date:From;
	b=s/A+dwryraRu78MlQ40XhEPSetQudHcgn2azysxq/RDPlfaI9EC0H3pr/NoxdTqil
	 zMhdvOupEhD5/6ypPnYpPyaC/+E+t13GQudLslUZLRxJl+hNwP3v2IIFuFKXiPXAT1
	 BSvg+j/VdP5j4FqLsr+8r8RtREsHMFd85TEo/daA06nhbWgA7IAXMrBEDQ9I8/EAc7
	 lr/PlyxerJtKreUrReVjhhGZTW7QUfZBeJ52Uty7OOWWNEc3V/5Pk/5iG9KuCxCqpb
	 9OJt8noxvmd7ZNV4bRLkZ/ZqG/8GJEJadMMbKUc3KymSY+ZTGeXp+T//3OkV1VEVkk
	 VvSVp5Kfm7sZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C0FCA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558319357.6447.17708379819976775329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946e189a88f3a6517055a21044150a3d140fe3e8e91577e220fac475a10cadef
Date: Tue, 19 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755583193
