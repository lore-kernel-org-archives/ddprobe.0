Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543283C064
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:41:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714023683; cv=none; b=OO+C6ilc7acEkeT3YIbKJ+LGihYAiyAHVY9mmYtmTv2HIYydb7Plgn2Q+sjzIAWbr6/4zHuUb4qOfiVNIZSHMUABPhVmGKdP7b+NMQrVew4Ai6jMlUORDUAnnEtTjBPythiNtgihoim2qG8eawJ0Q1I6zasJUdU/CATaFPAFIGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714023683; c=relaxed/simple;
	bh=KtL9Act3kDVqC5EJ1jZ+4gH7mnRONC+iMVy9j+UMrSQ=;
	h=To:Subject:From:Message-Id:Date; b=u0ePFRRtYmEiwzSnVUH5IZ+jTe5+ckkp2QYn4xHmWj7lOEmRq54PUEfx5SMPJ7d0Kok5tv154SOlxu1arXJyiNtMj6zIbNSGEt+4VgLMy+Xna/RK9E42bvcVMLB4lEg82kNLNGdi2e306FFc4p6ukovmUsnrnTnN/KXCK0jzZLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyiMFKdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyiMFKdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B19C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714023682;
	bh=KtL9Act3kDVqC5EJ1jZ+4gH7mnRONC+iMVy9j+UMrSQ=;
	h=To:Subject:From:Date:From;
	b=PyiMFKdotaLb9JMyv/l2OpUa/F95HbvNambJr9uS1AaNtrhF5Ya4ui9OB96wToWzM
	 5Aw0oTDi0FyOzOQ+0aRWKPxQM147CUlQlVWVlv03d7FPAv6QaWaAE6hRzd3lCOAuH5
	 /gW2bfBE2PS+ppPCiOgdJvwPwsDCWKDCI6P8nANUXzW7QV/sIUXaUh0b33ciXkEMDK
	 4c7a6Rng/SuVJ9YgeONy6GAWE0o/bKYzmuWfTYLAS0YGPd8wiJgNOmuWFOGxaVJHyl
	 TwfHnkrdFWVT6M2LmQPrEfpOFXO90uscrC6fD4pIKSdMMjmSlLxgKKGqkaCJEKbbNf
	 KzAsPLiNJOKLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82F7C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 05:41:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402368280.3447.15203194549998754715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca775a000a673ececc1c48e16e1aef7914839c168916c906df0a0ecb0a6fa22
Date: Thu, 25 Apr 2024 05:41:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714023682
