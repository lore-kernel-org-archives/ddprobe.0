Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18BD26E14C
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756128593; cv=none; b=ewb2af1dCpAaP2fkX+i7B5V1RxHvqJoaKK19ShmQPAZaETHxBXpSfzgDvTuS0g+nmQA8fxjH1K2WCvMgOUt0ukIREmBVNgjMft/YbTEn64lib31FOACR6hOU2h8i0KrMpuKZ1opJXeJWGe5dEBZtb6ZcidraaE/OGMAonVl4ESA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756128593; c=relaxed/simple;
	bh=Sbx8fcHHF6gW4pVvNsHAcpGAJl/+uC5+CJizfDSdFaM=;
	h=To:Subject:From:Message-Id:Date; b=LPe3bcuK2FHiwH6mQvtkiIujCVMieN+seB3drEy2GOoeaIzZ9z7x2w8hNHxYfEqRxfysAQavvjs50/l5QDw1RWnUD8WZhHrXTxaYtzCQmLIMPqgTvGt5Fh8kH2GTN8ZVQ2B5/uCOTzZAphivZcSzXGn3igIT7sMznelwJZxh2pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQZrDI/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQZrDI/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1523C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756128593;
	bh=Sbx8fcHHF6gW4pVvNsHAcpGAJl/+uC5+CJizfDSdFaM=;
	h=To:Subject:From:Date:From;
	b=aQZrDI/AToWvegNRy5M/dlAgg8WZNbJG1MnH3DMWy90x4nfx2xwKd68CKM+DOWlUE
	 kgd3XSz39E4+qo1UwLoaOYe37v/1fqqFC0R0WIJs2DsfLxk3GuCx7wVO2wFo/I+VZF
	 X2i2CAEM+tHjGvSWhi6PzPa7+6YbnNbJTjU7JpAdpcwP7dD91K9imPCAHb4r5E38sK
	 1tqwTsTjmMSAU6AKsVtlKOPVX0LPDat0i/I0nQ/6H2VmoZd5Uh5YOtqwns1RQyxw4u
	 t3rFrxLYo5L4gi5n5KFmlFBY+6l/Tci4sqmfh9hL96EoDQlezOAPoyfoaR0xE0NDiR
	 QEniSCS+8cATQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B3CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612859357.16648.18070587452767508262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcd3f2d09c2cd1b1404e2bcdefeb715955dc5e353a6ca906e3b0625e8dc2c5f
Date: Mon, 25 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756128593
