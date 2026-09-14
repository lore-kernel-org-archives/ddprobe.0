Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562C1470EBC
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789423834; cv=none; b=eXrhxjmk2c6PrqSSKrns/vC7LIW2zULr61cjucOOwNElzP1D76TS+GemC4jMGDjHyDkCbchCu16VEJ3EKvPIgmrwP8IIohehMYCeOcJOoiy3DioyuNTVnPkhAfDSC53eVQukY/4PxH6vPIraEIEQpaByubazaVs5FmAOAtRQr8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789423834; c=relaxed/simple;
	bh=AMWixaKvGZdr4FibLrEgPjInnu1vb8PN8zq+OXrg+g4=;
	h=To:Subject:From:Message-Id:Date; b=bsDx8rlLExpqgjq0oi8mXR10BIWSQHrzE5SSY0vWEippgmF8sRcOnyxd5npVLsS+PCEUzTjHLSAaZ57sgWuJ/GCN4Es8NVH6DiDw7/OZIDjqZD1Yl8TJMLdQ9J45vo0hpsLExoG3YP5Pr/Q7lNSQH8aeLGJ5ArsMXfFHDi1TET8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvoG7R1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvoG7R1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EE2C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789423833;
	bh=AMWixaKvGZdr4FibLrEgPjInnu1vb8PN8zq+OXrg+g4=;
	h=To:Subject:From:Date:From;
	b=IvoG7R1DwC3vhLmeO1Kws23B7ekbrV2e0WygOjBUmchchBoQdc07T2UPfNFwKbuyQ
	 nQo2amJ77i9hE2yhLi51aXaJWql3Y3VCD1nBC5agy2J/yB/MON/0qeJ285AbREwX9a
	 CX3XkMdqgPD9x+wRc5Eca+9ZXhaLp9wXbopBOXzrcHsmu90FsNh4IwqoGhy+mbMiZS
	 9rzCDTGlmnXNIVIeTe8QR7alwJoZfDKjnBsEgYZSVmH5i97fzq+aEy+XwPyFSWyG9J
	 dYV/OnMUSYGgAOE86QWSkDfdC4IMYxBDwoL+agdB+6zIYPReISsW1OAdWPkSYSDaVR
	 0JI1r8OV3yUcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB49C88E77
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178942383369.6667.5026344800952011205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d19861837094e985708c4c2ac999218f5b8e392708e0091a34178b8007e520
Date: Mon, 14 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789423833
