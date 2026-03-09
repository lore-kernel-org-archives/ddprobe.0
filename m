Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C65348895
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773064494; cv=none; b=hDGRuCMkz7bDSd0XKVKCURO9pA5EVfe58pztd95p6ONUPkzjvbVFaS/O4SIu82gHX/FTrK9aSSg0PIr5lT6Higf8ccZXJlwHoXXD5ZcKa6fLG7QbKGMa0uBb8Af3FDU2+7WpJ6yVvGJ02KTKjzSt5QPHeNxuMlc8itIfUW3rOCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773064494; c=relaxed/simple;
	bh=KZ7cfQr8RmZ3ZwLJpXLuGnTi97ZXxnKlx5907v9epJI=;
	h=To:Subject:From:Message-Id:Date; b=B4H6+SMOtHZYMivhqSgQY3gphlOVScmNMr9RzRZSFMV9gil0rf5ffNTzhoqyrBmpQDl89TQ1fh62JjKvq+T+dVsx31OJ7CUOR40f0hVfyfMkDlsunuSB9E3mcTfpc/rS0oK3nZ23Xexv/BQp3vbRR9NpWo4966YHBhB0gaRM38o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkAwktwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkAwktwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E7FC2BC86
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773064493;
	bh=KZ7cfQr8RmZ3ZwLJpXLuGnTi97ZXxnKlx5907v9epJI=;
	h=To:Subject:From:Date:From;
	b=AkAwktwbWm7Eb/IDSKnxOJjMVJ9CahlzMZaPSlqDArwAIxQ9oQI2eO/BEAhBwuTcR
	 heumR3a8M/funB8hzQg2dTn34T7NDHqvs9/x36pmZDme89QaxA99o0gv0OoCUFuc5Y
	 N7NQBy1choM3nGCHH6LZnmh2gjrGr6qZP0L4BajR/AIhUhYtPY5QO5tJx9ULi8GCYT
	 2vnrU4WGOZDVhnLPg9zYrIurKt7N6Ap/JvzRh/k7qRyklSP3rn6HXB28vB3qkMas8g
	 xOtVBI/NVSgM7S8UWNMFUIq+PlhS8pSbjDToVLfrtHHAEJu7upB1+QfE/3PMfYfuZ0
	 B3VCBMTRqVTRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBBEF3C267
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306449357.21463.15081966433135261788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420f82fa8cae29d6db1f800add6d3247099db406977f7f398ddb4a17550d474f
Date: Mon, 09 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773064493
