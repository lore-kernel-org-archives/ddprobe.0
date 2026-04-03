Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373241FCFFC
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775201734; cv=none; b=fxW/4l0X+gqMY6o7svia4I0PLl9vT8dxrJ4NS3G2HX9ecMBY0VHV8RAbu1LlIUPAp5Ae9q/CD8CmaBbd940rw3i9DM5L59lVL3pGO/R5+kHIPDEd+TSe/KJWjlKFudyRTxtPtieWOEsJC7p+cDd2MG5buW2MYfblCnh0bRT8FIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775201734; c=relaxed/simple;
	bh=b+KqTyQWlPf1Q1r9QJ2gm0ZMPVcI//ZIqCXfo1iVv6A=;
	h=To:Subject:From:Message-Id:Date; b=WugcERf++gVpItvhjUv1EsIn/y7hffGpDKLND5SpBTzZgITg3dNxhDYcZdRTV+E9UA9rRERVf1YRv7vLeqZYlheNALVwtBS3W9acfybqZQlZB+rW490Yb8nZKEaXOxuc5Wg9xD+gV/fybaTe0shysTUIqZjZo8D6aX/BgY3lNbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5v1N/2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5v1N/2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD1AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775201733;
	bh=b+KqTyQWlPf1Q1r9QJ2gm0ZMPVcI//ZIqCXfo1iVv6A=;
	h=To:Subject:From:Date:From;
	b=P5v1N/2im5uSsInBkdK7YTJaWGKRK4F3lro0AoSybGi5W0emb8oMi5Ueuq389CpCm
	 2eh+aWZbSjyw3/af/5/WCV1JanWpu1DzgGsCtAspCvWL6aJymuI90pbiZcAEtmKaS3
	 Gq0WASBVUaQpt9doRCOjXghGGwfk3gn9u/W4HyluomnZoauDLf5u5/JxVnfuWc74qb
	 psLVr12Mf43Ewxr2nvrlXCcoFV/QFaEoSkmAE/PaNpuZaDDpGZqPhYbnc+j3aklIPF
	 8lf0rsr7RcLiqJwns0AIYmVTlurAbO5LwBwt/W+EKZiuT5/wwpBRXBG4oIF+svC/dA
	 azE9CLIiSLxfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF9CD730B1
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 07:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177520173369.8330.10743101280558492274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f2a9fbccfc4169594d620e61e4fb4908b0519e0026f0af7f32cae4bc436bed
Date: Fri, 03 Apr 2026 07:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775201733
