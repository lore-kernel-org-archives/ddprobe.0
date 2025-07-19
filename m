Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180274C97
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752952196; cv=none; b=tyOJNhV7HG64YEGvGZ/hdSH2Talzp3zqC7u+Pzvq0MXbPCTiSMw4DSXHLKjp75olyGfK8lRixLW5xcPnA0Tefs1B5WnM9gSEMvLpYyYr/gZxHBnH6y+gNCSNj8DzergXw4FoKw/u2NbkHZxpRAjcdlIc1Tt4b896SCoRdMCG17I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752952196; c=relaxed/simple;
	bh=Nd/1j6i8/FogXO4jr9YiqrQeEBr7J1gO60rNjJy4iH8=;
	h=To:Subject:From:Message-Id:Date; b=k9C43zxMmNIYGpJd0sZbrwVIEwwW1PR1W1ZybvJRmFqBIYxeMfyotg5GpkOSErBBEZcLCl/NaR/IiPtdT6tz1y7NNQiQKswSkWUiB307yIZyB3GMGTpg9FOOqAT70mY5HSVckySuMSaM4iSKpwiiYYanZWMJT1OVnGKclDw5HwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxSJTxVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxSJTxVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A481DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752952193;
	bh=Nd/1j6i8/FogXO4jr9YiqrQeEBr7J1gO60rNjJy4iH8=;
	h=To:Subject:From:Date:From;
	b=PxSJTxVuO02+GDtygWfDK0wYs8y5GWYqYPIie5NZ2HswI4LGaUQuRvKGhWlden+3I
	 7UJJuh0PPgT6J7UvLHTGQnFQsLeUfpw+PFx/BbUapTJnBf/+wZGeJeWBGHd/iWYukI
	 dSq4rAQgG+Iphw1NbupmJYLSYtsiyu/Whg5pjDizD/FzebE8Ri8n3Wmh7j+8U7E66Q
	 A0LFY6lWzIOJq0szdu6NaJNfOUrn+izWP6xSAsjMisj41UnzwAaXFiYHJtJ6Gd4iV1
	 B7xHwtHM8HaJ2L9OQ/Wcc6IYXJr473TVuejwzJPpXKXQPLjT+vO6UJAQvp9oGDdloo
	 S2E+s/98eZU9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A50C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295219357.1840.4998332082778525457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c621f4895ad70730c40aa83c5a49f61e1e1b921890234f10ce63c3f200c7af6b
Date: Sat, 19 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752952193
