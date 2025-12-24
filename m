Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B2730C62E
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766591034; cv=none; b=B5j8cXb61Ymrw62g7KJy3XNEpl+QNiL1xQN41YrNPKdR865elLPM1WE1/hkEdPglEZVQs5tCmsEs3FI4AHaw+U+FE4cSge/9OoNa8S+sVu0fhREAgtrr5XSeYNFE/eSi2uYDWYC95lxix4cC+iGUriAIHtznPwaP9LQ7NdPJQ7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766591034; c=relaxed/simple;
	bh=Gjq0mdEPYPgfiIQfbsuiAqcA2wZnnc5G+2QpCJelvbw=;
	h=To:Subject:From:Message-Id:Date; b=VbipqbAIZiKnqScgWtEPcDQk9sj2mZdau1140Bezuh7n/PN0z6+m8SowSQvJiiz+8JLnM5/ZN0L5BoQqtaNfFmD6ko+G9x6ZKcL3VqVpmtcMiQm9TjAjaPZHuSiFSeQv0YpPutnANnRI5OPv89ectT7BDvYvzHw2d5cY1PZmj+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdU/YcC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdU/YcC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C65FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766591033;
	bh=Gjq0mdEPYPgfiIQfbsuiAqcA2wZnnc5G+2QpCJelvbw=;
	h=To:Subject:From:Date:From;
	b=MdU/YcC5c+l+RaY9QxSNibF0giy2NOUPTSOdodRgCXwfKVNbkfb22DqrFCZE2qrSp
	 dYzgDTBZzP5vqSzdyj2CMeg2uvDPwVQSb/Zr8gdAd7DLmoNJh2DJJyvBBwRMYaIo0y
	 53f390RpSBrThZuhRCsB7Xx3TABYTrvMauivAtSGc5APe9KcBQE0R/neKGWgQBPMSN
	 jrh1pzebwO5xP1sYsY1RAaWl9j9dPcYbTUyNKRhYXmS+vYMEOvMhQ/GrsQ1G4/5jOa
	 9BY0BZmFniAHFpqgqnn+f4z9523proqYs6DM/WCBLC3Q4MUWG8+qjZ7tToSjgpeO+h
	 jHtfURSc3arog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF3AE776C0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659103358.21013.3716855613325632010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: becac112ae2fc23c98675994cf763ee9f2d9e8ecb65ecac9d0c272a1c4182b03
Date: Wed, 24 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766591033
