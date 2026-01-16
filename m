Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9BC21770A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768592034; cv=none; b=S4vMJ0O5JZ4r8SLyNfP5HHfkWT06MYr/lMokKagYU1fuCwLKD9KYYfGRMIm+6SWGEIh+NDz+wOh7J7ptHuH+4DXrR+BrEQ76qzufNeyO1PA+p4CfHHHLR5l0jMBZW7r5jxLJK0NbPtrDBEhKMSMuCcPqF6q/1mbnYJT2j/ynabg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768592034; c=relaxed/simple;
	bh=ThUWWjSXbIZF++HHX9IN0XRcLzoVZnet4hA10H91vbU=;
	h=To:Subject:From:Message-Id:Date; b=uAoD+ZD4ZNyuW23ixL8N6Y7axyqczXPDRi3H/Lha8CNIAeYzGULEr3AEbS6/YfjtSXAfEW2dInTdd1oQHsufj0Z8ryoEORNVPH+H52k0QslUDMoRQv11xkfa0VqeV2jn1h3rDNPt2lgUVlCkUsoBGd2ncQIMnk5mI5Vdzefvss0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9MQ2xq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9MQ2xq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9A8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768592033;
	bh=ThUWWjSXbIZF++HHX9IN0XRcLzoVZnet4hA10H91vbU=;
	h=To:Subject:From:Date:From;
	b=c9MQ2xq3cYLm5uCUkGWMFFP30CDAGF9xj518/wSOHaX51QAlFGAoD7TxUqs7bbwwq
	 Yejx6gBzG7SwdmCfBbz7SquAzhQWwrom3YRnWEMd4hrQTLnlE8A66dQdtKlE457ZEo
	 QhUfuGlug8eSUXWdj3JdHoS8V9vcL0SkW7XmjVtbyIXUZ+JQf1EcmzqhmM9zKYbqcb
	 UXvMpCuv95oB6xL5o4zbKqFpwbp/RI2MTPbeGDF9oFrBYz24SdSX02cDTHjCpeptUs
	 l04v8oTdlc5eXAUtiVIqFhQCKA22uv6hF/n5z+qGQkPlObeTCepzmoA0zZXuLOYZdU
	 NHerCAwl/Qg5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA89C982FA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859203358.18865.5091718096415465539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b37e723e43004bfacf869e5d90c29f39311b22946bed9049d1bf87982fc4040
Date: Fri, 16 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768592033
