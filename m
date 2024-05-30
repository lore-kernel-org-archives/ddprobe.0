Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616E417B418
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717113263; cv=none; b=CsDMIlhwZr6WxAKE3+FrRpmwaBXTUlQu+qpnEpd/7itoYU2O7W4t/fhd2H7aGgnBdCSDldz0AdbX/4jHIkUbCm8ErpLEuyF5uNeB97Of45me8mOPH2qbji034ACBNpo/mGR6cSI6o58J5YsnhCCaxGUS0V7wIB2bDtUIHZQJGVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717113263; c=relaxed/simple;
	bh=a8+jj1rPvI9hXBowsHIzr2kCXmiShX74qkZ04Bjplpc=;
	h=To:Subject:From:Message-Id:Date; b=VMrWBR9Vy6swoLMA46k0ScIN35RkblSjB9qrTU81mEijexwOcJjMTADWrgux0v30vHqsP/+bhCcCfbh/mvsG7NkcOiNDpUnM/TVQk3VQGap6KtmC4CkLlNnXjk3F/zwdhR8A/Yk7CprtFq5iB0yO5e2zyzKvrJheCMBCJvMODUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=keeJkaF0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="keeJkaF0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9636C32789
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717113262;
	bh=a8+jj1rPvI9hXBowsHIzr2kCXmiShX74qkZ04Bjplpc=;
	h=To:Subject:From:Date:From;
	b=keeJkaF0jzYTSbBY98dxpp1CRJxLBQr+xBwgVyfHT8MJZVE6IaXsKj3LsIaB1wSLv
	 hZNKZ0+/pWdMibsOi6mCCp6H+RV9jpzIsCwWVDlhc3lEezsbRof+6nP1HE9uy4kiSg
	 R75pfGoEsPber84BO1vFhsTmiVU06/JFfhlprvPw9xmN2sqOmnWku0Adyr6KZ2C5nT
	 BZ5nc7/Xyy2K46UlCuIGrsVgeptx47JckL0qG7cmLyxzj9BbE9r1Qla8TzJnL9ycJh
	 FmW4qY/YfhBKeiGiC7F1rpdMeRRFiOAWTKjGRfcZldWZ+01qFMMdAZ0pHBCr2yfXuT
	 1P6q71ZQWoSpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D01C4C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711326284.25348.10503276103129454417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3244f837609fc94dedd8b79a56cf6219d6013d399e6917005b4532aef7225ab7
Date: Thu, 30 May 2024 23:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717113262
