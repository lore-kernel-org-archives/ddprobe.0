Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3591632C6
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732313754; cv=none; b=MKt9HE9QXhySWuBM1wHhNvQJVpx2vMfNtz8L5MTT7Yv50SBjh2/fPLZuLmYYIu48zB0O697SQ9xg3tB++p8M9v6Iaa9sRp9gyyqtCjt+//3vdZ3nfVoyj7rs1QiEwappPvzzuSHTpAAsnOCJCO452dQvA4744jM8ToV6grDzDQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732313754; c=relaxed/simple;
	bh=mhj8mKPGqJglg0dQZNgAqS0OQEuAGdMYtP/X9BOZHE4=;
	h=To:Subject:From:Message-Id:Date; b=XM72eoxWQ0aueDJNdceLS6SOVBdv3eox4Vs4A6XEHG+Rb+DqDIGQ6Wz56Q/40DfHtSDF6v3MvqmgMpIN1Vt7XQ9r82CL54KyRqmUb2JOHOku0ylt4ZXmeCuwnQG/pDIjEenzvJ5zul9YVXNTOns8JL5FmHmPwL1mA2aNVfLYgZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCTzlWvG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCTzlWvG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B3CC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732313753;
	bh=mhj8mKPGqJglg0dQZNgAqS0OQEuAGdMYtP/X9BOZHE4=;
	h=To:Subject:From:Date:From;
	b=WCTzlWvG34Ikdl5NPZWSkeyRTBAzTU7zmSv7y9LRzgbg9x6ICsycS3Tc6cK9Apcex
	 Np8JsTXsww6Nb8FMVkpMy6HM34HZQDGL7UkBpvIKpWKJqqvVP7Xp34eAbIRpy+mL5f
	 M+UpH3nBZIt/Klo9LvTCcjcDWERgZ8X4bBBgMyG4O1EgSG8/bTSgO2R54z5YlW9r5G
	 t/OLFnA7EgiygP9lOgbXvIFqvzOMF+9I19h3Qg2Lgmy0wQEKe0N0E2ZFPQqb1xmTu9
	 I4Omb3+o91uF7ytpM7X5Gnz2kMniuts0V4a50+lin4uCninaS0/keSLWIC1SWKtl7e
	 HGQw6TXp7quiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9258FE6ADCB
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173231375359.27905.4751480274358695805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2146952cbd562b476fd5247a05d76429690ba51015f35cf51ea5ebb6d15f6bdf
Date: Fri, 22 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732313753
