Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F86217F3B
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729898154; cv=none; b=itqXRixLf/+MrcG3t7qv+nTbyC2NY6jlt8zQoRzmXqpPjLiiw9Yn3qlsnnvlgdCOWT+p+IZtpfxH4hf54/Ik1Vsgw/sqQuGQ7tZF00xLttEqkFJ3Jo5rhpAO7Eh7oQBnU/5yhYKGgcgO6WzZV2MzEl8ahI9WkbKuVzDYL4G8u6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729898154; c=relaxed/simple;
	bh=9eMwPbq/jUEC4PVyIwxmdqo0Tn0qeCKYreaJbSANGlI=;
	h=To:Subject:From:Message-Id:Date; b=YU6fyLca9Iwr1ASXCVISBjx7DMECZ20M6xdJNd/PDEEFIzzpfB9r81vRnTjluArAmpB+itNunVjHGr6gxLE6YtfFine5liq4MPEQdTvFTQiFnAfF5z/hd/BNMKc9HT7/nE9LCPw8mEoc+A/zdkmlXg44Hd9sMlVaIALOvicKB1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PynLWR55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PynLWR55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE52AC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729898153;
	bh=9eMwPbq/jUEC4PVyIwxmdqo0Tn0qeCKYreaJbSANGlI=;
	h=To:Subject:From:Date:From;
	b=PynLWR55qyA/iquJhk1D+wvuM+PrImmUBFT37NcvLscYwdHeEP6U6QLhDjDEssfCV
	 NhZb/6tQD/FPezxwqUJQcStrLHlilYUOSdoju90H5tWjtNCoXLlQbpPjVU6xa1mKqm
	 hcVrQqTRWd/Bs7B9Kn3nwTdQ2guzxH7S6GjsmljBFaA+Q/uk148Wa9XPHYVIr5SPsS
	 bLzPdQIdVcFF+wv+Y82EqsFkkMK1/BiwMIk0DAfxwtiCIAPRXvYDeml0PwWeYG5sO8
	 nYkdjlsN0NCXMSKdXVVFaNuHewdF+rcBihtvK0W1fz+59M3DT7Mlc0uVeSos1OPXJ9
	 6l+B9ABe2wffQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DB1D149F6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172989815361.8529.7679824774365914222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2125b4a325b75201e030d0047bcf41b3eec1cc57afe5664d8cf44ba11e0046bc
Date: Fri, 25 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729898153
