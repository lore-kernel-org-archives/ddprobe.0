Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8592E8DEF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791811834; cv=none; b=FFR7t1BT07gdNiL30YU/0c48uCWmqJSGKLDTk57QjFN+fsLn7CGWYGhJsEZaymSUnGXtnYFuvDVcf6yqrlJFW3mDaRGfdQV4zEZQHtaH34nx62Ccc+oGT3WBb8Q745sDBveFubQZPWPTi3p+cxxMVdRb1egOe2x6fVTk2v3eLGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791811834; c=relaxed/simple;
	bh=niZj/wpWAUZ2kbv0BrdraeHpsLAo2rl7w/jsSnZRitc=;
	h=To:Subject:From:Message-Id:Date; b=pfw2RGhHr6Vawfb9mbDGeAF8XNrihEEu6OKgEu6dBgeSuZ4sl7y6+IqegOnOsLmh02oelm6Ri+nzO4BsYzPM2pXYOKEmRH2r75oRAwXxa9bfPfefmNFO3BK+peYrO6wkxy/hTVuA2BBDrQohAoWjXWn6oGHH9XDccswoxB88VHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVUsKmbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVUsKmbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5E8C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791811833;
	bh=niZj/wpWAUZ2kbv0BrdraeHpsLAo2rl7w/jsSnZRitc=;
	h=To:Subject:From:Date:From;
	b=mVUsKmbM3azMCWi89INEVbNk7sxp7NqTL8H6he/p99hwIO3u1E1tjUzhmQ/T/0F7z
	 Ya/wCvZjh5mq3iKVsFXC+k0Idv3zTohgGjou8AmdDoqmIWqQDysRfn5dNdd4GqAITl
	 VsDhyZdFl+P9mp1Z/lapEPyZQATSAMbn5DpeY9iJqPgI9v7vYcRfU1KiDVkX03tVX+
	 7/9Nv41xbIsRoenAq2SihEOyOD32Z2NICb1eVvUnhR3tyNOX8RroEUJtWyWdY2O5dJ
	 uslUI2+cY7sN+K/HF3qdeIbLIUQ7urK/BJPNT83gJb6Z5jsvK20FJIPFNlGpPioRUv
	 ufPeW7xCj3qGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8E5CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181183368.825.8854351421547584681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78fe69ae932f4b7cef8ca7ed00dd95b4659780517b893af61a69de276063ef36
Date: Mon, 12 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791811833
