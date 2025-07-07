Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302FB4315C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751892594; cv=none; b=T+CHfWWFTe5qRfWVWvQIGoSqSl85Veec3qhyOZZ88yDgbm1EBainnhJMltsLGxJsrl9bp0yu33AvBqlJd12AGPRafZCkn66XflOmJYhOJ2drqusCVKZCjj37t9nIYVI4BzM1tAMYt/B3tA8W/2gScHILH0dDbditMLPqGvCiNa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751892594; c=relaxed/simple;
	bh=MF4RT4r2tE05YfcvTTV8pNmXU4F27PD6GVkX8/vhLmQ=;
	h=To:Subject:From:Message-Id:Date; b=UDrkLUAbZFw45oVomL6rJBm1UZLMnGW7PLbb+/rrvTNMC106dC36/qS6gSF+A8/UnetDIhsdDufHY6oTLzM36mUg/ZQAfRrZS0RIRidQoBzev2E9QIJlfUKtO7uu4ioT2HJS5UZnuOJGBjCwtqwyDHovAjFnI9AGxc60VbGw0Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3/FFuUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3/FFuUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AA4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751892593;
	bh=MF4RT4r2tE05YfcvTTV8pNmXU4F27PD6GVkX8/vhLmQ=;
	h=To:Subject:From:Date:From;
	b=t3/FFuUd8YWpMAWd0JQa0wcXxkYTWM5wbxYmHStDXgiaf1z57hUkOuSXjD7sho/A5
	 0vx9oIBhzc0u2Np5Xfqcxoe6S9tR+iSnBpWo928H285ab/Vhp/cNzS3GINFK6zy8TT
	 B1UDyCIfYoOzc64vlx8p4qeg7NYGQxT3x0dpj36TrbdkEVYjq+uNJZmvswvKXMpM++
	 8t9aBz06OwHZQxZZzVolr4QS0Y44mDgp4hdRvZoCoVBRrz6nv6FZBMP74quQ0F4HWj
	 vPcMdUTh84sq7jbA+26X02NYYElHiSKD2aEoRODRalxxittm4Ac5BbH7n5eBLoKv3X
	 rw+jKyWG5gTug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD9C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189259358.18787.2498640268954240298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a472eb0a5adf8447afffafffcdcbdb7e9007cda260ca077b2eccb46f845cd3c
Date: Mon, 07 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751892593
