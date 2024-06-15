Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1A2CA6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 20:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718484503; cv=none; b=nHM/0agtaglcDIR0UQ+keIWmyV0ijxHXDOKjtEwSWdr4bLoBymZRdmSQmoW86w22Zvd4yEF6FpQZRPwdmpP1Hcz/bHY6fezrZD4rTTsdTzoFhG9eGX0ToXySo554vZbQy68AwBk8R0mq/CJJEznIOv3icfZn+wnwxnX5lIcB4GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718484503; c=relaxed/simple;
	bh=U28PU7jkA4+KwSLuwwa6yreKeU9QkuTpFoPvq4Lzuzc=;
	h=To:Subject:From:Message-Id:Date; b=B7isMRjzdpVjpZDCN06G8uEEsCXylNGzFWLFT5eAeSkPJEf6OnYn4q/zqsYPDBj++eH9EvMuarp7KwBNb42aVxT/f9lNgUJv7EI2yuE3zqZd45BKxh6C3WVJDDM+HtT0Y2YFjOXQIDqLElVoYGLeohpU1rrLlNJKUv/AjEaJblk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfMME7Yd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfMME7Yd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1C6C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 20:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718484502;
	bh=U28PU7jkA4+KwSLuwwa6yreKeU9QkuTpFoPvq4Lzuzc=;
	h=To:Subject:From:Date:From;
	b=qfMME7Yds9iHygrteP9sNVJm7EWGgwLVzXMLOw6wEZWPYY9yYCtz5OPPAtR+nb6he
	 6hpoNS2a/MYRCd5DLdEV7b9DbD55mc5aexF6i7pTDmMsMYe+P3nYTdHi5LTUtLe99S
	 qOqAu3B1O2d8IdBYP1/EerGdJC2OvGb0cYj1b67pYfLTTVCP4IYfo3dx46JeQchZeC
	 kXfyOPeYb+L1w4pJErT4dFTJk3+l5k6VGA7XCOk5WgDH7WX2w4gICHdIBf/cbW7hHW
	 BPHOGhE2LNCy4V1TJrGkHPePoPgLtDGz1XbjNrfB1gwE60DhEgbfmRSFbdIJDj8qKX
	 PpuVWrywNBFMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9240C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 20:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171848450278.30064.12555655858165593708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6854cac67b5d0d0c28b6549de6a0da8c0a5d2e2540282408999d721b520a9712
Date: Sat, 15 Jun 2024 20:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718484502
