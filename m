Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AE83E123C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788175834; cv=none; b=FzkU8pOMvZHPv8O6fM8QngtkudGBo1VyQP5FZB+eyiv+92NwFj+qspHPVZ93HR4LHE1FcssHZVgfw/MfsbdBSOrnfM6le1dNBYurh2Ugvu8xPGwcaNpGl8SiyV8MGDZOGP8zxaXq0nL7bt9RZ1PlOuSycLHvq3mUtilcf4/hpvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788175834; c=relaxed/simple;
	bh=Tn7KpgqX0GN84bIAi+UoGZXFAs5y+5E5sHmEhaJhV3k=;
	h=To:Subject:From:Message-Id:Date; b=E4PYmLwdM3Jg/IdDyUM9CmwwWTTtQIlNIZvAojFOTTicCgH8aQ85VJebOIqfZQDAqAxJlrG/pYFc9quPzEMNNOiqKMkTLam/axTR3D8GmQUM7WgHGELi7aAKtUfGS32nL1xtbkG3nQEKZTWX1oq4exGVyVz+HJAY5I+BnRye0l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCyNKSx/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCyNKSx/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6C4C2BCFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788175833;
	bh=Tn7KpgqX0GN84bIAi+UoGZXFAs5y+5E5sHmEhaJhV3k=;
	h=To:Subject:From:Date:From;
	b=VCyNKSx/b1cPbrPrAxs1lWAhQ1bqMT4LgDROZUYITsJfWDVChOmDZ69a+koecptB0
	 J19n/NWTY+2xAQJ79HWT9KpKIp6PqDlUVdiA4KnHpciV9MMENj2FX349VnWPdpUuH0
	 llawEgBxvhxs+JYY6VfUCAKvg2su5UEpXaC855YvcPSLM/URkfx0a63rQjwe+vaz2d
	 Sn13jtae+Z9+7etO0+7HV3r5Iu0HbOzmgd5iRcblrykSecqDgj6b+IHInK5eTzh6SR
	 9efeP6esh9hcnHsEmraMDspKHzS2wRLbSZJCc5CylbsVzReEEMX76bu2XzEeC+v+Ys
	 LpHjzqx0js5kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1FDC61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817583369.1915.7790369669040551265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f0d0157be521cb662e3fecf349a5d65b167a3bed20dc26d4c3993986ba2872
Date: Mon, 31 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788175833
