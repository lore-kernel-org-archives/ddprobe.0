Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C9686324
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733873154; cv=none; b=FMZuRsE7x5tH/SPNPIN6HgKbLEouGQoD/NgYyp4SYEHXMS7vfhTbXBp00iY1bNCQhoKy1X4xgUhas1NosRy02ybhLVrMzGNWeGIXFk5kutc4ARLd9rBExInWDYKnvY9fU/PhCfMW7HYrCDFrZgCOztbzOI5NbICS/ub3PRv3Kbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733873154; c=relaxed/simple;
	bh=OmaIIZMNqQPoAo8xJtg4Vj0YwLDXdpLu1tKeZ0A51jU=;
	h=To:Subject:From:Message-Id:Date; b=coVNAu1WbZ0EOBdInE5jhT3i0VB2+TJSX1I7rNLZBm2Kl8Ja3XAxXvgmv7mRs8gUSHQ4Ji91NgkMQ653ijyyuSZ4kP5iceS9yieVTK+RD/WKgkjrCUb4Dc76jmrySKzOWsSBbujfHu9iiiqeu9ogPzy7pj78DvgRpS19mzyCAzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwjb9uRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwjb9uRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD89FC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733873153;
	bh=OmaIIZMNqQPoAo8xJtg4Vj0YwLDXdpLu1tKeZ0A51jU=;
	h=To:Subject:From:Date:From;
	b=kwjb9uRTJ8Cv1hgeBFeP2Q5wSS8Tp9LG24ybZXOIorGwn+vF2VmH62iXBdp4/gI9l
	 aL9n1CUd85dRlIlClqqhO7gdj/6omGYuT0p4ZF4l8zveoRzdNuk8/L1z8+hqawBDXu
	 v+/maRl8TzG8jvf85GXxy74jNwgaDynTeU1WBeT53EJl90XU1OLowlCqlRJDIuQPAo
	 6tmXLB9c5Tp9WMYcmEgILQAv1v1hS8tLKi4MitY59WhTW7BTPr0E8fFuJDDvOPWNrw
	 Q+zGR0L3qR6URW4dyaMuFRWvRdIt7Ldjvw15mK28rmqhwszQkBNIPrBD4eghYhxncE
	 Uo+xfFtbAjZ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9971FE77180
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173387315361.25246.2581792231262828314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56106044170923880e85dd962287fa52ad50d8ee228fd35fcd5d9f65e8cb403
Date: Tue, 10 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733873153
