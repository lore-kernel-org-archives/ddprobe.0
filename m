Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94D2853EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763349714; cv=none; b=FfU9F3THwcfa6g6egarxHKsVFebrL0K0xKbOWAqfa8E0cW8jGZIburedgdMC9a/QkpVLjTiSgx2fWH+Hz1PwQUma5wWGcANaV0qQFrKEdndESgZw+q4MwVyoDdzqMGRBWYW24Q6u/CSHEWE+bz1VSBJTmwhwWt3/P1sjuSw6q9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763349714; c=relaxed/simple;
	bh=jfU1YZ/Zuvmm615k+TsFPvj6x5UqB1wCAyhXNs4mrKM=;
	h=To:Subject:From:Message-Id:Date; b=huns/oiu0dwPcQfBJJKPo6DTnvmemfo7QTM+tOXQkp+ZlK6zmy81nsz0usjUTxVjmUx7pgceP5ag6kVYRVJIrAWA6yWIuq+grPP1xPuaMfsnwHm+s2zJoyFRxeZgJEwh8bpWuuB0LmlghZkc7b/WFIsUicXdAoWrP934oQyr2vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwmeQuxM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwmeQuxM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A896BC116D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763349713;
	bh=jfU1YZ/Zuvmm615k+TsFPvj6x5UqB1wCAyhXNs4mrKM=;
	h=To:Subject:From:Date:From;
	b=uwmeQuxMGJKwuf7PV9WvCcXehfXxrn+bObPTOMa3vv03OAi7Nnpkz3YeGTFYu8grv
	 IBDyHpQY6+rB5MVXC4/1fNYeC/QWOUS/tu4w/StDo40Cl9OqKdir2A8TRGTwKPG4kI
	 trotm4192N+FCLEoagrdRW0FNdt8DjD8EGV6fiIIqz4FV1Wwr8kboIMEDWguDbKHUb
	 UXyjMTfYtf0O9uDTUMV5CjhtwI7ZRoSbY6akrKcs0TTdmZqlEHFvLxNJLaUJ6x5PQE
	 7ECyaVOIMg3+6W2XGCDfdpQT6/hrdKUuI5UNbHrXWVe9xUNmsVX/oRKhrvoGZ+Vnfb
	 67ENYp4xykkAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972C8CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 03:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334971360.6410.2855221653210660044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d181e4f5a80d5a99bb4f27579e145023711eb4d38605842579c03e2f53e119
Date: Mon, 17 Nov 2025 03:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763349713
