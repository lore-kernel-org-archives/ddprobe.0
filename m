Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F3B36B
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736115954; cv=none; b=TBOebPpf4IxwBDykG8VR3jXdODVtXtuwnULfelZ+X/acDV0i53sxcAV1jEwVxetjIZXWcDC4hHJ94pxaTgxdI84uhG1c83awlsjPNeUDRCWmbghkv9oErTEMd/uZI6FWMKRZM4fCrBhBFCxGnOUTezhUPYu5rh0eBHrAuN1+Whw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736115954; c=relaxed/simple;
	bh=nO6TYx7ES6tshy56FpedDP5bDY6ZbeeQwcf/j/4KJbU=;
	h=To:Subject:From:Message-Id:Date; b=tB3HU//Q2fYFjWftGH1LosOJAF0/D0Vk9SaDiudyrHHule06Cg5TDzqMK809pPqRQsyM8cltkBpX5r1QfmS6GUt2OcvIkm4kgRQB+iwqrhEKhng0ZjThbQsmeKqjUgZzPmrOduAY+ftD/wyhCAiTjz8eDaN5KNG93NaViI+hq/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUrQMsx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUrQMsx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA083C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736115953;
	bh=nO6TYx7ES6tshy56FpedDP5bDY6ZbeeQwcf/j/4KJbU=;
	h=To:Subject:From:Date:From;
	b=cUrQMsx7ZctoHvyt7UiqCvLcGAM/vRCXPXk0g+FZMPdHd8sm7o5l3ocZBoSIt+s9s
	 tlVo1xzZIc1nQDiA0oEVZbsICX+/7c4UOpDvxHcHdeUNYEMxzVjdd+jvbt0Fmysvwq
	 0l00u/jSx99DmAAUz2KU91RCjhsbbRsPZmvmkcEP+NeHGXJCW7loYEH/TiT92TkJ+S
	 o8y9Jnydg8ECLV1ddZjZKgpe23aADDxNi+3Acz+Eh9aLWbL40JANYtOjuSkcEdXX2l
	 ytHIJekQQZrFYLEbVSk+FGX/B0Drulb628YgI4Kx5+FmYuhW6yDCGG6AcRs32HW9y8
	 COIasYlOukHMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93738E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173611595358.7025.6792391915700396295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f21ef061138e85bdae04a5f23a22c5c91d0cf5320f29caea01fcb28ef97121
Date: Sun, 05 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736115953
