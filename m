Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D5F38DC64
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788414034; cv=none; b=J0UBH7xoPCB9oX37ry3Soz10ejz+yYlM+OG5w2HBhwHmM/s773NrJAtQUi3kU0AxgJRkSWW/pPt+A8FJdpZ+01Win53OMUJQbJE+m8BnUKMTFW65cFw6Nukta8eGQS5CAAOPN5SGYJpxdxR5rMKd+ViYwwCRC6kyguwykLyW7ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788414034; c=relaxed/simple;
	bh=dvv1Y+StSs2eGrcoqP4QCznSvTvMWAUCx7QCei0g2v8=;
	h=To:Subject:From:Message-Id:Date; b=ILvW+uEGwViWKcg5i0OOU+UjwpMIHpmVwmnNl13KGlio1qFsmYYXzLL/DbjzPhVJvijl+q2GvS8rLkBe7T0SzAJJz8CHxZk8R7AmlHrCEYcI8FbB/SjQ594sGLnR03YqyKPQKYPESZY2UNBhq44WngQP9gpFvzQF9gJYRp0o9DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTmLXw/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTmLXw/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4066C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788414033;
	bh=dvv1Y+StSs2eGrcoqP4QCznSvTvMWAUCx7QCei0g2v8=;
	h=To:Subject:From:Date:From;
	b=jTmLXw/+J8G7+2a2k2M2P6TgHmjcEF9b45Dt6Z73H4idF61YgpbpZyXu7rhBXmUpS
	 YH/WakeIk5bvZAZRPdl4Ee6YbNdbmsmMlKwmGPR6SuThH/8s7bEfw3/q60a6R+YoPo
	 i5dwTvgDgg+0dB5LNaFDDGdZ00arHmbXUNuyHGQmbh4ps7aG4AUezmhL7+o/ajvOCn
	 sqcEn9SVGEls+YtImLkAy2xcNpm7+jAZ/oqTxTgrP5kcmviylPa7KDNrZaXAOnBS6D
	 mF39w6oErvSbWeagY11eMh+40TeMO74Y2n4B66p+RNSW4CcE/IfCLrkCnvBdjtLICo
	 Gtf7vcQozhfpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF380C624D4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841403370.20485.1600283322938701773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62610d338aca8bbf149fb606b4fb912f9509387fb91fa086024c9612817a45ea
Date: Thu, 03 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788414033
