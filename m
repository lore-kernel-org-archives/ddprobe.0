Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4EB313E29
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782596314; cv=none; b=li3h7RkYeMQk4btxwvxifR63horife+xfYTx5VvDd6lBpt8MUiPy4xWDZ4gfkKcYDtN9FXdSCzOOwrLswV07UBcYnlBWjXAyTZsq+Uj0APQaXtsn6WrkDT3forOml0wnP2yeOXVPx383o0S9kPwG6WII/wrx7HPtL0DKgpE2hqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782596314; c=relaxed/simple;
	bh=xg0PEOeE+hqR6VOBOgLJaIB+WPatiwiox93Bdcerer4=;
	h=To:Subject:From:Message-Id:Date; b=gZUgQVAd7tSs1IWCRH+uNSiWV5Dv8+FBAy/OK4eZEYr5wvQilS+zKmQRPur8IRKgoyGRV64uPynfxj+IVHmCF53rD9ilW8XKrgWVM+QloJ15rW9wRX5xkHdsfUxlqaEjY9enYkasB2blD6Z2o882z5RK9lisqERIeph8pHgpeSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0lJt14B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0lJt14B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06BAC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782596313;
	bh=xg0PEOeE+hqR6VOBOgLJaIB+WPatiwiox93Bdcerer4=;
	h=To:Subject:From:Date:From;
	b=O0lJt14BaE5F0SmzLN0trHAN45lu77L77jGjrqFPMLO1RUdbsnVDnlIBfwvvlTwA5
	 XLWFX+dl8y3xkePsodCvZf2Anb5V+amWXHCMRVKjEBewyKrSSGBS5ImMnNGv7lnixH
	 Z9tGGMtu8j/K6gnCX1sUchvSmDC8Btv1Q7Tf5qp/EOPZzVQ1HyDF/vJLR7fGFoRJbb
	 hN8aWAhD7L5vtjfe+54K32AtGOnDUT9GY8K/6VDnE7RsSagEjNP6GD8crKhpA6H2vS
	 xsiTJ9YuoziC2IdrOteivJmXALBSliVUSoIgRm6V4w0KDul83LxdJOqVvWy6UJWay3
	 M+JrFF2P4w4Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21DAC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259631369.14707.4546322275135112457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd2991b5ddd6be6a7f37a30769287425d1fdde697cb949eed5e216b902897a0
Date: Sat, 27 Jun 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782596313
