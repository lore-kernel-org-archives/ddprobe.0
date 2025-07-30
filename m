Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C571D5AC6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753867794; cv=none; b=auzZcjOtXXZeeSxyaCI5ZVQRfGTIBVHqLE+XE7D8oz/0Tsdg1/CwmD8W5dFGV+yUYmUfdmrULUdJaXmNkAgHyDgzRlwKay15OCKk/QIcZ2SjToEyj3RycuaqUDD9BFo6zzVu06Kw7VWPT8lECGochC4uos0HUKmZQvFYNH8wcec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753867794; c=relaxed/simple;
	bh=sWVqdH8GgYDtXd7Ez2z6XnD4P/Sd8Aaszyab2JqpD80=;
	h=To:Subject:From:Message-Id:Date; b=b54J3EkeNJDfpInTcrtZYn8CzHObTfOzHAS8RfcMM83DpgjnfUCFlpe8y3ug7TOcCJG81ZaJfiu/MPIi+RaO62ksYMbDBEK5IT9EtDamFLBVHlCUXyAcwauW0i8KQ8Z4eB4yh2ZsPl7EC5BVpHlD4xI2qP0eUwIAOTkgY6XrVu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyjutVK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyjutVK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424BC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753867793;
	bh=sWVqdH8GgYDtXd7Ez2z6XnD4P/Sd8Aaszyab2JqpD80=;
	h=To:Subject:From:Date:From;
	b=IyjutVK16fyWcyEwffahB09HOEpRK3+0x3COz90AdTwuOkCkLPc5m8hSjGJYdRYke
	 CBiBBU8O4ncqOV3aKv7nqtaCxgWjN5du1r2JHWrfNloavK2DJUihyHVUGOH2xfXvuQ
	 ToGw0R+CDkhLVtme6Zjyt3pbFTp8ZXgyY6e6Gq4O7gdcvpZxlrt6kusB76Oq8pFzOf
	 tM/kmpiWFpuJ46jYwSOO4WibnvetO9gh+D5jGNX/A0KMy8jxm5r1BjdRPYCnOCkq6a
	 MP6ts7GyB7jjkUQDzdpSz2niEDcivUHNP4Ac2BcVIbXPnFAk1iiLF69WkZ7YRPh8U+
	 edgKRvAFaX/pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93049C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386779359.7987.6842811680899537421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31e00731a3fb4ce5d9bf7d9ab57194a6675d8622ca337f75af75a31fa6808d4
Date: Wed, 30 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753867793
