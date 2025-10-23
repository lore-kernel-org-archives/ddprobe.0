Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE778EEB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761250794; cv=none; b=X+8f+ZJ5EXRWJZHCgjmSKl91O0/9bNrOUk07tDg0UF2aB3w4TIeaEuSPsfl1ft5XT55epc3zT9GS39J7bBTRCareD/sWtkMUm0UCL90q9z4c7ctFr50HuV8JQIOs0m0rec/u36XT8Mi3QObbvgbGelTqUsfGjXixrFtNmUeRdjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761250794; c=relaxed/simple;
	bh=NqRgbLEL/onfL2GzLzoVwS06S0sV9+nHKGJbphTJcmc=;
	h=To:Subject:From:Message-Id:Date; b=t1YmMR57OfK579gOwqglA1x4uac4d2rE5+51DHtaB1yYlhwXG2jNc+jCkvKta1/6lBPGh2YbhwevrDCJXei36geA7N+ZTf3IzxXXggQUu9yuuhIPM/sqjZ25suF3Cf3lPZmY6/33A8w3v4eiY2R81kxR6GilLJmi6Q1ublFbHMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmBmjILd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmBmjILd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B4AC4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761250793;
	bh=NqRgbLEL/onfL2GzLzoVwS06S0sV9+nHKGJbphTJcmc=;
	h=To:Subject:From:Date:From;
	b=RmBmjILd44QbZEr6YTnxkpUvyue/WELZ8d9FxO0uBySo39F8pKRsUaw6rGa2RgQcr
	 SB1qbzvvXoNqRYVLuWRKwPfcgQOlUyF9jEVtZv73azzmY4WWtLYE3QPIF+jD/whC7f
	 xYAIrCzjjgt9eOlGZu2smwN1zFKU8cqBGbWfWyG+KwE7oGP5zce2K5gaYtS3g0f72Y
	 82eVPuADfJDMSEV8ojgEx/zSTKolzOch2rwFL7GMthWAozHVrCTqD+MrObyXdySExR
	 FAdTrGA/ILP1ToJdvJgRwgCXeIXdoaPWycTpH0JinlBGiGA15P/hV0/gC5igWwCjM4
	 E7rfQe4UBQZlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CA2CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125079359.27553.10258494046186828283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963fb8afb4bd180e4b2e1edfa4dba29b61c8f3eb7d8990f7b3af8c17055fe205
Date: Thu, 23 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761250793
