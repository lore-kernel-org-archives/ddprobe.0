Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFBE33FE
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737076554; cv=none; b=jydfdIG0pI63q0Js87bpVs5oHmZbw3YxajZPtHpzhUPgDbxVWWGaVtpqOgpqt28uWbLcgIlz6RiJ9DEk3RcoixEO3FvxO07owa95PHJxEzSNCJMsN8tUgm1T+0hs6UODeWM9WCE9v99pAEDyYbGujN6fONjuAkP8V0r+ZI3WPf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737076554; c=relaxed/simple;
	bh=NACoKRE3LeyW586C8ctr40sxo6FwnHl+kpcU2hrngHk=;
	h=To:Subject:From:Message-Id:Date; b=pTeuZtVUTvHmCyjaoYoC5qZAVJLP3559exHHc1niGEBBfdEwkMg7COAbLB6GWMoLDwlwAlVahf40Ki2KQlQa4dFF2gNYKXDIy9eiYHfAGdbPZ0zMmmKDJ2hpcrNivxnyeNrvkaKxo5lPSfUE6ciE0IQ6/zhb3LUUBNqKQmMyM9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N17VDxH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N17VDxH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E44C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737076553;
	bh=NACoKRE3LeyW586C8ctr40sxo6FwnHl+kpcU2hrngHk=;
	h=To:Subject:From:Date:From;
	b=N17VDxH0gR7fN2YWf5NU7tpemgGHFq1HVJV2o8ssCdwD3vc4cmuXG053WDUDiife1
	 /4kHJUkbWCcLK/TPWN1BTe7yFc/IePTOAKbOtVvEXZvcUefNaa4UZPmCI2mS6G78VN
	 o0d5RCQtUhTyqAVyieJKlSeGdlZTjxaxDqrJT2UV1U/8LY6zBJ2H6EXltFSqavl9dS
	 4+yyX9TOwd4//vcXEgg4HZ74I0+tJHyb1weE7HxbuxVi+Dm1st8krmIfzjtoXidUtt
	 Vt3uCR7CxD/HEc1fUtb6BDECB8Di7Znr4UWCD5tjuSZ+eRo3rkeSuZ7cI+aYseI+LQ
	 ZWmiHw/e1SHQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9DC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173707655359.11128.16883075461142790968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3137c4d2e494b27dc85db9c609d16e8d9981b7cf69cb264f09bf4035e667e778
Date: Fri, 17 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737076553
