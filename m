Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229062343C0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761688194; cv=none; b=f3gvQG3BA9HUfWnoQm0VEOlrywTp1sv2JS/HZdXIDVwk2TaA/PrBRSwYRc4n7Icumc7hr/kLSyleWfZtDtp4Bv1SGQX2cjpM80O2fFjbEa0/Og19uY96gjezVzVzZsBM9MMC6MB9apxxKXkee9IXN3covw1V1KPVGKfjZ+6o3bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761688194; c=relaxed/simple;
	bh=NQROE+6cTtFwUbE9T907JZR/GYT+kTtmHcfNe9lrE/U=;
	h=To:Subject:From:Message-Id:Date; b=N2pAfSGXjnIQPkJ8EMsTqe1LsBi1nloWI9U/H7c3tFricUE5N+ZLcShd4mCImN1eRV1WnJI3+PupqoPjFSsbtC39uWvA4/25wd5Cbi2zDf3FTtE9TqU0tLfX+gf4e2Kg3Lv0Lpr3CgW43XQXlgALLZ1E6xm6lNynHsrfQ3c6xQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye6WZ9sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye6WZ9sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AFAC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761688193;
	bh=NQROE+6cTtFwUbE9T907JZR/GYT+kTtmHcfNe9lrE/U=;
	h=To:Subject:From:Date:From;
	b=Ye6WZ9sn/HGt+5/Rtt5rHkYaDtpuyDTZQZ3e2s+zDDa83UsbDgwt2SOXVY0FzIuy2
	 oMyKr0xyYDDbLrw9fnM4Z3legJCyW2VbhJFK8C+jHXi8w9EE5xXqRka/u0TdAcHq20
	 akXnktaoGFAsu5oov03WHPbtKsMtnJIUW8w5tTFJbDS+GKPUrHqi8Mcp880pTRJCOu
	 6Ea7cE/3WKyCcHuk4HTG3YCGihfLGYfzmhT4ntQronw/HhmhYQfG3SIDaEDojf0g2D
	 o0Vftt6Mj90r0GmpkMxd3m170mDS2KrMJfPp6vrM8XRr2rgKXDiJaSu/hCYO3lrcgo
	 MWuiqmoMYqx8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91577CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176168819358.15850.9215037448295744240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c66f5a9947ef04e476a35435947162b31f8b98aa59e9efe709dbe9db529375
Date: Tue, 28 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761688193
