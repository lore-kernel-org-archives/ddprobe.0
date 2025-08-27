Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154BC2F5316
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756337994; cv=none; b=hPk0dQivYvFftAOT/hpGGiAxKtX7kkAj/EOQBZTXyMqw03C0tLq9ZfhBlq5Do2EDDpFgNiEqhpmklOWMUkhBD4BSnvWWRMRJ71/hfd+GWVuVIDOvskcfMlWPMU5DCMH8IB2bjNHDT7QFU1/LX9m69Lckd/489ArZOsmKGFY/I5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756337994; c=relaxed/simple;
	bh=N6GGG8QE+vDMnzJ8FOBRBoRLhjnrDTX4wkeUnrI5G28=;
	h=To:Subject:From:Message-Id:Date; b=KLPykNNqj3eAjcPyoP949ygRP5B4TOal1NzV8DrqUdC+EfIbUhvzqtLsg0vXnqIzPU8XS6VxxbuftPy5Z9fI2xJV1J7popW5ouXrIyBuLefy8EWUvQL3g3fdQqS8JX0duGFk6U/oN8ho+MylKnmuManPfxmHJJrmqT339ju5w10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmmv6tvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmmv6tvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7939C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756337993;
	bh=N6GGG8QE+vDMnzJ8FOBRBoRLhjnrDTX4wkeUnrI5G28=;
	h=To:Subject:From:Date:From;
	b=gmmv6tvikjt5EdR4avTB488kT78zJxoTwA5mpGU1jyg8g0vVQXqQFHt2K8t0gR1KR
	 fcCxXJLBE8Nul0E6Rl295+lkHyiGIgONV1A0tETUXZerzFGrCFE/CROpGAMaH/tmN8
	 nZDSXKXyZiXngH2ZTScxGLOJk4FiUMLXWAfm0e+cCBfnRO2pKvdkVukZbFMQAzyGGx
	 Sauzit12qBz83DU/M4oYJ1jL3GNtgGaVnVzmhSXBwkyfN53s8UP+dPi5OWdy+8a1sY
	 lry+l5j354ZmWcK6IZu+1pa5hn24tVAmTJThwg3gKtD0tNQCC1Ua+AqRATIVXj5Hy+
	 ZUEFrlqTRXXeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94697CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633799357.7923.3640795932221994269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb49e88472c8fd65daecd7df0ff5d8ce939b0bfbb0b55f3147395906fe43506
Date: Wed, 27 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756337993
