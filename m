Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C343AC0C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720648043; cv=none; b=jEDpc3kzRCfOFiZBPpnhdQlV6MyLfV0iOfu8gf1yeaSPo4wGgKRi6Svkovip7KL/FBDWlGCQFbw6BjlCTd1lVoBy66X7mzpZkdETrDVoPuZWeTe0GcNjdXH9qTZshDjaQYGceMrphG7L2z1qZjVPeEEHrLGUeGzRQm+odbW/yU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720648043; c=relaxed/simple;
	bh=DhpX4MuMAk+iBPcsYaGJ+V4A0xOboaOTgxH/yQ3H6xk=;
	h=To:Subject:From:Message-Id:Date; b=HI8K4vnY8QrL12BKSCC7iIc9Y4mZWHu7TWaOPHuIhbw42ycDB8Op9Wtsdd8zJ0aqq7GTFv+tC48YVt3uMWWolZ/84PlN8y5IjvAYiZTeanMLlNEoxuJVBdIOf9ZaidHZ7ZPhgs66fn2emflm5y31eOKNjFgq9012lwlPx5HkKCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oh7VQOyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oh7VQOyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E300DC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720648042;
	bh=DhpX4MuMAk+iBPcsYaGJ+V4A0xOboaOTgxH/yQ3H6xk=;
	h=To:Subject:From:Date:From;
	b=Oh7VQOylEjOBkqOW4FR8Km2kEdIINazamUH98P4O+/rYSGm8GCuYjljeEamTQxBOI
	 dH6psybfmfqvXmUkbtLIKTqhaKy9a6Mm3tskn0ToJLBm4yjoVV5QFex37nqyc1V1aU
	 l/FdQhw22iO1fVop9X/JFHf0OB1osnPyFWEXrZnywDJhy1Fcdsiqlfl8E8Deta/yCb
	 kYF3pD96j0KA8rTZYJk3RxjP96aa/hOA66yPMB5pbmjpoJ1MIXjSKKAp2205cBOeg8
	 z6WetTSXVCBlFhezgFik0XOSjntUHlw/n2OsZqFQgBFvqMWt3rvlZ+TupYEo1dUnfr
	 MbklCwslp1nrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE51BC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 21:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064804283.29018.9965084012706861233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c51e9e2bb70f1cd7475f336658b52451cddf2c7bf41854524629b0cab1ae73
Date: Wed, 10 Jul 2024 21:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720648042
