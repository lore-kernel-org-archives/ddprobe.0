Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C07531352B
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780299274; cv=none; b=DtDFsmtC92jnJK0v7/o9h9cLSokGS55YJt1FRBoRgr9jfNexATfUIA9FRy+sVcXNMDUuWXcsvIqf4EebHdd8bztH+UDLU5UVurH+2bObRzfYWx3NUSgTDjNTpK6kVYgrwwJ9nsivef3WRl3MTeQnZiUMJYZOqtfVXBaASgIypeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780299274; c=relaxed/simple;
	bh=ywW50nDxXpFn9qkJkwv/dVFkn+89i5ido8HU3A7mi/s=;
	h=To:Subject:From:Message-Id:Date; b=n21O8830TsIoC1+plnaEZ2HKYB5OvT+W8Vv4+LYOCBYoKK7LXFB68dYBUysmWK22X9uKFNWosq8SHYt3K3K6TCoKZ2SckWwLSxiihaT5kyOok19eKfmNyMAbLS2ze8HtrzZPFsM9WVkxb4HEoo+OVkcAcOcMjGRmLBQI8SHQ/FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiBkD3GW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiBkD3GW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B80C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780299273;
	bh=ywW50nDxXpFn9qkJkwv/dVFkn+89i5ido8HU3A7mi/s=;
	h=To:Subject:From:Date:From;
	b=uiBkD3GWXFeUN8pOGKXj3iaGjBdDOWcSurcVFmaWmtBgwAbyKK/mpLfDXgqsTixWB
	 OD8tDQQ+bzwT3Y4bqlz0tQvSU08aYWRtyPxom8cTGeB0doxORXeZt1T8nJJhg3jdws
	 CFWlua1iZ8rIm84aZPg1w3NP9VYB7cCx+uyKVc/6uq7dKpOphPWVJRI8HDCH7CisYU
	 Vy5fVb0hLRfc9o4kKW+VjzazHpd1L0foNVOIQHdTEh1Os1FWmIQFsEu35sZK02Jbyp
	 j5ekq+8fwVkr+tfmB6YV3NXEkuFnsQ/bdeAtVjds0Hi+19XTfqxgkn/0LQ7GcMcNSj
	 YoECcCTiDamLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3F0CD6E4C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029927370.5099.16250631259796082587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a31124a47055ae0434bb39e57f367ef5a600a3a1c80b21d5d2b9cdf995f812
Date: Mon, 01 Jun 2026 07:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780299273
