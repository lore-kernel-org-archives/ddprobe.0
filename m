Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208CD21E08B
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754602794; cv=none; b=o/eK4hGC557Dcena4WZUbeb08ocuy9LQnyz96Axsb/Ed8y4L6iwMAQpC3DpnKfwtOkzOQWoGkhJhbKJrYDzRd5yQBFhAsqQM21235sKtiFY/YPwrCwJgywoIOtR+rmjNTWek6JxWVSYnHGDO/kz63bWY4kpSjgDa40+K8wwlMTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754602794; c=relaxed/simple;
	bh=+Vs5iAziS7Bdmhve9WGpML/cTm3jkim8i3U2skCCWtg=;
	h=To:Subject:From:Message-Id:Date; b=u3lfbTUTzwGZAGg+PemLEz6/WqmJjCyXIV0AN9+XLKDjlMPZuewkcgC9xZxAsLt33uSe2V0fMPoqlABYyi1+dj9zhIJHl3Mox2c4lUxalXljDfV5aqDn4IMiPoeW2RLkvZzE52pdkHgipybTYSTmBJ5OtxVOo0QzChRLO5ZCYhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs19ECYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs19ECYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EEDC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754602793;
	bh=+Vs5iAziS7Bdmhve9WGpML/cTm3jkim8i3U2skCCWtg=;
	h=To:Subject:From:Date:From;
	b=Cs19ECYv0WzrbctBkvarqwfFhvgSzeBSlprjAqKDjWrs2IX9FyOxZ/yzzrvWXWfOu
	 XIo0ZZbUlaUKPR6xyMyeXEBo7OKiCHv3I+nqnU1V8haXuOV/U0NHHdP58EH6G9SUla
	 BNDRn/9aJjcGnSnCYqESZjSwEADNje7Z4H/DK67Pzg20Q0uer52i1kEIDwFDcdDWVP
	 fUl73H9WPz40DOCZ4Lfb2tixyMAMAWG1VRjaIjF7lm16kpnn3MVtr0R2jl807xYCKl
	 mSFD3auzgxaBV5l3vs3NwZXieOoVR4UITxlG+E5D3/nVOGAqgKKukkOHMz74dWdt/5
	 tmSvaVUA+PwOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8DEC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460279358.6013.2560590652011092779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655626ce72ab9d98d6f9f2e52fc05fa848ec3e19bfdb39686cbdcfb61c362e07
Date: Thu, 07 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754602793
