Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4F031A041
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756472394; cv=none; b=pmmFh9EqlPu7eDP6j9mE+LAqH4EbFupOTL4E0ew1oaJyCh6VlLivB78q53UUapCMJpamSKq8n6zy3fVnqaL+VZqJXCGOjmz7M1M2TweaS2HR331+G/gvvM6/tmoeA5VOq5kMSyrQ6CR3x39zX7BDJwQNpD031KJdggtIugHykGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756472394; c=relaxed/simple;
	bh=We68z1oqbAVDjDDZQadSDvRPS55i64EeSLJbLAFoxfw=;
	h=To:Subject:From:Message-Id:Date; b=XI74tMoer+37Cv0WN68BJ7nWCTwj0cRUQGCwn/nr9g290wIS8TqysmJl6++mNCH88JF27T5dn6A/SXNnoKfdrTMh++BiHEmeSB4j4UEosE0cBlVr9ZfwVw3kG+SBjexjU0Zi/WwTfaUBO+fABFfPmu8zL/9C88xVhLEGcW+JYis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFRReED0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFRReED0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4C8C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756472393;
	bh=We68z1oqbAVDjDDZQadSDvRPS55i64EeSLJbLAFoxfw=;
	h=To:Subject:From:Date:From;
	b=XFRReED0WPEMiqovlFLvVootfKBGlihTinBYYfWZ5VaWTGGbnXT2pfLeA9NvpTPZY
	 MfKZF0sMtOoRlY0DkFQ4bA9/IWBQDqmsvEuWKUBHayu8kdpv8M756l5rZK6GRqoyhk
	 7BWsBFdD9yls3Gy4aJgn7POff2NegAXmClNMla1Frgr9vrvWydFC5FTKvCSbA6TyVM
	 VZWyHwRFrpKh4EWQ5Os64eS3oR5HHebAa+z2+eDnpitlW/3THdGC+i6uu1OqALefg/
	 02WIXWl2dYmy9nA8MklM0slpcjiNAAW9jEGdSo4R8sm3iCeTLL02Yqt6AJZdkzrslO
	 V+xIi+eOaq/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B7CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647239357.6959.4782838017736258600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1032183537ee53cfb6b51e9c990425944231f168ace3ef578b5fbbdc54e17bc4
Date: Fri, 29 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756472393
