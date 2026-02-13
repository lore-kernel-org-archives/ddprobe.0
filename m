Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274F526299
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770951894; cv=none; b=pj3+lPIMvL+QmCa86CDFRvCWK4MfeDOBszroxKSs9Xl7tOkxpv4wV5rIdioosSXMa/p864T3IuU8V0zFUrdZN8gQtiWQNKdFXE/p3CPO/X+tNCSA5A3GIR/h56MfqSkvwI02BLDzh8Z/EkUcC5YzZsb0FTwZ14unE4Rb4pRqzTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770951894; c=relaxed/simple;
	bh=oToikpnwpKMZ+6DYUaNghbY0BYHKvO0ebghL1A/evOg=;
	h=To:Subject:From:Message-Id:Date; b=WFRZ5zFCaxVbxr4eP715T3T9C9gOiAZHkG17PGLYVTWcbxbc0/QPB8IKWRI6tyyuF+xuRPpMdBWh+TnFdPb0QheOM//zcrpfC9Y/jVtpFNhEmXCt5lsXsiS5bjsNEKQlG3ojpFOpyps2HeAD83+++Ntuj2SVr9vwBIPtyPi9DDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaPMxJv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaPMxJv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6ABAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770951893;
	bh=oToikpnwpKMZ+6DYUaNghbY0BYHKvO0ebghL1A/evOg=;
	h=To:Subject:From:Date:From;
	b=VaPMxJv45H8yLqFP8BEmkm7mdlpwQBrDWgEyL5m3JS1wubXchbeIr9kxxAppBcoGZ
	 6IHrkmhhPKE4qPY/Uf5O7cpqnuJYImjNk6XCAhOEaHYqjFIxf4iwFec/JAK2PCnF+7
	 2clhibcAvjug5yS/nbW2McOggq2I5X+IGo9/rkqWbVZni6c5fMHeepZHuTjOSItfFj
	 n7sJflUXJ72u9bYIssIlkK4TO6wk9Z/mqPVhUJwETCD76CMQ4RTnAOiIn0K053ciMr
	 kir+/1wkr75OhdqRMz0Tq440WAS3Kp7Qcag6pd0iMy0RlGVjbLifanhEaSHN4+xyzQ
	 ZV8JPoe05qbfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A715CEF48C5
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095189367.25134.11583734868273116277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23b9d8d8cc73f0f10ea468bd18d7a7f827aff02bfca403ae978476b1e30324ce
Date: Fri, 13 Feb 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770951893
