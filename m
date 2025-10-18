Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125831E520C
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760810994; cv=none; b=WyDwXSRy70xadm6T5RDFNYjr8LJ3NypfnqKW00EnjrJSSQPmid108DPrjCR8qomLI1UR5E+9L8wgcoynmskzpdszWpMjBxXFxb73bo1VZ4jSjG1hPMuM+7cT8BLPUbh9prAItVo+yyydpJqeCOilkvaDDoe9F8JvjPPwsrYDu1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760810994; c=relaxed/simple;
	bh=Ao0LmEhSd/2MpbBqaq3n9M7WgGXly6gs7NhV4oJyhuE=;
	h=To:Subject:From:Message-Id:Date; b=gmbcZElQ6WEUqlCWt9Xic1CikPLmMlVvHOzM2dStPUSFSHBZTr8T0dpZgERQiiFtR7l2jD0/vgyCgcc83UEIGdsmlstro4PGfq2UA2qqFWd4ZsbOtCKrX79jPMfeE3eR7RmFhHelXDtGGUx/n+aqjETue1i4CV8NAFEFbrbPaeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqJqWHI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqJqWHI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B06C113D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760810993;
	bh=Ao0LmEhSd/2MpbBqaq3n9M7WgGXly6gs7NhV4oJyhuE=;
	h=To:Subject:From:Date:From;
	b=hqJqWHI+JetXSx3qbalq+Rx0fBt2Md7StVm43aNDP6rLTlviNc6cGI8SDIigb60hB
	 AVS3n/l3C/dNX5aP4rGjrytyI2Y0S5C2PckpvYzx62hESkzoR/7MfyRbvSkCWhtq+z
	 G5+bMMlaMA7rMhpqP5xB1xinGKO32/IoaiMH0gjOKnmh9gjy72DPKvqcARpJoHG4DY
	 XGiMjOEdD7Cj3xirkG8U9X4tzzsgBK3I0rxBzu8QqTZud5KFELR/lLoktKbnBu5lIU
	 3mltFhZDHHjHEvCOXSu/k61d61eGR6b+2n/qSd6T7r4f1N99m8+uEEIQ6h+ZpRR27v
	 CA+N8fZEIMvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC28CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081099357.25697.17758820830712790306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c76f6494c01163cddbf2c756f21aadc4798cc96239d54c2d6fdbd972888d36c
Date: Sat, 18 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760810993
