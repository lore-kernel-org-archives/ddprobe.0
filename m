Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB0E25A359
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764061374; cv=none; b=H4vMDqoOMnJPr6ffv4cf5/fcexzBvGKdubdA1jxPZaW7ahxLf4Ope2GZLOGJIh/i+itwfJGcAS2JjC48aGP2Yrzhbb/HD1n4iXomQKMXa7SkFbW/Sxf20y4b6CQVc2HwaDI7aS0r1msfwnf809W84O1ujNUs8okcR2p+x5vg7Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764061374; c=relaxed/simple;
	bh=EiLmzsO0B+a3E7hUQ4DFdaokApaMaF8nH3BK1zFRxZo=;
	h=To:Subject:From:Message-Id:Date; b=R64NZ2rsvjFN3+iyTfYOS9+ED11ey7nICzlzWepRBlZy3D/Vod6LqB+kJyjBmczTKkMqIL9LhXKoJRqCTUaMJPWtYR3nNBFy5PDCEG05iqSW/nAMkdf8msIDdNeuCJ4yj7L4wBhjvr27piwLwOmfAeKE0B+Cg4ECNhxUQ3pmoRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrTXblV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrTXblV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44FFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764061373;
	bh=EiLmzsO0B+a3E7hUQ4DFdaokApaMaF8nH3BK1zFRxZo=;
	h=To:Subject:From:Date:From;
	b=UrTXblV4mMtA/e9WI6Vqb+8C7EBj1QVNbqxautQXXtndwy12Sk8EJOwfvm3IfOykZ
	 OQQiJHLeSqVPMYvdXQ0IFNluibRxSJOBWwftgO5qqIglHfsrR2+7fQmQol4uzznX23
	 5x6M3gQSojTctCVoekY/fxsKQCBy7bQDNoDDL40gGqibLXYiCiY5j5wbPesyHVYG7B
	 /N+J2xPu/zYH5A4c/+5U0SUFzFehgnMA4L2f5Ik/vGWqxd1KceI7tY1ZAGZniTSKCK
	 tB9NNv6R5RtKyySZ9YClSAqF+1B7wDv/4saooU7u5YITr8T8bLaqwFBWGq1Dq/1pa5
	 oVU3m+GQqADvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EECCFD315
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 09:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176406137359.16264.15436338026549990152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c56b4c5a696bc70836b7b432c826aa19a0dd01588d995d4e91d150f9d1670a
Date: Tue, 25 Nov 2025 09:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764061373
