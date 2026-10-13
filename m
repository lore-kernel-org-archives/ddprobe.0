Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9C53FF8BA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791884434; cv=none; b=qY9VELd3mSYCXxc60AVbdZ4ZWqT15W7XNmdOqTY5YqRVxFrw69BKfG84sX+4bCFjOmuOkTG5PjkALxW+ZV1sNJi6a3dVVmofWbpDAdGBROsLcMCfJzzB/F/ELPOEdL7Mg4KunFjh/pLOO72zOSUeOu+4X32tjfQf49UD4svfWwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791884434; c=relaxed/simple;
	bh=e8tpm+Kmu2Hxn4xkIfciSH4JTjgj3m7u+n8mKAgc4jg=;
	h=To:Subject:From:Message-Id:Date; b=uSo25X4lVqqlAV5ra3gmunHq9xvo9kUXKUlYui8vpbV345Tm9MFB76cz5xoKDUPhuWGVMIsQYqu1KPHbL7R/gaGSFU6pd4m6VPKrCLUWGcEgeA7pB2ipNSgPKTLkgnfiR1bzeXOn7SKiVATl1Vov991iDua0TwTgzDDO0lqYFCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C32QUqNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C32QUqNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE8FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791884433;
	bh=e8tpm+Kmu2Hxn4xkIfciSH4JTjgj3m7u+n8mKAgc4jg=;
	h=To:Subject:From:Date:From;
	b=C32QUqNW0N4d/cogUb7uh/DLN0kSZC+oHVUVanX68R086tkZmyTKuIGH6VjK2ZDeS
	 KMfx4mn8d2LzAwLCcsqQP+BBNMxrXapZm9SErlxXx0Ndnay+vGGgwZ5EeENqhcTq9N
	 9Q8j/7amwPtJmHDuXeWnu8sgF3SwPvQKK8mHfn+b1yj9/SiG0d/cKqlHXIxjO/G/TC
	 AuQV8xT6V1W4q98O3l8CvNkEFMcu8u22TnRakuG/3w1b0I8pndpe+IW1Ezn4DHWTkW
	 Law1kNrcVF2t4xJZkFn9gsjH8/jY0/NvbfH1tNS0xZxa5naDRr1uEnSqtM3jDcPhNA
	 MDW/ZUuioObYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEC4CC6B08
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188443369.28604.10006370928824878883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7874b97509ddde89edf452d12d855fb90f822abfde467011f2ea7c9b77ee7e9
Date: Tue, 13 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791884433
