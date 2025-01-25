Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E1914A62B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737786354; cv=none; b=iYnCwvaUlvLsFIT6lWElma4lHIfCqnEj/4jwYilJ5OlE3p5sH9fNcgH49wZ91Xegqoli/JdzoBekyT3E45IzVPXdMpLQ69HPEHQ4DWkghwbyAGeYTcFk3IwCNHuA2MB6mQFrWqU8kvFyXHTcnxT82nlU26Zg05VTHrR8M8/ZQ1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737786354; c=relaxed/simple;
	bh=2bR/UsWuvdwmot4rpxIuJk+Tq86O5KYRgeqJMVz2t1U=;
	h=To:Subject:From:Message-Id:Date; b=rYcXM4YTI623NWPC6mNovQ7lsEFLFgAgQUhlae8XR951XN4k1OkaFBH4yq20ovicEyQQvgPS4/f0kVB/rXGFlx7ppmcDpxkkEkIun4Bx34JfXOXfwD5C1eKCRRUCAVVHnfzSIR+cbZCUndneY/cUFhEfyu+hjBUFTCoUHdynVKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGMkidtM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGMkidtM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F1EC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737786353;
	bh=2bR/UsWuvdwmot4rpxIuJk+Tq86O5KYRgeqJMVz2t1U=;
	h=To:Subject:From:Date:From;
	b=KGMkidtMS/4tvjU/ZVf5IPNosXSFU6vQmxkETaj2DAMeIAfTPJRo6j0EYieXHLr02
	 iv5FNFUql0yDfAwj0ekwBKCQsEqwT3r68N9KTuckt4ISPnZdwEonHm+c0oM1C4K6xS
	 taSU9AKpchqv13p9GjdgXp1H0DgkgRr0dz+p/BSB0FeIiYyEZoQJ5XrtQSsLy4KY++
	 KleewSR9OIVl2CWNtvZI14KEWyrViQBygawgMxK8hcg82M1WMeIuy1Tp5bnw3pS+I5
	 DWuAqloBYOijAYwL82Ks/eOs5fRKvw9KEYb5KZ///LMmDA5wxkIqA0PXUTgdALTZKf
	 6tyPj3ecDPgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EDC02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778635358.23233.6566358671794107035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea696772cfae07f3253d2549282eb601ea48b23d7177ef37a441233f2a4dee27
Date: Sat, 25 Jan 2025 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737786353
