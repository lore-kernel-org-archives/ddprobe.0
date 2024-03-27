Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE8E12EBD5
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711580296; cv=none; b=bOzgOcyGZv3SNW5alnX1VVGTr3b1NOSgkOa7xVOBlRT6P5oDoIJK2IVvp1TgXWUxsZrbZ7apQzBRL295T0fbDI3d/BnYU9NG0ne6gURIn528rnclUkQPBlka+mM/Ydt4wiGDA2cnGPuYrw/NxIXAIS3Nab8HPzaCxXcPP3KdQY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711580296; c=relaxed/simple;
	bh=EKLGbvYKNZDEIUafmFToNwGhQ5ORLLtvuqVZsTsGw6A=;
	h=To:Subject:From:Message-Id:Date; b=lb3nDq5cWYVhzIpHt/2JU6af6WO6bnap1WXHnXbU2Xc2mHDAjzdhUbI3pDEXehHupGLmKOIbk5Ptt8A03TDUHkyYt9ECRI9YD/M+PBcpoB9fMsHpUMfx2Xxq9JqB3yM3wVPTmVFglZh/v9R5VUxU1s+esBmDJ27ansYda0Uk+qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMyzOC2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMyzOC2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A2C9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711580296;
	bh=EKLGbvYKNZDEIUafmFToNwGhQ5ORLLtvuqVZsTsGw6A=;
	h=To:Subject:From:Date:From;
	b=FMyzOC2+SIzlvxhILnG0qg0dY43JWS+ffL/3sn70zEHgScHSNFH/6LClr2MDmxEDk
	 /6H4M+XbEwuxGGSzwB16Ost/rvRGd0MgJdHogFgTDWkuTIlaUaeQRXWKCOYZqmO+0k
	 4i2EluWo5UpsjAsG/r60pIBbarpPZO0cq1FQUraxYLamH3mQdAkwJppDoyQayJtCZ3
	 MHL/gQ/vvA1cDp94wivWQ8MQnVSk3ziInU5grgx9eXR4U0giQizIYctALd3kISPn32
	 XkqhbSFobxmC5R2/lvshn1NsdAjej9yIBNe104gCmjRoCdwhFAi65rjkqJUZNanPrT
	 nMZxD45PhtWgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645A5C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171158029640.784.2365424989043947380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237ec9966ff0844cf97194d7bfd7682765c845184947a854f2131cb5898699e6
Date: Wed, 27 Mar 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711580296
