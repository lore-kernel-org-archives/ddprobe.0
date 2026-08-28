Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E5E1397
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787960434; cv=none; b=nWqCGC9AmthsXqTPcPGTOmXCo/HyI81/o12ccGPC1POTdo4JBhyU8z+d4tR9ickrBhnnhK3yQY4Cra/JVO+2N8xE31A74n4R2mZd1Wx0RuJH0CRjvdquo079cBuDvYcwr4/sGpBoZPUhCTN/5Rb+poWKtoAd80jEJfgTat3Rh2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787960434; c=relaxed/simple;
	bh=PcMVO/GwnhiEsIL7YX5//sJwvsAmER9+vzMaaAxunLY=;
	h=To:Subject:From:Message-Id:Date; b=WFj+dYON/UzFvD+OWHawg/mh/pWmWMPcqOzId63t11iljqFl+nByLoXkm/lN/q0AcqSt2CgNY0rE78tIUhI9FySEE8ZmLTX7FLyv5EMTUpZKTkuNqteJ5NWoHbTOe/vYYV042lTui24aYs6G4uXIdgZteV+FBt5bLOx+gF0sLjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIT7+qkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIT7+qkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A7FC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787960433;
	bh=PcMVO/GwnhiEsIL7YX5//sJwvsAmER9+vzMaaAxunLY=;
	h=To:Subject:From:Date:From;
	b=OIT7+qkboxVVua+ZqeSO0gYC/zQi7g1Smqo+zxy6i0B3M5CNKKtkpaKuZg8Jop8Zv
	 j3p7JSWBQIB3sgsH2/eioCbm2B1WAZ9S3DX82PcO4dTPik6gfrQBEbvU7x5yzmXB5V
	 XT2owE5hppaLTwIt1mNEdK5v3SZX8CPcAU2j7QNguKo2F5p55S55PaK4Q8/A68FlT/
	 DoSowzmEhAkLT3KOxjpG5ja3VvC9ye1rj46cFB9+HJvW0e/VH4E73pxeJJtoePSnOS
	 3q36PWjbuIyL0Ytg/mwV7JzzyR7OantaEh/9DskwcV1x0rD9gds9CViOWpO1flSs/J
	 9tIh6WG1zs6uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C17C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796043368.16187.15490106874143877558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad72ce55fd98317fa2cdbb47acf988709fabc98d088279983574f95015e9db7e
Date: Fri, 28 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787960433
