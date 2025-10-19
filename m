Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAD11F0E32
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760895594; cv=none; b=dVJy3FgqCNb8seKTYFX27M0aXHV09/+7bKk9PhhwCJhbqwq+qO7BoKDDNF7JtYs7ysJGhI++/svcw22uy0pmux9wgFIAv0iU3IC2k07VbjT4+RhAuO5tFQpJ6IcytN9krse7NGh9uvwsTBvQMwyIoUgHGvamS6wZI88daEZ2ei0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760895594; c=relaxed/simple;
	bh=xrsxEbTINra3wqUXQyGVZ57hddRntKJsad7htTOTiXE=;
	h=To:Subject:From:Message-Id:Date; b=VhlDvAD5iE4EWUTWe04m6Cma6eeyX0p/khep2K0RoX+YwfpxMhCoO34/jdrNGlH+DD7DhXVxTceW9oztzXIXIg+Wj4wMSIjvfE57ta3c2RQMDSou+07X9Jt6bwTK3eaFal5P1zxKQf/GOYAap6Tya07kzaHYAyynn+LzKVuT30g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VziU43HG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VziU43HG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38CEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760895593;
	bh=xrsxEbTINra3wqUXQyGVZ57hddRntKJsad7htTOTiXE=;
	h=To:Subject:From:Date:From;
	b=VziU43HGC/xjnNZtQNucxwCBk/oIupnDHDctSklSRqV0urW79TocFq+OIkaBy415V
	 tNLTT/DuE35lTvFqd4nR4DRxBE2bHOEMC6S6XPPoY2Q/Z1i525tGiT3XfOWzjoV8De
	 e9QHGFek2HDb0c/2GEyFA6hCGw9e2ydISDkhi6X1StgUsDEbgdPwJpV7n7AInjg7Zd
	 KaWwhFyIlfidi3RrAnPN5U+rDLYqbrCoOlqo6p8mk9aCkJyBMccxPQLg51cpSItQgG
	 O3sTX7ytbNC3jN8cn1f2uhjz8nHsi9QfcCJUMtCW25wetLLev/8uuSJW275EeX4g7a
	 RjZ0oruab0c+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06AACCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089559358.27996.3852997853041084846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7692c2a4cf6a02db1acf39cd0d6c3e909acde0516d8bde1000e0afa9cd5cafe9
Date: Sun, 19 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760895593
