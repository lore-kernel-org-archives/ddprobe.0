Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F581891A9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783177714; cv=none; b=YK9sobEj5/bQhdRUmTjzbimjdWD+ZW0cbgtrL14F7Qklh96qKr49JqZgIL4J0lAYqRD+cPbydVjj52fRMMvnYA87Z7MJq3qsh+JqfrnYnlOuJZLGh0kyVcclMz2BL3JNhrNoNAS9VeogOypi1WndNt6BPAxb53ZYdC0oup6lztw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783177714; c=relaxed/simple;
	bh=cd5eMTtXF6tRC/92NkACV/leeBLV0P3R5WzVoqPyZKs=;
	h=To:Subject:From:Message-Id:Date; b=jD5Dw6MrJQ4P5ldiXDkS2L9p8ES7Js9IL/UvMWyphAP6f73YwH2RVFYRnouMt8pI95vLKwPQ2qh/xs7dXD/Ltg/XzawccD5PI4FfypavHhhc7gsPOdilHLjGSNfM8zANX6qPaHsV08kVaTYPJp0ldiDkHptVsVMyRYt1778aiiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKsKnPST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKsKnPST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D166FC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783177713;
	bh=cd5eMTtXF6tRC/92NkACV/leeBLV0P3R5WzVoqPyZKs=;
	h=To:Subject:From:Date:From;
	b=JKsKnPSTyID2yhI/qWP5dUnVU80cn5wEOp4Macvsz5E8O7KWlGN4CZaiCZWP1EeOM
	 jhd3kIu3zQAK7onSwmScsiN1YVpIk//me3kpt4o57bcu4hmNWsuUKEDTBbn5cC6ts1
	 4IydGubpCYYPfJj3kFf25KGbyR8X0ZTueAMC2JH35M+6SWvMCAu+0djUzuta6sYRfT
	 Q8e2ga6C+r8F/mdQNJGaQM/2rXNacbVyTQbNZnYQIF0H3HY8eZBNFS1+2G7z0H6hDY
	 jed9DTWv1vgW24TAvSeGk+8YKJ4ptY2B4JHv7+Hzr9tzVrCijBoA1OocOIaaDfeePH
	 ufM9lv8gnMgiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF100C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317771368.25926.14809317291063477060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff0c2cc7ef91a67d24b5997a1ad10056fee62fe2b5aa76244e72deec4559b9a
Date: Sat, 04 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783177713
