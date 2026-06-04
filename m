Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5946D3BE17E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780578274; cv=none; b=EuuwTpfIju0NkVlRtbuTvw1RMGIv30pxQ9aGqJs1SvQaeFwg0dqDr32qBfL6o8np9Czb4f0xbdrPdUIub4fkBxz50cX+8l+1na/VWbHuprSCzuQbYxuOlLd5vu6hoMR9lrQU0XIjs9bZeXLdOjQwB2kCOmIQhHXHzGlaaVm6gSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780578274; c=relaxed/simple;
	bh=4Ux2EZQOL4wPfAoacx+m5+SYfp09GrdJAnuFfTYfymk=;
	h=To:Subject:From:Message-Id:Date; b=E88gCVJo+of/XzmOwoGJbmtVBvKD8GQdtSTDWqRfjVnvpDvYtk6AY6oxaaJkFXjGaCjmulELmwTZ0mDatXWoZ1g7a8q7ol0XMupH/RwpZ19IAnTLTbw2eGLVSzmyxXucLkfIY69RJv+T8sS9CImKW81edea2e0fgNb+oob79gJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRKybj0e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRKybj0e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A69C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780578273;
	bh=4Ux2EZQOL4wPfAoacx+m5+SYfp09GrdJAnuFfTYfymk=;
	h=To:Subject:From:Date:From;
	b=bRKybj0eNdadc3s5HyLDhNZptHsvpGnuyetb2BenItKv/77do+aMudcuEdW4brJPp
	 6dv/LBsGcMs7G5a1pN4r6WFh70rL5gc3267Ogj5dFIZBBpSIZvyBsU7Gh7RMpOxab2
	 E/6DZy+Nc/G127ZTLWgAy5M0JYAwVmEeXuty1xLrxW5HVXvFi6ByB6RKhBvSRdNc8F
	 HewqIsJ5dNsOY8gjDWho+XxzyMoaPD6dl3DKSQcv9keofVCkkcpiHSqvIJwFZD+Y37
	 k/KohuUov1ncDXh30V3C4tX6W03/hH+u0/2yTltQvwa1ZaZSSh0ITicr1C+IOIobND
	 P+f4rXgsxAwRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC84CCD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 13:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057827369.13312.5660482676414314473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ecea29aad575391874a433cc34b5420fa1540743c8ecdb27034085e964de11e
Date: Thu, 04 Jun 2026 13:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780578273
