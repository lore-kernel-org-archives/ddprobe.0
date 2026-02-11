Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2943F355813
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770849294; cv=none; b=lFaGZnxkqP0E7DelcxVakfanhP2eegxQcrvNVkZkhoQuWy1QUK/WrbhujUlzIyMZ4dt3pBFWHAYXW5QDncmMeDGXC81X/jHtcTmlMTt7z1DPQ6gX70Md5v6noT4aafyN7VxCMMGHb95rys0Sy4+QTI3BfOlV4sFAnK1A/SEwowU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770849294; c=relaxed/simple;
	bh=5DhJIZcyfz9swht75QP/sQwuBcFZ4q2Mf8imU/H/raY=;
	h=To:Subject:From:Message-Id:Date; b=BqQhFqAIxF9on4GRwHzQihUjkEAv8fyPcZrsYiUiWRNZ1jkFXoIH0CpC5ij8oPDUtktNsgpAJBTsCmZgRe0VdkB3BkMkw1ywr7McbGmJOusaX9jPMejQjpdn6XJD/7xcPx5AkEf8qyjff9EsZ/2AAM+znQsHFW+Hb+lBi4CwHs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiMAq+/L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiMAq+/L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2898C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770849293;
	bh=5DhJIZcyfz9swht75QP/sQwuBcFZ4q2Mf8imU/H/raY=;
	h=To:Subject:From:Date:From;
	b=GiMAq+/LhslQt+yZX9CFHi007XKt9tuaE9nAPkk9fu1Lql3ZlONwVxQqnutN54+bY
	 E8ZN3riNd7X0PWueKZXuUR1o7qGkrbKXdIAbKo7KBda6qrcJQ+4MoZkEbqzamcwAsN
	 nT6DoPxNajyRT1Q91bJtDY0u/lSyIudq9uvumjpPR70NJRYKtnqqk1bMv7qKK5nG4d
	 UIvRxBw+k1ShNh7klgj6yw/x3xC0JWLUdTDAYg9kX65Qnhhqi9ikUGMaB2AsyCCEIB
	 kxL6w/4iQoarEtyPzKWc7Cuktio7gFPyzzR73XAbjZWYfb0cB1qlMDj9prRSPCnuwO
	 gcdSdGiR5M5qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B4BECD6F5
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084929364.7508.17171409338038083060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc2c5e6a0e0595346a6cfec6fcf99889626395ebdca6c46978bf9892570d07c9
Date: Wed, 11 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770849293
