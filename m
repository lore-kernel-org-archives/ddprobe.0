Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3651D101DE
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749759594; cv=none; b=h45IcOjSFWzCVvqnPDK+BtzKLrJVQrwCMKAzIKv1jNNwLV684YExFcvPaf0D1yL2eV1yuRkZNHBS9EllF/Zgj2mUZ4sBPQSCOi0P7ky9gV8Jt+ocvsovA1jWuyxIVGjKzrfecSVuQldFT5jnh0UARFt5SLg5mJP/DLhJuSb8f5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749759594; c=relaxed/simple;
	bh=huIbpj5PJZ+LH3WNokzQ5a960glp6UJddk9Kk3q+yTQ=;
	h=To:Subject:From:Message-Id:Date; b=k6oIfsqzJu4uK2h411m6RUuoMS3twVvXkqnqznLf8QXlsV5wql5rEPKc5TDDu7pF1Fovw1huFBB0aib64vKoEWbLzZA9ZedyqEooJXxJx1tcebAwdY3l88wu6C9SZ2X1i6NDu95avE2ZzG4hxrDMplpUK3CBELYE2JDia3FJUKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZ/xXTI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZ/xXTI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ACAC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749759593;
	bh=huIbpj5PJZ+LH3WNokzQ5a960glp6UJddk9Kk3q+yTQ=;
	h=To:Subject:From:Date:From;
	b=CZ/xXTI8iH3guaUAeCfmunCFKGeoySfRw6/isxbSecmh+GLx1S5Lxa5mat1kR1oac
	 vitYaLrwF7RlCwdPrksEEIS8EW/nBOtEKquQtSe/cVJVeTDnHVsniIoZc2Gw6MFtw0
	 l2mWjyrDTrX22UwBHX3RlsYeDtNedTPdHFO/JqOtWmTA+ur0o6/vQRMf7XEcmBQU0y
	 04p0ZtIhwOtV5QkPpBYmsnANT9T6jDVXR34p6cWUprzZXLdIYEJW6vD+2+ApUr7bJV
	 G/B6DO+uEC+WSScjoKXbVF1RltyoCZQfTfVb6fzIdCFmI6m/SW85pJ0/Mp75qWBUcS
	 Ul2OIgA3t96AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942ECC71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975959358.10875.17965067195492620923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea7ea305e99def7dc7786a64fe910c609c2cbc07ec7601ea6288df112f93493
Date: Thu, 12 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749759593
