Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE99307AC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792038034; cv=none; b=uFCI9taYSJ75qY/QLiSdGih4DRsnWY91RA7L7xpYadeoB5VJ4VMko2fNSkY4PajznV8Bac7dprUEyMuoy2utypG6HrnNuBND7Tv8FWT5TKQQrha6hq82Xn8TsdoX62+pBbV/Hiih7F3ZvaleanVLjkOsMAhUuBRpoL8OuI4vVbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792038034; c=relaxed/simple;
	bh=eqM6cSmoLN+PH/mNT549POsex5SeRAZuUoYnUCH/Xf0=;
	h=To:Subject:From:Message-Id:Date; b=keEWzGNcsXyVfLJFMaznGTqPGaVjCZWd0hRbyONVF5A038khc2iEoZwZNyyN97jml/NxVkNFFuQcT2qw0iQ6So7GThty14E0o4SGk97BYzRGhCfalx8BG+cK0tVmq823aebCXD4l8WQNoUNAIJvKsGQl32pNpNyT9ZlxuQtGzqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCCyrnsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCCyrnsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDECEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792038034;
	bh=eqM6cSmoLN+PH/mNT549POsex5SeRAZuUoYnUCH/Xf0=;
	h=To:Subject:From:Date:From;
	b=KCCyrnsbmoH22akle8C8Y7cZjq4Z96YJOoj+iZqN+XbsoWtDDd1mwgPH/YQGyJbWR
	 F7iQI+VRyjK9a8/gqo8oi2rKf997oTyPfAeGvNHFLEDJzzysrxj7u2ljJhWra6uunX
	 d4NBt0az4RwS3ySuMTm0EJYSw7jzi9WIdt2RpqIGoCIv/zpWnw8dipGsghs/l53/PV
	 GIiEJiWq2+ahKLzz2e/WBCrYXBygf/cmY642eG+Cejk76Nahdo8+WLBqXjLOJcCdm2
	 XNlZK2PqNxVw6c6QpcS4ogThitN766vKJkKaWKArBeXm/xtNbxTtQy+NsRMPNbFxSb
	 FU3aMG6l2APQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF10CC6B2F
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203803373.14011.6265125576714968663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833e7493d9d9a6727860bd543e121258c37260cdbccfd1c59bae9f1bfdbef858
Date: Thu, 15 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792038033
