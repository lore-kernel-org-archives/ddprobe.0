Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257A52777F9
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762882194; cv=none; b=ZiXQ9xqqeUnSjQiG3BFa5fgYhbYy6oFKMnyY1xKlZRAgfsMMAklSSYmTRa8Ad3Yp5lEguqewbOpAM3IdurOTkYcRavm5qdLWmV2E8YAZRMAXpLsoPb23fuPP0GUu55GMcGyCj4llGsLTTPZtQNzv3VpM8WdtV7iyRUTD0Y5a/XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762882194; c=relaxed/simple;
	bh=96EFTnmsyTTRUbcRwr33UA6aq+D9RHiwp2OzeoNNAHw=;
	h=To:Subject:From:Message-Id:Date; b=CpzSWd5MIGr9PGD3a/YjH+pWXOx6ZmWl0bVFYTImRV+AkyQskav/EtaKmgcC5MqCIo8PhjWkzmDpoeriZJxtdGpL/MvQBDOhIU2eO317xVJS5Wx2mhVv7eA3xcRWJVzMR2KvwhfuSEYJ+2ixeH6tCi2+yHtWyMYEe4P1utv7WvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqcrTWhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqcrTWhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD85C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762882193;
	bh=96EFTnmsyTTRUbcRwr33UA6aq+D9RHiwp2OzeoNNAHw=;
	h=To:Subject:From:Date:From;
	b=UqcrTWhzjuCaZBlnqw8l72/P6hy1M0FujRILzJ0x5wjX6ZGtxH4rWCR59Skat+913
	 B5P/LzCH8y46I+O3fC/RkFCwYO3rVjeZGOMue6msiO0HcOPTMGgKbEWEPcGwC6kGoS
	 +kDRohps+94FmxJ3H1vsxNC47x8IZa9LOZB+AcTSpq+RpKvYLgSx4pedWVbtgalVyh
	 wrmSij6mcNIlrXzpL0JvAAFO7usbUQOKx/a2RYTJmG8nCbYMbL0DSTekt2xsmeIHJH
	 sWqQYds4v9upZbNf94FUC8a/2ob3nyjz49hYDeiL+j4ziL6ZxtLnTdSzIEbGc8r/Z4
	 XXf/888jMJORQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154ACCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288219358.7305.12859559058501370965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c389c7e919e2cbbd379493f047510605a0442975bc6649f870134a70e247985
Date: Tue, 11 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762882193
