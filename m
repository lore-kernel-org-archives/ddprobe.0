Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4B1134BD
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728096354; cv=none; b=ejDZo07+N3fy/DKQzWFaaR690uDj4XwKKL/Mumph+lj1vg9T+xtO0WoJEvRz6ShCwdqLyNUQS2rErkyiTLCAtE1t9H/dMT5z4E/oTdVnWLxie1dFoPlASeFEQMI7wdYFwMdn6ExDj1kBRLH5/eFO72M5MrbOyt/eN1RKuQKGKr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728096354; c=relaxed/simple;
	bh=Vr+DVGucPM1Y0QhXs/vWaUll1Vu2bNF+eTA45VjFONU=;
	h=To:Subject:From:Message-Id:Date; b=Dchd+jazwB6gu01oYGkG4MOanQBWr2B3u4ENqbWXy071AMqIKEf/YEufJiBWfi8y675AmSby2AAROxylYA2CcgRCBKNjfsVCiIxPaU+LmKZIXw4Ii0x8lfu+cH9VMVisMmL9Txhyt30rPHI5QurPPr19GBAfM14oyOmPRyR/6I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxWA5Jlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxWA5Jlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91EEC4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728096353;
	bh=Vr+DVGucPM1Y0QhXs/vWaUll1Vu2bNF+eTA45VjFONU=;
	h=To:Subject:From:Date:From;
	b=dxWA5JluvsL7jklrZ4ucfwz/32gEVtp7qZNRwWjWWAn7WW4lnHV4X3ZNh1CqQnmS3
	 Tq7Mah1KonyhRcUF7KQPERjc3ehDnYyV2bVGPIm3wwf4H6cFMuLSIAEnS5/2TDLhyW
	 /qA3kaqk+qs/GcbVweqBmZjLahZYJ2GL0iDam2tO5amlsj6jebJCR4fFAbrp0xp6/K
	 4Te0jjZeT00sOPLbeIF3ZRV6ws0JHIKz7rLw/xhfL8hfd32YmK7mOo4cm47bQIV94/
	 ji5PKOVIvYmeoydv5ssmUENg61GYUOyuaQQ0yu0Xr25Zq9FiKKuhb8Mx8NmsUpRsd+
	 +ExHyzF3fGdEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC09CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809635361.21934.1475390405602408600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b18a12f48981a198d907c7b81e0a13e29b6bb78e163d311cff07ca900fc48010
Date: Sat, 05 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728096353
