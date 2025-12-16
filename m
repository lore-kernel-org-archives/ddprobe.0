Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0961FDA8E
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765907634; cv=none; b=BX47BqfnK+UpgpqJyNH+YH5IY6fYJSDI/oxAINUS1Ule4BaNXqYbXL+PgwrRp5Rgtc7hEEfnVJTLxrEBD2mebUeHBMTVTTbH2+835Qy616VgE9MIrWsom5+H7rYPDWdvmtq1kCTHUZ+u6j5JSV+dwMoUAr0u6FFk99LxgpKUhy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765907634; c=relaxed/simple;
	bh=CP8jMX2AYKgxhPZfeDcyUDB5JE7SZQbiuDSLFY+g9gw=;
	h=To:Subject:From:Message-Id:Date; b=JIuThaIZM4Xbzb8V0nQIokn2yl/ve2rTeDJ8hGo5fIVeI5kgkXzkRd55wEJmEnLsQjE9p51YSvY3R+z9ayDtJ1it2EDVhu7Dr5JRcLdbc/w/kmScvnBdetjkVcfmQsIOkNitXI2z+FMs5be06vdVpb3Iz30hiW3KcdwpIoFmQMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ab40RmIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ab40RmIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B58C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765907633;
	bh=CP8jMX2AYKgxhPZfeDcyUDB5JE7SZQbiuDSLFY+g9gw=;
	h=To:Subject:From:Date:From;
	b=ab40RmISbOOUBnRoNW07Jl2W/THDf5xsySBMacd51izIwzm35KzreaW6zpxmMql8f
	 tCGCCNxLRsuT8TUKoiOHxOYqdL9qCR0JIxoN0/zi+gE2Dx9P4kmffnlWKMJ7GX/GaJ
	 7nqh2EFeV8TEc1nni2bGGiIhaOVcCx9cvVLAR48XEZ+n5YdOCYWpArqMTeaLw+ghnv
	 7/4tyP/169EB2+u/T5ylWrkYbJUGrp7E6tJejojy3fi5RJj6uJI74m7GiftNbvkRKt
	 spdRCdBYitzTC9NqSJczdTW/g4AtLrYiNK39SLvb2zB9lpqjGeYuX8WxaVpgw8Ztn1
	 jSyF4jmWQd35A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9388ED609D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590763359.24614.2940636576400455675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d12843a7a2d8cbf0484102def27ad70e8f379616d240345146643b0de30737d
Date: Tue, 16 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765907633
