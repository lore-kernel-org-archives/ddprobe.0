Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4649918FDAB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755730194; cv=none; b=tbdUYrwar3SnzpekFVkOdOijl8YQRAVYuO80idC9CLenTXiAy94WY1TGpA9BXwJ2yI03E0bN2u87pNT0h+RsKz9cYT2cTfINNtI+6V1iLxv16B1AAqO9vKADsdMqm2YcQFK59hzTELRP0A5Jz8DFZa4mOoT+G/i12WrSG83RT2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755730194; c=relaxed/simple;
	bh=PryHgR44SZ9UEjOpaxIAkfgOy9l/wLBFwBu0lvNiJQg=;
	h=To:Subject:From:Message-Id:Date; b=qIc9RQEZH9m0gs+aixOa4H96RanY5IX9tWZJursKT0UNearsJ1Z7DWLKIK262GW5U6xSqAD2DdIRe3JnLqaHB+WlgXB3UH5sH0+EPAcYfie8wTNFdje1bpVr1N5gq9p+4+1mfMkprnvoU1yfAo9BjH1C5a1USjMmn6kZczE3Lec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEJzD8Pa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEJzD8Pa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A890DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755730193;
	bh=PryHgR44SZ9UEjOpaxIAkfgOy9l/wLBFwBu0lvNiJQg=;
	h=To:Subject:From:Date:From;
	b=IEJzD8PaB0wGx2Y7GbGtL7YLFm0xxFkv7Vy2Wv43EBzs5qT4vy/2NHh1BKvw4y6Yr
	 29ZtltT2yLliRQF/yT/Gr54EB3GmvDOYQRp4d/EKW8rJdItFB0jpExVcBcSpMV7G3f
	 1N8UtYVVP5fZem6craloQLQcFaSkvO07vqAwymwncT06fvHtfoDBM1aZbwiiCVQjFM
	 4gTSDgLyGOtZJC+eSB4zXzRdINcVoymTm/D6dfhH5LqsgwoP1NFm49uKNKF+cRjqvE
	 UXt+yin73o+j3YH87w4vgN4wWfIGUmxu8RnN5OBVr+WphnnZglwEYNL4gk/ovhS5gD
	 c5jps7MsxFdlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F321CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573019357.13270.16102654822590077143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753a76cd3409cee14974eb06a60f64769338524bc6bfee816ccabdff9d466631
Date: Wed, 20 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755730193
