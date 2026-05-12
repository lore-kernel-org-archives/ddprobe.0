Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D774ADDB7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778578234; cv=none; b=JX/4ELRty5ILYCgF6H2aXYopTi0QKaToPB051YID290HjI/0I/8y2R6MeIHqYaRutKfdyJU6L8GvZd4ux6hyBug94Cd5Pt3bz/pBw6Iso0A/BaOEKoTthWUWGtvDGYF6/9SlLdPGYil/U9T/TIIhotuXAjiJlLnXcR52eiUbewc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778578234; c=relaxed/simple;
	bh=2xYHWgwKUcSrEQ82xjiWBpf5nnqnOaItLM6OngQEZCI=;
	h=To:Subject:From:Message-Id:Date; b=KWklGSiqmU7x21SLPoLevwfQ4LKeDcrYLwHAM7aPuFoBc9EeyYunhnW/KLu2f0LWu2cyKPRmGA9OtzzXmd5Ykju9S2Xok4rs2YfpnWXwg/G9ki4O50w76Zhxf8BcmimtSPhFA/4mGeKdp1+r2+3WYAuXlZQegSicKUB56CL1K1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phX6eHj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phX6eHj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2245C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778578233;
	bh=2xYHWgwKUcSrEQ82xjiWBpf5nnqnOaItLM6OngQEZCI=;
	h=To:Subject:From:Date:From;
	b=phX6eHj6NOq58R1qfQfzL7bFfixRSFaACRGymL8EYfyfz46S0u5LC8+x8Qw5uBI61
	 bp0IbaCKzv8ciyFeVfPKx+aCJirr+7KQDTtulxBNJofAlBWi2+nXzMfuEAEdL2OP3F
	 tqLzQPD4Vtl2HMCRs3vP0MdOD4C1yJCni4i/FbHihBDV6elxdqM2eP8IK9beDKV0Gy
	 uudB37Rmy6xVh4roQTFoOOAULkC6g5/8Ag147OfVu4NhQr+FayBKxedmmJQOlpFGJA
	 pFRoEjgs63do0l6u9k8RnGLQked1P+nWkKTzXitmzx+5tS9FKLsGwtS9a3jvkOcb3I
	 JfmOYHsInD6Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B38CD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857823368.28870.9859443421162002425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df5e80e9641420e3c76a92eff50bc0029d8ed088c07ed4c1e660e91e4459406
Date: Tue, 12 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778578233
