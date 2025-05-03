Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE8E186A
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746232194; cv=none; b=MuucRudp8ySOXwZJ2mw6rPgeVQ31cTAC810pQ3kj7gEpGarwJWBYZwYEd9lqSvle7MpdCQSfjYhp0HoAOVrfL7u++LyWocD0Ijt8rSN7nHLu3YDMQ31huiJm9C/XA3HAZzTC5dpsoIEccyItlMsMU2e2zTKh9/b5TQbdddadEJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746232194; c=relaxed/simple;
	bh=O37Ma1em/VLwunqKM0CTgAKiuURuGCtAHxpRbF1iyl4=;
	h=To:Subject:From:Message-Id:Date; b=Mze9nNzVFtutr8yIbz8oAeS/asq6CwBHYC+BzChRd8tJ3AX4sUUMG45SemqDF+lxMoISDPEpT7IGnou/ybP74qbOx552uyKIgNmtbvLOzTLrV0RcJZUHefP+zh5SbJRLiQClWy0Jl5oRy1hqJ+On3j55blQfWqy7uUGqlR9kav0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWocTvfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWocTvfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BACC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746232193;
	bh=O37Ma1em/VLwunqKM0CTgAKiuURuGCtAHxpRbF1iyl4=;
	h=To:Subject:From:Date:From;
	b=JWocTvfukpGMjVi+SS2hFTMabk9Ymdl20RztUZ+CVGupzL/o5T8WP3ODpOHCdvWmu
	 0ncuZ1yiy555X7UrSMfxc57q4sDTd/BPJcORUcBe+FTgRaAWv5oX4EFHRWELmwK4AN
	 SsOvBGCTrvJyNdA77bJryOlJPeHEPQgia8hKDDwXuBWwxQ1Xut6+5isxrTQzUAw/zS
	 PsMYP9yDKD2RHRoZq8T9VuR4R96dQ/o/S8FNMBXHZOO5EfIWUETMVcRwTEwvNzcf6X
	 QpZssKqgo68juXJqMw9q9KNvGxxQm/9m0WmAv2O+llIO9q84eCA5eO0HBtEV2Hqq+R
	 SvWFR9dClcEzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95534C3ABAC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174623219358.29958.4723912989618815109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b5a7d62cbcacee144fbc2569e8187c0749f7bcb80a5f09821a0de96dd902be
Date: Sat, 03 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746232193
