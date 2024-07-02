Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5F11BD4F7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719936323; cv=none; b=RN0sHAcjICbndUcanTaHrKUoYx599hBMvmWjcvkWQaKyGe57GTHvUmw3Li32JoEGHiJkjr0YGq/pW7jj3uMoHOIftg8Vd9oghmwuPO4Ewn2aRFNN3iNnnz8S/CxRLBzdor6wA5qPuT/lR48dpE78DbbS2smvG5mU46geqbNMbvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719936323; c=relaxed/simple;
	bh=rqCeozLOacbl3C24bTI7GIrpHZynGluCv05Z6cUJ5B8=;
	h=To:Subject:From:Message-Id:Date; b=ovJk9NSb8jDZgJDbxsSJkKXs4EaZUzknlXh5UYJW2Bsbi7OdWWAGy82HKYaWCzbYp3xZkNSea+hmO5IoVGI+ImwmGjcntf/i00GHyYlct94T1bQ0s04r4GXdCu83wc5X7x9ydUpspsLWuvmb/6gM2o19mp8MHz4OJN9QyO0ezrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k++kL+gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k++kL+gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D440FC4AF07
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719936322;
	bh=rqCeozLOacbl3C24bTI7GIrpHZynGluCv05Z6cUJ5B8=;
	h=To:Subject:From:Date:From;
	b=k++kL+gzcuex9r0ivpx7OX2JbHyu/vZwj3Z33OGSk6Q9RAMHoJGdEOUxodECMk6yw
	 4lRCjsZf6Fq9xhoQ1yaGsPixzRZeon9aA3IDmhLDj9VrF0F4cj3wdATXePofTmqZIF
	 /bDkG0Dmrm7liStQrf3JtoDgYWplrJC2PlWn+H5spPaAEsZhV0mfgU/zMd/un4Atd0
	 6VLg+8zifNgLflkr5+2K7A/8g/18rlMo6LVdhra0uOeAqlI0jXgFy98oN4+O0hqs2b
	 Tcno4sSVj9D2NyHDvBf+YPLAcjCmXK2sr/hsJ7ykXMQ5tqlMYmT5HEWmtcICfgUqgJ
	 LyqtjZ2L6jLxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49B6C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993632279.4314.14236708671361434698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924e0f77a50d617bc2c0798ee3b32e5d7cfba91f579213e2b3bcfdb11262f00e
Date: Tue, 02 Jul 2024 16:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719936322
