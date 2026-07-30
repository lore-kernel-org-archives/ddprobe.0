Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4601F3AEB32
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785446434; cv=none; b=HiSQtvIjMT0eSdj3TTtEnf8qRW3DlBazQO9aiuFzsWWXzdJHRo0wT9clqMIrbSw87/1fZXbzTPiyg5C6FDO3uWJ8TczKf/W8c39OjVjyQ15E3rbWdQmNiu9RirKbX/h62joYITCtmgoPG4AQ06gnrOgw9DoaBLrAtkcfQWw+JF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785446434; c=relaxed/simple;
	bh=jdZbeZFK22s6n2GrtBcUBIM0kMhTPVG/TlqEThRMcik=;
	h=To:Subject:From:Message-Id:Date; b=O/2564mhQyrV2PYSIEbo/qGhTBaeLXUlTZ6Jm1q2zbSlKoiRBL1FmzhMwq8XYxBaIU2lVdK+izg5fkvzWxP+Gka6VvhgcVQuwUc5NRCqgwgwEhg7IQ/VgiyWry53iiNRhZgUFYPOOV9IwuGt3nnc/u41J6CVVu9qTymJH2faXZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6QR/cuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6QR/cuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA996C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785446433;
	bh=jdZbeZFK22s6n2GrtBcUBIM0kMhTPVG/TlqEThRMcik=;
	h=To:Subject:From:Date:From;
	b=t6QR/cuGdFN4/yI100uTv7QUklLcYx6HrkGTxtMfTtQK23DnjL7ApVRr29QcyK6I1
	 +gBPGbwpv1wPdj1Tub6toyUKt31mZuXgg3s4+51wbIas6bKuXFgfdFhDk/eDGiWR4L
	 14hRj8FxMwC6w/u4RRGqxELxbonGcXVVxR4bWbKjabLLpJ7yo9D+gr7e4Sw5+T9Inb
	 SSM+5FRX9CZm5zy4nVxd3sNvgvhlgMkOVEwQ16qCxxy0+SwD73DpUdBGdYHNzxevMZ
	 nRcKrwY+1ydP28udDGKeZCdGVsxH7iog4hAS9DpN52/Dov2KadYjB8L38BUhZosmMF
	 5+TfjA7xRVD2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9316C5516D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178544643368.316.2573286911332926694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 710c0104282a6e6be6a0860fe70bc71337fe04d6a3b218b03ae5e56f42b828d3
Date: Thu, 30 Jul 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785446433
