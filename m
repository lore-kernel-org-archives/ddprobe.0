Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4B23090C9
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765564374; cv=none; b=RWo/5C75rWFYUic2mSZSdZi96/Gs0HOg1lo1nS/tjmgyqa9gwhg92FE2Gau9+ol6P5820nGmrnbDxEm6d6irKFY/EhWlDPAdCsShAKHuTevO6TkuN2wtcK+b8Bt3mqPSvx2/OY8xmewrZ1ZyYhhZfl7K0wMuu4VUkAX6+iZ8Zzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765564374; c=relaxed/simple;
	bh=b0nx45e/dyFR6mIT4Vo+F+9pkesRkrMKQT9ib/ECVZ0=;
	h=To:Subject:From:Message-Id:Date; b=dV4Z7Cl4e10MujYfuojiVf+fJUlJjftT+xl79GruRQTgeBdXPFHqSX90A9+9/gFg6/8ngoOmWHFDKWUZBliBFzE8fYK6IXxhjTzZujP/6MxZrFKFchSW05zD++p1xw+1HlkQ3PiD8lwd915CZHfqVL8O0BlQGCgS1vjoiKHJhX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=la0TUmx+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="la0TUmx+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7025C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765564373;
	bh=b0nx45e/dyFR6mIT4Vo+F+9pkesRkrMKQT9ib/ECVZ0=;
	h=To:Subject:From:Date:From;
	b=la0TUmx+zAw0vsy0S5rftE0wfzEgFODflP+r2rWFU5BbmmyeAZKisQDvTQ82XuA8J
	 e+C+IdbUoWrZy0emf6nFFuEJuFYpctZDiSQvzGBz3HJFzvLV5CvEvt/gMCxTS/tfNU
	 UqMp+rOiHpxakQ/1k53SHdZGEBClf1gle0AOuiYDx/ceikpjveYuewM9k0PlqpCU+k
	 A0GpXAjhWY0Cz1dYOXlmNMwv4XxmgnSm9ht+QwhVlvDFGnElq/ocqb8TpgYy+kOWJM
	 0XqTFBW4Z9QACfJ60hJMrc7cAsKXkVJKq+7FwTCSHQBwfkxWQ+JVLqccyh6ZovLn9/
	 yV8E4Ij5942JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96374D59D82
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 18:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556437360.25450.18021503580102841067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ade49b9794e494cd51b0d94679994c4ba2473bcd346f5acb4c6f51eee5fff2c2
Date: Fri, 12 Dec 2025 18:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765564373
