Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA5126CE3C
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758559194; cv=none; b=YdnWuAXpScz4EkRTqHMyxFib1hzR+txWuyigcRPEK5XBW7zXurxIuS5w2gVfGGMUnarY7kHbY20MSLyujm5V9Xh6mv14txzkttMeuh9zz9gLVHJ9toSXkB8KJdg7aKlueOWrdGS2L9lssLyAH+bqJpiCSQEyhxrdFzmOI4/pE2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758559194; c=relaxed/simple;
	bh=N1MEo47DYcPeYn4tPapIm7I8I2dbCKze4hRJ0UmbzOg=;
	h=To:Subject:From:Message-Id:Date; b=saNYSFPc54JzbrAZeLhq95jmaIj1s5f85wlrMciph9jLN6fRTY1HhyxEVL8irzYZXUzkO5NBoRZw/4/vFBeH58jPg3YwwT8POrDOKRqMY+VNuxqQUfzurrWlmCXa7fQ9xEJ4hfy3V8D+WmP4JQspIYxYtmCm9okNRNKgXQKvS8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6t8/tM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6t8/tM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1757C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758559193;
	bh=N1MEo47DYcPeYn4tPapIm7I8I2dbCKze4hRJ0UmbzOg=;
	h=To:Subject:From:Date:From;
	b=o6t8/tM6SRekhifICh5U9gOryP1kqSYtMzJiYgNvXGK1eVOHgUE1OQRg4nXpuafPF
	 Dzc7/esA8tZEHt0eVPb3DDpzb2U/7Y1VUDfui4g1ClUip06EAq3Pi4Pxpi4HKoXtgV
	 HruPZS1b1K9uHP/PdTJwPKADx/fuhAZXc/E4efewMjX2C9zwQpoUIGwtugiagP+Ud1
	 zLxw2aRdD8QEr4aXAP9Dcdtgttfk62dOGoUnOJBcMFx+qr8tSXqZ4B2bYiqUDbHSZw
	 ynEWQrSO1b9CkZow12SNonime3Zb3iw/8XZrUARcAa/2loKxfzVGidHg5b8WoJ7jh4
	 sUifW8UtNRXqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9002DCAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855919358.20805.1192943706041616241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c1520d245963c39a80902dfd1b5e36ac6076a9e2acaa72257dcf6abcaeeeab2
Date: Mon, 22 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758559193
