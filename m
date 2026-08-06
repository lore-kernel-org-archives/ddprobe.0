Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B74D38B157
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785979234; cv=none; b=K0+eWQBXa6KRUR2z6/ITgrK9lbtFeXriUZbLV6kjl9cb4/W3d7liBL+Gh5XB3UFa27bAy77NfrY1Qi9sK3L9bfBl36oFcCsft8eNKWOAyDGzUmoeEx8jKtZRtlWwhuQY9bIbHyJFJKG5r34jZntIEKy9vAvxcXb6YYuBCrDhV6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785979234; c=relaxed/simple;
	bh=tU2SRzvnCQiZl3AxohOWEQWfUboCg9KNMREJTHv7sfo=;
	h=To:Subject:From:Message-Id:Date; b=MxwnOeNWh0uGCeiE1Y8WV6QdPXK9b9M9Y/b60z73YGQ1SYFeH8dFbab6OF1tv4R6qQJIEIoci64O75gd7wlrLX7xhL0t8JBV4YQblEdTN7xmBCK8Iaqu/OW/Bn01ssrJqmTSluNgdffVOeAXbmx+UFy2rsN3k+klbDjD8fQlSVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrdZ44dd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrdZ44dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD584C19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785979233;
	bh=tU2SRzvnCQiZl3AxohOWEQWfUboCg9KNMREJTHv7sfo=;
	h=To:Subject:From:Date:From;
	b=LrdZ44ddkQt99Ak5G8gKgPTspVJf33ntJAe0Rjk6VdrbeW5MGcj+bq/YEBExKqUHt
	 UlojLCojDVaVwpTn6/QlLtsYoS5LuPvA8hKd/ivNdxYx5rQNMrwHa5C/Nkcw6MJMQC
	 qqL7UAJBN6XGGqLBBlE5J3QbVoGqhMviX3GxLzddelYKLsjU8U0Q4WgkWru4shjCh/
	 UfWTmSAxobpxuTHGcSmkAFBSFoVVcX7taxF4DhHS7rlZisreWQvBG7f59sch2rMt2k
	 L0nR6UNG90nvn6H3H7OVScTfM1p6Qhj2BQ8tADpeES3klR+i1VW622z8ndgc6FHmVg
	 m8oEE6Cnu3Nlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA59EC55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597923368.11845.18225488695347478531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 112935c3103082d73c1815134b5dabdb8400aa6ba242fe8d35a58f76dda72058
Date: Thu, 06 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785979233
