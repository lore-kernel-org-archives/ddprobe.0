Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F2BA35
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722174354; cv=none; b=iV+xjCRsScd53uMzFSltabyJC8RDUKH2CnCCnTzrKaGGsHxr1km21EE6F0wHCZvdTfsW+QbwQS7b//j+QduSR9GDuCJdqK2OygLX3h0IRK6/J+cOGiAjUkm3waSWgDY9ma23OvuNxOLDbYb6v7eidkIlNdzHEbwZh68HHkYz7PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722174354; c=relaxed/simple;
	bh=e+DDYfObCT63gFAYJq9S58jdRzbQ0WXyTvr2IeUmBbg=;
	h=To:Subject:From:Message-Id:Date; b=G3hVZflltki/k8fCpAa/JAS0qMBfVEyonqSenWzMC7/kcCjACklDSv/+XtVgvhIYOiY1AhHyL6SzezMIOL5ZWJ5VSpfP9JfkrtCRSB/o3sOPGuICmQ6Mi+z9mc6yVEVaWZSI/LcbO10bQooLyJK/DcpoGty8BH/a0v7OJuzbbSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKd7tEUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKd7tEUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5689C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722174353;
	bh=e+DDYfObCT63gFAYJq9S58jdRzbQ0WXyTvr2IeUmBbg=;
	h=To:Subject:From:Date:From;
	b=XKd7tEUjp71fXw4CTBcIvVjs0dli5lGgcSwl2Rtx+eLHwspL5w4t8uHjFEXaW+0yX
	 NJgVi16AsUy0VChEfdnhlzIfSnh6y+Dj1VFNuBk1bM2ksWtv6EGWABrtRPGcW/+LL9
	 TqWZbfM/ZDBLycwkvO/TdZ7Em2iR/gNQbE2iFi1QnMHz0bkwOeVbIbIhdtqZd/vxdX
	 mzhwDhAWTx7BTz2bkukq9Nz30YnR/XpgX1rQUq3a9L2AQTAfvf9szFi82vexJN7fjV
	 wYFuWt7Dnwy/IYsQuOq68MkBL3F/6U4ZqCKWl3xyP5/rt2P+A3WMCZ1pDC9YVHbFvt
	 Ym6w1Cmd3HX4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979FCC3DA64
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172217435359.16678.11013514944209892404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1528ab69966b4a12fc17eef0f045724b232a05bd928105e31e672aad83d901af
Date: Sun, 28 Jul 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722174353
