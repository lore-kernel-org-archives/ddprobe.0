Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A85233936
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781987194; cv=none; b=pCviLWl0uYPxdtPwozOIE+CWZfRm9tMKFpKACT74snlfPfxNARCdyUJzsZojUxnDVuMEVsCYxEV/Q2N6t7DWQs3eM3baSq2hI+0w3OE37qF7vsDR7ommfL15VU1Kbhk/xJq1xsVSYr8KNBvxDGmLZRYfEWeDYSl6Fw7MK1PuAI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781987194; c=relaxed/simple;
	bh=k/b8zbU3x5C7S3dA7DZ6Q8ZfGo8gnH1n6V51arCob8A=;
	h=To:Subject:From:Message-Id:Date; b=WQshbaw8RcRGNRDzjtcn02tCBnhOUyNxYesotY/NbFg+JYOSdgEWh/loHZPFIbzmwfhcrdDoBZvl3+GX3ev9hH+yfW4I67YW7M3cchioBYfcq5NQV69Qk+3oAAzDB58Fe8e6AaHekbp8YDPGP3fAOkHsn0shtfqmduvOxHj7dxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kj3wC6Le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kj3wC6Le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69F0C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781987193;
	bh=k/b8zbU3x5C7S3dA7DZ6Q8ZfGo8gnH1n6V51arCob8A=;
	h=To:Subject:From:Date:From;
	b=Kj3wC6LezKTKoIZ7Kw9d7V3lf2CNCfB1iRJ9W/93d98x3jHiXkzf5xYUb1gO8Dtr3
	 zqekdce2s6K9NAaCuLL3RDs/+ZmeTJwiJI/SBVYsH0uzEeV7woizzUzE5AdUX0omfd
	 rZGTBvQmrpn/jhi746pDsjWvPHLFhPhwpo9JHXsNtRayjH7NPJsrr5OtpY42/JEcU5
	 7zSQoxLj52Iq+pemQWs2qq3OoCbWzDMaodKn9cgva9sgm6DbQXWjahEC7rhOVESoaS
	 NBEgbOLwNwhcl8QLgXvPIEVUzOj9tuV8aRs37t+g1IzqexJhTZOkWKyCbDlLzZ6tcx
	 9gnFosmtp7DcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9E81CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178198719371.5718.2060529087851514597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830481658b2ba33341f5732a7f14481b962ed40a8b75fd0767d437b3aa887304
Date: Sat, 20 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781987193
