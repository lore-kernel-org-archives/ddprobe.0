Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8B93C9EED
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786878034; cv=none; b=oWeespxuDwnfsGe3aA2SOxtUoJVP+aIPsb8KUFI82gK6tf+c2fUOdJUt6VhyxST4OD/AXVybd3YJ2k+PSKh6J70fqbpMWA8D2dsa463Wr28m0WiFjnViOZfRhK8yFlcO9YaYFhxLdNGE2camuMaHaI9FKtRhe6BfvwFBg1asjwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786878034; c=relaxed/simple;
	bh=iNEo4MdGo4/QKS9VMM7+L3fLqmpKW039+CK7NSzmzaw=;
	h=To:Subject:From:Message-Id:Date; b=TzXiR5H5P9PNfSeWJFj9fOUBzPZfAz/jKL4vf8rXVQ34b30t1rO/wj4sN1FcSA0jy5BRQ+EvmS9NvOEWLmUDsZfBWQfPwzIrkMpzvkFR0f76pmOvgTTXg/dVQai088fsF36O7JHO0Xbfj10YPQFk6ZHVuCt66iK0yeEOEDcNOnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eX4DAiP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eX4DAiP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3D8C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786878033;
	bh=iNEo4MdGo4/QKS9VMM7+L3fLqmpKW039+CK7NSzmzaw=;
	h=To:Subject:From:Date:From;
	b=eX4DAiP8YdKuaWc/fKOR+txRv2vdwIgUhMzH4BQU2oR4fTNG4+anjgsMu+iLRQERf
	 87/uoNQjtmdcnyJwcPPYrPLQqWCvgsC4caQihSh74pdGILcGSgr+91hx3dakiycicE
	 UazUEczHfHtXqx//w+7LTKt9+oNhQLF6jrTR1NKtm9RI7b9ibfboaqHf8B0GR5IZI9
	 GdUo1/+uOb1zzK8Bs7NAdROqPRa0nAH4fK2hAeP2KjR5uQ+A6Yg4tRycYftm1iqbRY
	 zI82lihapgweQseGL7HbSDVjGTKPfhb4cq8mvG7siJ821Geh4WpkPItd5fV2WgIZvz
	 u4jhDLBmFpsug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B882CC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178687803374.30327.7054658172281501056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac3a4ce7d074319110e8d09d84d17d500469a97b55ff35f86d60a37fae2e7ef4
Date: Sun, 16 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786878033
