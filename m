Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5992EB874
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758837594; cv=none; b=WEKZpaIefA5d/iXOipTXPfxBaNEhjlj2gZTZXvAwYUUgtm8i/wN81GJEBUKa3QeY0plon9VjYyCvuLbB1NrjHTXlxj1LZADjRpsaYk73p0bXhvYD2EP5MuFzsHIKh5bEJsEDkEbC5XRFrb40AxQLElcfjM40JcHKUqFETb8NGqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758837594; c=relaxed/simple;
	bh=PPuvi+m7x3OayEAhmAFBxgbEIK46wZ1ADmv32bZaDrM=;
	h=To:Subject:From:Message-Id:Date; b=G1BhzNtW2bcWrIGRm+Ag+UpCZyCHQ9oxBqSn5Yj3y4XhsB5i2MZbxtHYDIgMbZYjjvbrVgXuSpmTVwfoYwyfqXg/dHe6+93FmreZxvld069SgHCE+EFbl7MH+F2yaAjKlD6TC++J5ockWH38+QHP+Hi0R/w3bQGf/s2Y4m+VGqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ku2iv4Ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ku2iv4Ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6959C4AF0D
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758837593;
	bh=PPuvi+m7x3OayEAhmAFBxgbEIK46wZ1ADmv32bZaDrM=;
	h=To:Subject:From:Date:From;
	b=Ku2iv4JuHlK+2DOj9n1y+Daqxzhz756RmR5a5V48VG5i8KV+yTdAfUCyWn12xuO8f
	 QmRDlgyUnZCRoAscoMd/xHEC1+FH1aSUbGH6TtE6Yr1nqgFKYVicsV5NsPCYfzdI5H
	 wY8z5iikCsdsUOhc45tz8lFe8pPXFLxN9NHcby61kYyb8nlvbEKo3sUfbdPeBaEwDr
	 KbWUOqXJk5/dO1ctZSZWVuSTW0YYMJK1yNZaQIC2UxGIzglwyE1VGLW63Vo/9/xL7b
	 CsjFzfUMWTYo68vAGjsaoeVP2DAsfd4SLnOPL+5hTybnC+4h+1TpzBiG6bIcidsmlz
	 VhOWlqaU5vEXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129ECAC5B5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883759358.14604.7332180050163137236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92515bd2dc0daba4104c127fe930c892e4367a79c78fa2331232284939aae84b
Date: Thu, 25 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758837593
