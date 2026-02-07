Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1051E1DEC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770494634; cv=none; b=JDBiY6cirLeXgXQJBbXzYwjRaN8+A5rIidzSHSi3pD6OI1wP2Zad4ywCdWrwOcUZ14NyqYXL6/MfIJdKJ+FmSsNpa0lU1Wn9iLkAb2tCliqSNTQ0Z085hxJ63CC0NQDGmqD5Aisq6CpVZtjRVEJNgENuHm9Z0XNQoyP1CVaWHiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770494634; c=relaxed/simple;
	bh=fppPqgERF2KQQ+Rm2/lpLIu02krWy5pfmlM0BKEPAw0=;
	h=To:Subject:From:Message-Id:Date; b=bOkf+SFZ8iuM9EYzdlJASivWdNydUQqz9p2QxAhOtGYwQdoUo5V6qFNpBCFLI6ePkab4ur4RacFskYju+mNbxDoxEh/wHeylmnveaANVdMj8OjDX7VPPFQMVMtzcVHamg7booF5PfoT+eKoYEmRHmVzt3Fv3Gdatd7slfBpT7yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caDLdU0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caDLdU0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA65CC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770494633;
	bh=fppPqgERF2KQQ+Rm2/lpLIu02krWy5pfmlM0BKEPAw0=;
	h=To:Subject:From:Date:From;
	b=caDLdU0iHGUS02tbuNtpHPn4gDFZQwAxhnPOUiDYzxJ6lFGIUM9Rlvw19ES3eJO1Y
	 wJv4W1AF+eTEiuqD2qui4YcEFLEGuIePyO4YHYXH/0O0jg9qUEXmF9XwoaVg2+Yt+B
	 L5jREzUi3NNK/Org5DX1GCyvnsdK3WIi5pmHP8K4jQ4IngaJNrKrbWafQR1kdmTG1R
	 E8HKa9NTG/qunDiOLpPt7QV7ROBO66EzHOGHnKrO45B40xYcH08Cta/EtGTnH/Pmft
	 IpgdJTPWQDHcMOSYBMjzEkZO8zGCmgQuCmFIjsdp/mTO4Bb7Qo7lghL3Las9Vlujzt
	 YK4+syqbRPndw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98182EE0AF3
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049463358.16088.5964493335253166338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb763c1cfda1b3ff28c1e56c8d5ae8081badc8ae464a9a5051989d84738fbe6
Date: Sat, 07 Feb 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770494633
