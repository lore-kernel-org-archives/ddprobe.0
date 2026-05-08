Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFFE3E51CD
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778251054; cv=none; b=DzVrL8g2SVXnaiv6dihd5yecyXT4DjDH8usyU+PVVi+1RKaJlYxcEzkPMJzNg2++xrrkX7aLmcmWOt1wY2xL+YQDvQ5W76M9hQNohruCy5MLEGO0N/MA4G0brhIBYB8y5EWjFEHsnQjaIzoaxJh7uwpB9qN9ratwOUsc9rAAEds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778251054; c=relaxed/simple;
	bh=tlcJXieCrXSMJ9Vja0SsdIXgAogY1mYghGuMb4pE1Kc=;
	h=To:Subject:From:Message-Id:Date; b=SNtWdO0fm/UUloBR0ZrBW0MVmgh6GnJ647NPcQ1LVnuAZuM+TTje7VTz5o4dFXlZ9U9/KTec+I5+Yf/wuFpoVHZFokLBC+g+F2GfbvWad0z1G09GfYAhQcPFGjHbgOSUAI+vkNTNuicFBUzYOiLtsmk1jneAaEGAjewKkSane6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HI099fUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HI099fUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C12B9C2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778251053;
	bh=tlcJXieCrXSMJ9Vja0SsdIXgAogY1mYghGuMb4pE1Kc=;
	h=To:Subject:From:Date:From;
	b=HI099fUVsEaqexewcC9JYf/SbrVCMJii1C1a4ZVp8G91ANYbUDGsrjqrluCXr8Gvq
	 r1dgmCeTCXVnle/X1eQ+6hdYDyNs7KHKBVO7+nwHn7FT8qZ8UDkyuLPKZ3bGBkV3it
	 2CA7TX6Vzw641QaI88P+bzuHZ+GxXoDrJCmyhjcDj0O4nH/Md8AsqBrIGezfSD1L9m
	 LmKPk5oTs3NKr16JoeDv6gag/lRzxKf+oHFf70XCIL2BX+C6odPPxjTKQ2M4VHn8TO
	 k2gIZoNU76489QccqS4RuzZOm1FHzpS3w6d3D9SV62aANXzS7bMQJcHM2cc0y1P65k
	 lngD1NY5l/S1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0760CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825105371.16346.67680443372783614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6b1eb9e24cbb6e116ea80c9c13aac6eafd62d314771c2e1603140dbd4cf97e
Date: Fri, 08 May 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778251053
