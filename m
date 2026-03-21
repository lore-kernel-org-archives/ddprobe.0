Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F5818E025
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774123494; cv=none; b=gZFaaMbEYuFYAkJ0EfXAfiybUikeP/iEfOm6Hau+388t9F6nRXFh3n1dEvpPE/JtM3JKQaTx+Q4YmoOeIgnhlj9TwkGRA3x5gYuLFY+LeWbCn8m5ZMlaCfMQsDiosPEWFG8qv3YcNbOW5FVL52eWypR7Z4jCA8wwXvb66zKZ3+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774123494; c=relaxed/simple;
	bh=pqCBHRe+Lz3Q8uKLdfMTtU+UEVq9WtlENRAzGN8IvtA=;
	h=To:Subject:From:Message-Id:Date; b=UPEUofziA0V5OA+QO4EaAAt89Q3ZmjOPF0FJlOuJiI3WxHBcXdFFyskOuL3JAzGsS/BLCDYmd3pad/nKx/+atunh7puqvALUm+J5CY2PKf4HTt6GF6UO5M/LpYpWgzKaFrEufKj6mrr01LOWCmizNDwFmmQTXuzxada6gKxuod0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivkhEm89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivkhEm89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAE2C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774123493;
	bh=pqCBHRe+Lz3Q8uKLdfMTtU+UEVq9WtlENRAzGN8IvtA=;
	h=To:Subject:From:Date:From;
	b=ivkhEm893S/8PlgwyynIXzpfqXNRUSeUJUXtlQRWXuyW9VeOaaDrunsGxS5D/ucIu
	 hGhLUtwWtpUpvzLWwsIOs+TEv0a+cVwgCDdvM89iM/3cfbF8Jv+ljql0ofEdioGeiD
	 iwn1OTkqLETgnayC8R5xLajwDYgnovXhXzd2ijlkw3oxzK9y1l0TvYRe1CYR75VYDK
	 TQQiNSOURnTiHkR236GDorFBEjxMbYCt0nsNgzgfQ8zoK9VlnbCv42AEgAF6dshmUD
	 iwOwogTqBMHRGqmlphAMoxzBYoAfuIvvIEyp7+q8mszMgVjH9htwVv7hu/LAEcEk2c
	 SR2C2pRVjg1VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2031094495
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 20:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412349357.20199.1241780154300561956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa2b1f0101c3f700c9e99749cac2afccd52893e1d19578a0a51a8a381d08528
Date: Sat, 21 Mar 2026 20:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774123493
