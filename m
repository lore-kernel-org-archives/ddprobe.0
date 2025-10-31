Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3D7324B21
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761894594; cv=none; b=F+BZTlZGBJ1XDRBIRY+GuicMZix4p4xY3VXE3+MNHZHiBnr0rLgj7hdRkU1L3LoVS7O4T3j0hvwbRqVSaT516Rp19UapHJ81tZtEviWYgQ+tcdvZ357i3aykgZiLFaGjsBHtwSWyjlRF2PyHVmhqpCz5hpWCPJY1xRQdAmq+w+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761894594; c=relaxed/simple;
	bh=s50IGgb17GW+bw7G+CunTNHu1hvGvbTMHKkuih+Wp/8=;
	h=To:Subject:From:Message-Id:Date; b=nhaooZPjIuC6XX2r1rJd+T+HpnKFncKwXCLtab17uYIqDbWH4w6RDInDxoxyV3GDA+9ZfjhT0d9LG2ISxuazy3Uvy43Vxm2wvUg3+yE1jX9cBTkWYNpPR6MtAAwk6x0QK3Mf6UdSbjQV52QMjXULl2D8oR5SLIWWKfiFMDjhpEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZYT6hQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZYT6hQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96C5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761894593;
	bh=s50IGgb17GW+bw7G+CunTNHu1hvGvbTMHKkuih+Wp/8=;
	h=To:Subject:From:Date:From;
	b=YZYT6hQUIWjWEPoUNXvQHasOSIN4XvKBnlsYbgJ+g5iI9ZTQx00TIGI8Qt+HjJsYe
	 dhmIOVvvq49qg3Cv3gbVNO6xpvLe/tANh0To1bKwh5L4aX+IrTqntIVTiyPM1K/x99
	 qyXNcw6ajfpTTo8UtqaSRBS7eCq3i1IWCp1qqkg3IrYfGRUeUSkNlhW7R7McUIUZH3
	 vaRQgfKoXSqAUoICpBbsElptlvDVL+JWEpeQsdGHYj/XxIj/0QBTohWIN+W3r5yAHf
	 QxYxyy6vk0NubHE97sbiX0UWDSEwt/m6ksOI90/nPZ3BWqJBCgbaQLrJzPFbhSlpG9
	 EgaPXDDov+Rdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F66CCF9EB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176189459361.30995.18003122753897129432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13c103b9c2eae5fc726a75a99c6ef69f805398f691ffec363b006fdedfdae248
Date: Fri, 31 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761894593
