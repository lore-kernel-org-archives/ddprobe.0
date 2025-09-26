Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D3635950
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758866394; cv=none; b=urxpbnLmRwJjVj7Tmcpp0n2o+e7fbfw/MtC3f0ma3bnfg5IF8GWVKEhC94D3qmTjKaEPHBMQsM5zPqkxvhTLCCNijgoQy88qxqdvU7c2uPuK8sck3J9Lj9U06xlZGnYUiEQmkQaNRbkjed4ZNQmNdsTWiKoovHSTbFrdCumloeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758866394; c=relaxed/simple;
	bh=rQm6IPO3M+cFmWUJoYZC2NDwtjmtZ3Px9zp20Ld4kKQ=;
	h=To:Subject:From:Message-Id:Date; b=DznMGBHC9h002pihsb0AiBlqoMoEjdPdWg8f84ivVdR2NGGn9aA+c9+ABBstAbYCRt6RkQHwyNo3O3aqVUdTvMkapmVSjSUdz4m+xTsJ8OWYy5GU3Bb1Yu7bYV8zNLKHfdiwe6YIzo8PsrN30Lr5b7E6GaE3R2AbjDqrmobsmGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3h5SONR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3h5SONR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3022C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758866393;
	bh=rQm6IPO3M+cFmWUJoYZC2NDwtjmtZ3Px9zp20Ld4kKQ=;
	h=To:Subject:From:Date:From;
	b=r3h5SONRxcOiuUX+AnkC+kvW9gX6suaDWPbhTYg4+C7KOoXSqysHCrPtlRpBqBEYW
	 pnh8+oKA6M+oJ5zt6XNZQrMVtEzY8JrgdwOE+9PpVSVFEpDjZRQsDFI7Npadr0xd6Y
	 +vdEold9SxMH4veTm1qmqW7x9RMhumevt/0V1KHTIhOc3iNmuOdSM4zFdH7mSaxKxv
	 /zw6COQQZD8sPtwGh7xv4bqT0VqENd+LlUcTzPQs7PPi1TTYsepq1gQDlG5jM1h3Un
	 TPuCX+sDrdhe39KJuHMnv/Qv3xnO05szUpwnx+YT6xG/TqBHbxHo8gNloqGNJCdhe2
	 21mA44cqPQWvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113CCAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175886639358.24412.18203822266124041155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4fe06fa096d6a11dc831891bf9c739ed19f5c82ccd923cd12261881e70e72d
Date: Fri, 26 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758866393
