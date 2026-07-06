Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B7F42B305
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783330714; cv=none; b=AdYX1R/DA3i+D1rGXsTK8GLSrsk6T8EWCGgkAoB1ywU97cmwzNGmTnWd1xKcL2Ub7kty+A3/AFwjoV8lNnoA9fIOgGjTyDA7Lpxh3kwqgw6O1usq7VpDQmjdU71A/xn7JNwDUChgU7r+c1r3cH3mr32mjLJreIrOVQ/Mi+PhFxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783330714; c=relaxed/simple;
	bh=m6Ob54eoU6lr08t0poZ1T8kUwUWvMO7K3g9ibW3yYzQ=;
	h=To:Subject:From:Message-Id:Date; b=X8JIXHyq91LubLyqtrzmt7N5+5ayZyncyJp2yr7zLNcDEsD23g275S6H9AsXX5xyfa8dIZlhVdCOXJ+lvdHitDXFTyFGGK6L1IIRCXfqOM0n0KmOCnFHFUGoLc/NEqXJ+whdPTfmqsVbwRQK23IsUPZJ6zrL1GLtVZR7DG0S6/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8Kbp0i8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8Kbp0i8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABDEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783330713;
	bh=m6Ob54eoU6lr08t0poZ1T8kUwUWvMO7K3g9ibW3yYzQ=;
	h=To:Subject:From:Date:From;
	b=V8Kbp0i805sEKi5b6SMAVzWpDnMNp3c97eB/fyohYssVwEok9bo/37VNaqQ2tXY6G
	 Yn2Nf/JkZiappbjcfDAL3Yloz2GOnlx2mQaiUr5B18DUomqD4fvDOptaPaSu19lA2A
	 YswNZaEUn4iGsiR1WUemU/mairuFlocVAjdFa7La6Tk4hHEtajLKAjpf28TAmPVLRu
	 Z89ZCgW8/UHgDtLUO3gB5m0/uesapTLrYmXWEJuUZtd+rUIYLVrrt54O03luBWn6ER
	 E5ypF/RHOL4kirsYcTX8dReAm1cnuFvaizEXXb31HCGsRuMUVC4hwj27DokUvK1NXV
	 z0c6lGdRECLJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFC6C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333071369.16626.1316094888719189629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7792c27e781ffdba5d6f761fad60123ec1a78b08138efec44b0371ad705d5c96
Date: Mon, 06 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783330713
