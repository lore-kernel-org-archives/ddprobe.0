Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D3F78F51
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756051194; cv=none; b=O90zF5GMSr/W6Cg5KSHdCZ82OsNFs3wZqast22obacW3FACSPYvNvNOuON1qu9SKbHcOTta6+wXdIN8I8oTWkWGiIqDhvaOGGjDnZkEUbfDGB2QsuSU83HylZTdIJHTr75mJ+OhQq0aZlv/WpWvgCOtyz5E4Q3WAmig5IqevBWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756051194; c=relaxed/simple;
	bh=NW85bMDymWW5uyEpCVaZ58zGd1IKA4xkk98VB0f+Kq4=;
	h=To:Subject:From:Message-Id:Date; b=B/SJ0paX9e7DFDfuIbz2ivbcJSjjmOAr1Ub4gBhzYq0tZyj6naH9zvcvTaflngYe6zt2LVREYKr7YaTQAPLz6v3YKa780OuIJxE6L68yrJmiLObURLKovXbVhhf6I2QuvLQ8ZEjVoKv3D4DiiLnbY+B1AOf9l/ipq+8R9jna4Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2rLNGzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2rLNGzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0816C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756051193;
	bh=NW85bMDymWW5uyEpCVaZ58zGd1IKA4xkk98VB0f+Kq4=;
	h=To:Subject:From:Date:From;
	b=l2rLNGzJgkHFVf7PXAX1VIHDXYxhcAQ2ldtNGZbgNZcUBVbhK2YGjNbfckTIeE2th
	 YfoDYYhu6Q166gdvLJDnUrNxhth2LxjFTlOSD14Ce9hxzQn5G4g464jVQHbwl/qJlO
	 dr/GnQgUuCwfP9qkXRtARVk+Yb5lKUz/DHsDR2XEIbI0zC9bgTMQ0d1eY4w8tXbPtB
	 wOdJ/wsalxXS+RuZ2Ib32/wVvHYVajBxZ7q49R7ZfB2Cg0rmetzPi3j+mcn5s1Nmwv
	 MXxKDhNLX1e4f3xAmi2NI7OlxMHyx9xawnFdE7SHmlkeWplmPwX33lvtUPo5Jz8h7E
	 fzdRPrzMsJsNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E275CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605119357.23636.3030476283095886637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5139d286249257b5a6472a6b7ddd98a6993e06dafddd911c265ee49602d49b2d
Date: Sun, 24 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756051193
