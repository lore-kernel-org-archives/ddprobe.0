Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A291A0B05
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724869553; cv=none; b=QVWn4aGAkOFaTZn2q+c69ZjvWdXOzSqNGHz/aE7XL8TVP257V8l4KrlaTapKwQSTf9Md/0fJsbBFtmLxHKY01qVcxtrdrW/mITZ5P+hMBlbWa1EQym7EPmKMHEAJaxRHYOFvLSYkOaPhv4Y4yPJdOygI2iv8Rnm/e3bOEqFFCFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724869553; c=relaxed/simple;
	bh=mgq5V3vqs7dJesBmyJoey0ZETBxa7tN1u+r/4yAKIOk=;
	h=To:Subject:From:Message-Id:Date; b=jjgqHpidTc1rE/7SfOPP4qH7VQqd4mZLQiKYgjaALzDbP9kHRXAcaBqIZ950gtwSxoX3Xz+1t0uKCS1YWGzvIVrlxAnN0GpUcEob2CIioUFM2Iace5/DEFdx2I7PbKHvd6ryDIn9T0A30POE6xMCi4Sw/EvA/7pg0ZLx817hU3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezmGeMO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezmGeMO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CE4C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724869553;
	bh=mgq5V3vqs7dJesBmyJoey0ZETBxa7tN1u+r/4yAKIOk=;
	h=To:Subject:From:Date:From;
	b=ezmGeMO0Chr1RRWy5wlmwGEDGKCHoFC65syusynwNQr027pQ9fNTWVFWQOPesQE4v
	 FTBVl89Rixz45V/a2NVuE9GltDqkdxiBvICyhtZARr2QEGyvH5SML96ABRgcTH5Z68
	 6xJe3QPSX/+x60elL8tX6AMPsvL+Su4Ah7xqAvwoo4ZPy/Q98rEkUYEXGxKwoSbShj
	 MkD40borGtOJAfxRyUyxjT1I6zAt5kx4yhIUQW+yhVhptFzHJKjkjOW69alRiciuSF
	 A2p61AmL3o6ceYmIMKKvE/QSMG6q4lVjPSiePqgaxZqnFH+UfE3W49Z7VyBcSIPXNR
	 /fyK2m3PeC0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D8DC636F0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172486955360.6369.3696486860611605310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 779d9ddac85b31233c7aee637c3dbcc282edc989fc707ee07194e9b2087b14cb
Date: Wed, 28 Aug 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724869553
