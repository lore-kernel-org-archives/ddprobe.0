Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55819370AE2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790620234; cv=none; b=Kjdirx1BUOGRWQpkiMymIPA8W4KOh+4edG6y0WEvGBR9p+DO1su2qQiP85ECy8nP2cmEwo19nCamY1Al+mkACmqIfzsieYyoy+YgzkFU4Ib15vWd0SSD8zdJ9sxsDs/L/yPPbDoU6UjFUZy44A16J55nKC3oCRBEiRvJ7YUDiq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790620234; c=relaxed/simple;
	bh=Js9Y+ULssbeJoCh2vovIKh05Z0xal6vcaCoVhAwTu6E=;
	h=To:Subject:From:Message-Id:Date; b=gDp7S7OT/kGrhhdFJEqW3nJkKeMQMJz1VMYGGhKhfl8uYUVMKFE3fv8T04Yj/AyF8vkZDB3+wx5UbsoSKad75/i6SCwTzmf9oqo96x96SO18/Y+Nd+ISHgjklN96mk1zGmRgaaCBmEc8IwuM1mqw3t15iQh/Wlh6zdGRWF8mogk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnTgKles; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnTgKles"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC020C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790620233;
	bh=Js9Y+ULssbeJoCh2vovIKh05Z0xal6vcaCoVhAwTu6E=;
	h=To:Subject:From:Date:From;
	b=jnTgKlesPBF3TKR/LFIcCSXdKYXW/DrUqSnOPev0gsH+aZegWYc/K+z9P5rEOgmL6
	 fSeiUnPJO4pMTLL7ec0N1/rS/J3YskNui54AMYw5lg+/lC2hxirODKTj6JlVmU1lqS
	 ThlZRs1lJsm2a87kHQOi3ZohBsnCLI9zfqFXo2N5hfH9+UfvSN3A/FSSxnlVzVFVCV
	 uUXcFHq71ehvstC1na2ZJFTR22fKbFqxS+HyY3dRckebwkwje7MB6f5zLVWmm1fuwC
	 D8xh8eDinLDLehw6hZr3Ve8bnpI1I14KSDeGe3Mc6nHtWqyI8LOPfvfLXpHvsdXhHP
	 ukhwPALvOQe1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FFBCA5FA3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179062023371.17302.11353872507816657783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7df68551640828240b5ccf0a290d4ff67f9513260d6ac80de1c979a0da51058
Date: Mon, 28 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790620233
