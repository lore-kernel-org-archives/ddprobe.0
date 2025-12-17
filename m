Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209412ED17C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766013234; cv=none; b=A7ZrfH1cHtK+ZSdaex7t4obFVldtTGNoqLio27olv07oBR4pcVFnlsq3g2F1AiaAsgMZ5SIKVRuO30XAc3vVJX+NhITTMjWEq5X05exFPftWqf1I5I37Z+wORc0k8ihV8G3PqbB4bQSE9x7tYZxQcWBqQR4BH7yht/rS8CVNrYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766013234; c=relaxed/simple;
	bh=bYeNTgQZL9DB+B/snF9IXW5EgfFnve3wITO7ptNzDHA=;
	h=To:Subject:From:Message-Id:Date; b=h/a1qk2VjC+ECJlc4QiKE1d6Dm6Dqi4h8S3ePmqQGrZn7Srb67o3AavAFmvoVdkoBh8IZsemTpw/HcMwWBQ8bGsmtcjth+jPBG7y0s9wjE9nOF8I4cnA8QtwhLO27I7ucjsxjWZgi/+3mVywgfcGks0gnecfKyIormNRCrT80eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YELhM0Sb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YELhM0Sb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1241C116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766013233;
	bh=bYeNTgQZL9DB+B/snF9IXW5EgfFnve3wITO7ptNzDHA=;
	h=To:Subject:From:Date:From;
	b=YELhM0SbS+QG3rbRJFkTpdn3An3euaQqHYdlJee4sL3p1KMRKOFfxHGQ9Hmdpln2Q
	 P+tVwU1yfagrCBg1NRsA3dnW6R6KfN6Q326tf7ok3oGmd3H5ApguAGYUNCV3LgACpK
	 dz411M3zb/1brwUV7IR3k5ceujRDfNzWwNWOb0i5mNKSn0NPfroDtQSEcRgmNSCpDO
	 M1vW/btAPvBPsmtBCmhAeg1oca8grJujbgZK0JP5CSw3CarfCnPkO8m9Bc5Iwjn939
	 +NsOisns0F2+EyzhkYOcGbvmYZJTkOdjzClJeBHLl36EWlSWy0eZPanGbcexHk0gCR
	 5UJ8dlEMzrlmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4AD68BC2
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601323358.25041.7126788657017857611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011d4a324e19476fe242417a0e71f862c542821c642edd4166bbba9d72d2477a
Date: Wed, 17 Dec 2025 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766013233
