Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4257E101DE
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734168954; cv=none; b=FbF4GbHRuAgA3o3XZbFU6MNJbH5UNgahQ/YVSDidr/1bdYFEcek+5223ebU5u8XBP35/B6nj651I9cJHMubxp4DHB2BCZmAEAtIZS4TovfvD0Lgi9jCRc50piPneOEzHYGhHTAS1Mga9sjoRTUjVx4LdMUhPcxUn5eofjlxPLok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734168954; c=relaxed/simple;
	bh=Zcg+lDqSE/mF7i3/JUtr5zU+l8g5ayXB8Lto3gvuoRk=;
	h=To:Subject:From:Message-Id:Date; b=XjTO5eUJDKgCWd1FMD2VGeczKVTD4nC95xohLA19Cd5f2UFjOFIll2FZoiwBaUEkS4xzyknJBPJA1VApLoV22vgqvbA+MYu28Zme8BM7e2rs/mnRHRIsbRkjpmwDmuqlZMG+zaSydJyWdWxqnyUBKHegzr/OmW059HcRg/2lxA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYllQsjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYllQsjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B162FC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734168953;
	bh=Zcg+lDqSE/mF7i3/JUtr5zU+l8g5ayXB8Lto3gvuoRk=;
	h=To:Subject:From:Date:From;
	b=uYllQsjK36vx5JtlL+Q3QTwKaSBZVG/UqJ2bZJNwbL01rF6t8nsjsNwD5f1eLzzcq
	 u1xt6pUBsdDKlbTpYLkHYf9hBcYsRaK/cbnc4OygBDgNMBEPVh4KJqZDHqi8CXMAd7
	 SByNrS1AbOLCpeCtkP+F+0xJA9pPxhHW3+Y5oKlVSFyPPTy9R4d2XBYDuLb6CNGUUu
	 KobQk85UdKhQ7kxIot/E4DOB9Z0DaEL5/Z1sw9FYZYFdyfE0S86ToBio4+1kkmjqZ6
	 QVNJIPIr7EUdj0psfkviyvHeCjXoP9OQsJKYzPNf9LbB5HNAPP1sfN00EdzhSQse8j
	 5SfHLef0x4UXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9755DE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173416895359.26196.12431051915982137721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935d01b5dd2e06173fbd0ae59f198315aef628c281327b91c9b384861c6ed637
Date: Sat, 14 Dec 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734168953
