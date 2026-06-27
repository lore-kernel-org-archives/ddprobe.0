Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 790D97083C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782569314; cv=none; b=dyKkE6buBBp9umAx72tPTdPR76vgUQHh75D2+u2eaxOcjiU6h6gABDucwB0P/8INRmdCgfYxwp60q/+Dc5CRdosBr9dcae7Jzgz+5rvSq0FYL8Sv95MBE8YGYgAchB1/tIMPkdeSLv1GGW5kMXx9DT8U/rfJwAMzRgSV9rIo3hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782569314; c=relaxed/simple;
	bh=BsPFph14HK8U2NBPDihMqq//7//nZQLeICO+N2gcAcE=;
	h=To:Subject:From:Message-Id:Date; b=oyzz4ZAti1bDOOgpeeUmZcbuc8UnYNO2x2sGPYNvB/4AqM3ohKvOP2jsBuUayCk/kPqQqBy7DPxJ2U6m169AEgOkWeRKkqqYhA60P3+rJ4FQhehcc2QoHWVQQ89u6bKWN8S7LbTd7XvB/Jm5u5y7lDaJeK/FOY+KDLkGFCVnjZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqsp8rgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqsp8rgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20E19C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782569314;
	bh=BsPFph14HK8U2NBPDihMqq//7//nZQLeICO+N2gcAcE=;
	h=To:Subject:From:Date:From;
	b=oqsp8rguLxXLiwdWyhiLU11ecuFnrcY2LZGEKqktPKOCB9gADaJXnEnNINcAvaQal
	 uanyQ0D6NAkseKq5R67R6/BzU5anTXtsHu1We8omA/cIbS9JHxlivSn7VwFB7Jc3wU
	 nPJcFPlkXbNHwK621xq51U8Z5d+7fQyBEgs1zhggz+8oGc9OJfN4ULQ0howE310/Uy
	 WSjCdRr9+tV9wnveSpPd7FHDFSEcikUvBEjj4cWOzfObcTuY4M4ZbBuL99DRiRtaMA
	 J+HH0lfxstMig8Dc8WegliwlWbCRb/7q/oi3hQxBlgrIBlEvpM0aS0i54WhrRSDCod
	 VQkl9vwTgumTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39B3C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256931377.918.2429751758255340307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fb7c45126a4dc8125bc79085d2f0fd43858e78ea242acdc4380ee05cd4e9b2e
Date: Sat, 27 Jun 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782569313
