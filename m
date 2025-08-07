Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B78242D6E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754609394; cv=none; b=EvDl45mW/IoTnAahNswGVMO6MUPGQea30QVFTfpzrB/Kf6xYRZk8DcoHlLKrWAiAtzN3j8PrhIghm1nCY7LIwyxMgVZ3SL/+n9sRg2y78f1U7OQg+FMr6UNE/zlC7fzDBjOHbFgzHoT4Jdh/xH2So67FMiWZrD1kq8v6ubSq7Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754609394; c=relaxed/simple;
	bh=f6qAyDxnKpNvDi5brkS2gk0YcBTo3ellWwsceoPFBkw=;
	h=To:Subject:From:Message-Id:Date; b=BB1LUJGliQryRV/EmJglNhliyw4OOO44U93PB1i7gppPeRcsqYVmxlkvk7BFThyQ8Wd/D3kGM7ul0UVpyXAG+t94FOANELp7yk+Vge+nqT4I3Gx1PLmLj65N70AsyzI7K3PylZyrbQCM5ICKUgDF/J6q7rtiHq6sY8LucNARR1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEADRQMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEADRQMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754609393;
	bh=f6qAyDxnKpNvDi5brkS2gk0YcBTo3ellWwsceoPFBkw=;
	h=To:Subject:From:Date:From;
	b=aEADRQMVjxUptfNjUGQPbWx1NIVdbL6XEx2i/HW8N8WUky8GNibpFQyNqARAPXMZq
	 rcCUq3G3qDevZoe0KndX1oY4Y20FfbyIPuNc5VYQzJ6tKlLQPcPxwUgKG0WIUSEydZ
	 Z981YT70bdLTCjGpiRqQgWEkOSNgew0Ka0TNAcMuELgZ/SuNjZymKW02pAC6ZR5oiC
	 SclJXM+cE4XY40s6Mwag2Tmxb6aviffpgC/PCD37K+lw31mR4jpShajdJdrl43Pv0d
	 2Nptz2DU/kNrxFZz1EsoFji1UOlp+X+L0WMP0gmIld9Tyi4T5opqzDC1nzpsz6pJJ/
	 xFcqpaay54IoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ED0C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460939358.16792.2682398998927934977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07513f74d7717a7701b742074eabdd3afa38ba63e94cef474335c9a7896ccfa
Date: Thu, 07 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754609393
