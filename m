Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AFE2F12DF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763411514; cv=none; b=TBS1EkFgGZW1fKNc0Ft3oxaecdYybLtj8MnKidDWs5F01cOGa1cpS2upnRzICPCPvUURZreZ9DkZtNc8oiXubRTeB2iaO8Fk6CrZYChh3Cg//fXhxfAF9ftbcLXhG+tigaJlgLPM5mruptlrVt1eI0qNru/Zc/9hWvcm4FB0iyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763411514; c=relaxed/simple;
	bh=WGrmSH9POnrH7mUAkFChIGY/y3D2NyEC6QDaFaOdphU=;
	h=To:Subject:From:Message-Id:Date; b=QC0qIPG7rz7hvdIJagiqPbPzrZy26exu+pJZCSEYbwuW5xCihtOvThh41qmv55RMqENLXnk+NiT9Mnj1nBaMK71sYpqqYb0GQyFPIPQV9JLe/WgYVjQElJ6pSzBBQzeaSYFyVndgcJw44eOiYgQp9jPiIGwtvCRanfbz7O1h29w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TV5xdL/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TV5xdL/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9698C19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763411513;
	bh=WGrmSH9POnrH7mUAkFChIGY/y3D2NyEC6QDaFaOdphU=;
	h=To:Subject:From:Date:From;
	b=TV5xdL/ig8JI10yNXtYhNujfi7qt4gZ6l26aiRIMAhK/o61GUxWG1LjsD11p2M2Ag
	 ZS2RCW9PZD8F93ufagsgfYC0Jnj2ReWopCF9jHr3RN0pPQPKzUkjMznB0X+LzF/Yrw
	 2yN1EtfMAZIAOfvWsi/o8PwX2rw8x/0ApzvLbTpGAJBAXXJGYxA3OWUXiFhyhelcG8
	 PrGVYQBE8PROVHEwG8KizyGLfgkRNujjbwPj0q2pSolblVKT+tlOVm44CLBScKO1Ls
	 rE+40EatZiqMZs0FRzbaEaEYwbCEkxgr8AQlrIbEJwl4Er2gD24pxW5VwvYeWZ7alK
	 RgfuS9iPqnWaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9526BCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 20:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341151358.992.389739100149209746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbee017abeace8f52bd8473066f3c90451b1462d3265fa720e4fb435d3c9709a
Date: Mon, 17 Nov 2025 20:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763411513
