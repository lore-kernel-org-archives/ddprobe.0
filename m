Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385EE2DFA25
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780859674; cv=none; b=DJVRV9DmnmRL0OLuIVW91fPmaloSUF7jrjCY1HR/NXN4qEGeSfQb+bLB2V2in+D63D9dQRhA/1RkYia3WGLZ6cCCY7rXItvlXIdfGLKvcx8xFiGp6dZLDq3n//Mg+W/2lG2L7p9jx+tzTQUpd4pMnR9z3BZfK/LDYovj8NYTObg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780859674; c=relaxed/simple;
	bh=YOfsjMvXnsHD2KuLn52tSieb/ijkPcKAZnvHpkb3z30=;
	h=To:Subject:From:Message-Id:Date; b=IPHdbUyqN08ygR47aP0iclytPFJwfboOT0bYo+TpJxYgmryWaLaRqB+VAvzZ+NKzinyuUMcfpkQERtWKMUDsI6sMile3VQ8m+6rouKhhTPCLGA1VqkdxTLC5VFE575qhle2tr1wlfxg7V+f4nlC2AZelmZCKX7QR7zLN9LxlMVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmWrnmJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmWrnmJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C47C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780859673;
	bh=YOfsjMvXnsHD2KuLn52tSieb/ijkPcKAZnvHpkb3z30=;
	h=To:Subject:From:Date:From;
	b=qmWrnmJjkrct57ikUDA1sAowjQaOz4bjMB2oW26vqkA6glgMaMfPWzMJ1KFz+fM/z
	 sNL0uP+++SOyUwCn4WR26AzjEUZusi/2aTCacARFSaxuVwHeXMHJbeN4dKiTucGHX9
	 irSjXo70VF/YzDKkZhSjBt97KalB0+IbUV7Y5QUevvK1G4g2KwKexzdhhUDB6dqjff
	 5kC1lyaB6aBbA/TTU5BW1prDShFSCdE+/MCAWKCqpLLe96BgpuAZQIja5J/Hsah0wa
	 /DVSrcDEEg0EksifUx+4x9nHu6Tdtw6ojTW3IAUWklXLK3mSKOaGwGQMqtESYlXTlh
	 EaMI3HVz/S+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0974CD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085967368.11105.8013849356605547708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea2eed015025ef22e88551939331373f2cc2685896f54983699fbc1474ed4fac
Date: Sun, 07 Jun 2026 19:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780859673
