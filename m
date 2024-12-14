Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5AB18AE2
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734149754; cv=none; b=JLPqtCCnMqFU0gcQwm2FOmDCcE2KcSUYqVrN8iagP3oPYflmmEOit4kM3e17/skQpDgrWwq+/lBlmyC8NCOBD+tCoH2hBnlj6jzqkiw6ZjbUt2lnoqDFPH4oz6W4yA7PiEsLw6umdFKvWz8aHre1IwTiayI39+NBQj2xPElAwHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734149754; c=relaxed/simple;
	bh=6mjK7vACDV92J7xXy2jtX+UCzr/JPg/CsMsGUL6CRZI=;
	h=To:Subject:From:Message-Id:Date; b=a/PjB2980Yo2qScKijlAcrtgRawHxN+J3GVCgu5YVd52CJCNoalez5fIF/4jO5OHlvfz2JW4rx5KrMiMRIIURmuhFoFY3P56lS/3Js0hhiSVXaBKHvFHXN1SZBQaZRd1TLUJnh3QzNUcmZ2Pc5FIDZ7W1ULORwdUHbmSuiYN09s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ov+2psnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ov+2psnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C0CC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734149753;
	bh=6mjK7vACDV92J7xXy2jtX+UCzr/JPg/CsMsGUL6CRZI=;
	h=To:Subject:From:Date:From;
	b=Ov+2psnYMGZ5DGfs5zf+OSWKZZSt0LVxmceEs2TAz561e2zSGSnFOKLdMoygf6NtC
	 Nfvw2RQJaFvAaIk72ADdh0QE7T8+BTQBt74319VvYAfoHVdt0djO7XwpX44iTxv19G
	 p74qsjMg1AyxaBAezGGQSFy+dcIj7MHpZfllA7C2Lhoa8ENzdzEeGKR5QsyfT065iR
	 bUfe+N3kz38ZwemF2GRYWZnpLSfrXKLyh/vRbIt9BflRZD+qfgnbEbxdHtkLrad8a6
	 nQFiPwXsyC8lEisSFpwAOutLue15aXsk79Y/6LJ/D8sTFVi9LKQ26m7WMrbMP6TG+1
	 1arBC6LDfZ7eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A18BE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173414975362.27044.3396372447136277198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b842b3392ecc0f97b0deed37678b4f8de002380d855e591aa791350c61ff25
Date: Sat, 14 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734149753
