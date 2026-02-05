Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F5E2405EC
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770278034; cv=none; b=hJfmk9LoNFUkYR+7v3yssFSiaN/eJmv5uHF88dMk8z6auNBjZFjGRan9/KBQ9ao2AVc04V/Kydp93X4oo9/mkFCHWoZeF2I03lytEPQZttN1ZpLd6YG8pH7mhGlz8iC9Aw5LTfB+n2YYeEseSndqsaJSTCpdwxXMur2/B74uAtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770278034; c=relaxed/simple;
	bh=a6k8IKg4s84rLWymJfn9MQV/jeaVq47eOXP7ZEnxBv8=;
	h=To:Subject:From:Message-Id:Date; b=iUB0QkHV5aMAPuCkofMx94T6ZbSn7PZLg220eRF0aqYG1hHwnorhoP4iErswMvfHBEH7pfxHprepB5MLhfEIgvHotNr0d87i5Vndpv2mzaW6+1DUR7jMSvDKCPLs9Bkj4b5+xcGlOXSKGR/hJ53A1eluZcy6LJCjWqcgS/CXoW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQfzqVhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQfzqVhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC75C116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770278033;
	bh=a6k8IKg4s84rLWymJfn9MQV/jeaVq47eOXP7ZEnxBv8=;
	h=To:Subject:From:Date:From;
	b=hQfzqVhA+o/uU+hRgAr38MpmBi7j4R4DAoK3nPxjdwaNrsVurOBkD6RdEJjw00SFU
	 vGJ0cFyl6bVxAFgJA6ttW25l0LGWVfE4F/OOuzTJLQUvK7RtsnW75F1IMxoJ3gEF6p
	 mvUFje38YX2X5OGPbSnajcaHy+Eh3SriluRRY2nJyU65neNTdZWy5MzFRsElVAfd9Z
	 /r/1rtwzs1VAap1h3kaAN6OOif9dzaH0sbWOc+ThpALJ0lDTzux09tGpBzwWiJrDaA
	 jG15yuFMOZ9VVDtlSC2ppFwDP6TTSvU7TnyjJ1v/GYs0ByByCr7xtbDtdCLK0jeKL7
	 X5V/p7S4C21OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C37CE9128C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027803363.4706.14182360242210107308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a41d305236836f243fdc1b7add6549dc40e69fcc70e8574383228232924088
Date: Thu, 05 Feb 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770278033
