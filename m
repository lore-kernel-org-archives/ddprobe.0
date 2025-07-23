Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084F628032F
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753261194; cv=none; b=SzFUKxqwxfXodoeccg3BXY7i2Tfs5RCA1JvfVuCNaZd9VHcG64Hu+pq5V0YsDzAgxs6S2O7FpszTW7sM6g580IlNgeYsPwrI6PdZLKEuJGkzjfd0KZwUMysWtWtveqfJvYI9iz6mhYMy47QGP8T3KbH86/gdjBSA0gZGbd/wDDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753261194; c=relaxed/simple;
	bh=blV1hduYU2JLIAtBitEHzYIwPUQqd5F8byG4mzwwUSY=;
	h=To:Subject:From:Message-Id:Date; b=J5kjyQ+pJMjNv+nTpRLTglOQ1ItOpWMArDbi6lxmu1JDOrilek1kzCMUPlfKF2rFHxHAYWPSk9Xnh7OQtGV8OtS3/KXAMO7sKMR7c0gAj18WaNjxyW3zZGTDn1kn1ssbKrCfriv5lOEMrISf1o86nTfmO59GB+Frtpx6P5RDEL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAY/VAK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAY/VAK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E960C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753261193;
	bh=blV1hduYU2JLIAtBitEHzYIwPUQqd5F8byG4mzwwUSY=;
	h=To:Subject:From:Date:From;
	b=aAY/VAK9SofOfZnW+vWfGGP2thBkMpUTsIDplAVNG7ipbUkhLG4qL1vCSUnZ+Y3Sj
	 o1ztbFIWCl7Cy6rRxpnuDs08T8hPlYx3x7kXekFnsHgSoyvXl1sFKrGwdqvdEnzK5Z
	 mYbISdSm5vUfUlsj0fYvDexv9SbkZzz9B6HVkRvLMopAfP6KjnCOCasw+wnmkknV3i
	 06Hbr8wUO9Q19I7n5sZFKFR+7W60VBzNLg1cFEWsfrRjszzPHQpNa6GxFkoVXGE5wV
	 EmHVbw/ktwM4OKmrZIC0yFI8NHGenr62uzUIdCczqeM8weTDRprhUc6Pg/U3xKumlV
	 62nx+LC29TJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90079C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326119358.10036.2084779341782312546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16cf07205a937154c22522a58353210526a6c4ce9de6cf9369a3595f68edcfe
Date: Wed, 23 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753261193
