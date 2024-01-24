Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E72E541
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706074097; cv=none; b=Dasu04WyYsGj95IwdO8B9SK1QY4Ex+nIZ3Y1rYBvJPtFpI2DYQdtz28CZE8w9SJqbEPeeX9JuWZC57+KvwOWIQVY+aKzJiKDoPeZpTCwt6JyPbba6or1jZK9V5095JZuWPKR4UxG8HP5g4qVJpt9aHXL0VRla6tclpRStbpaLA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706074097; c=relaxed/simple;
	bh=kjCC+OBPhHaFM0MEqU+RqcQ5xKnSL5XYoTBa3mRiK+A=;
	h=To:Subject:From:Message-Id:Date; b=WFrz5JuU87/nWBgSn4mQWeya1zOAjHhvKa5XFga7jq4ciGbRMwx1FGQ1y+RUKuRU61xO6SdP7iAB8x7Bi3ifZaDfCoLtBIAVZJCGDinBNsKqpglkpTwPv4MCdLSelvl47ugqrDq3A258pPPwkWuDc/ZyW9uArDhXCJlwgpoNXMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X11umqDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X11umqDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EF5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706074096;
	bh=kjCC+OBPhHaFM0MEqU+RqcQ5xKnSL5XYoTBa3mRiK+A=;
	h=To:Subject:From:Date:From;
	b=X11umqDGuTxAYWs/M6HpDsBsGVu97aCajBbVppmyTnNnQ3rtQDMTJkrPoWIiZBadq
	 Rrqwr9E2tdjZZ7/E7WqbwUBRx22Ob6LUn2+Lpqugt43uXJo5IcrhwVMnTzA4YoD9/u
	 8kQswdh1jR2naAXi34TLQi1FWUJ24UgWBpdqGrrAUkI9kHJuI7GPt1ffklU4wlK5cN
	 tDuknDk1qHPMf3HyzwyIzbW3m96p9xO0TLwjUMhP+YUX1mMDVeDa8k15bVYcavEtV7
	 Lv4y9fkP8KP47Qm4XechGDakSNLyayBQPJvPMJ56wUL3rin6E8h8awfPQHHRW05Ai1
	 sviTHXuq99c8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E5EBC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170607409637.5918.18392966804582146166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023882ed6125b703c854edf4cb695bfd6b9a3e2f1b30a770a09b2311dfed5ca7
Date: Wed, 24 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706074096
