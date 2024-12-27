Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEAF3D69
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735317354; cv=none; b=UWKlNzxb6iAcTCl6H22xNOzJCC1Zk0dxJO2eraEHbyNKTLGfCCJc06XFWeXDgnFJsiP095pSQiOt1Johewa5Vrym2Ccg2oflH8DV0PK9m0UXeUNE1rOLAOB7a2KG68jNinVEaFoxA8egeor1MxjSJBT4i9/27xHZ5zwo2C2FwwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735317354; c=relaxed/simple;
	bh=vQdLKCAVSofUQR0kbJSQok+SFcnpTjivmjCCTIVMw5E=;
	h=To:Subject:From:Message-Id:Date; b=HssSS9ZX0cZhgjp1yAKN3gexShcV9OxrXmC07NerR8CYwAEgcD1beEpjfZW+dYKYM1fC4ggEe44MgAemZWTL6oA76ziuPrkL+f+mdVH00WwCYt6VoHThpcQ8lx1gbdIdSEi7qp7SJid82isqWrCJ6yq2Y8he2iwN0O+bS5VX2O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLcegDqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLcegDqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F4FC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735317353;
	bh=vQdLKCAVSofUQR0kbJSQok+SFcnpTjivmjCCTIVMw5E=;
	h=To:Subject:From:Date:From;
	b=NLcegDqCpx+MNgqmAHSFeq5/y92dUp2WxTz3Ezb4SmePMeq0ONegF7q40VgFNiJeF
	 ILxR5Vedt46tPWYfTEDY/kQAD4RZD6LSJIlhw7jEnO+DzxyDOcJznPlC/t7lcwqnyB
	 sKTzYyHz+ieM0XC3mFNVcZzq5hEnoQoX5byYwn8XB7VAeK6IJO/8H2yVeTGgv81MvA
	 idfI7UXp5CROCndFOy2TUBsZx8gYmHG8wHZqzzAHDFwioBEcsYXBLwYpJaLo8Dm4M0
	 mVtPp0hP9oMLNHlICzJ8TqzpFygeYqCvFtWrCmfQHlgHR8CCIEd11taHOhrgxB2Nc7
	 V1gsk502vL9vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF03EE7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173531735365.31104.12056207405074289628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5526be92b8d5bd00e98ec70e904552188f91f73d3f25bcc0cc8fad8fe582d93
Date: Fri, 27 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735317353
