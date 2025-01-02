Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3950A190485
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735813554; cv=none; b=eNlivw9T0ctQPxcGsKP7h3K1SJq5EYSa281+blV5TwWsT4Jqmd2ZQvsnjMQ1tmz/u7s2oaitBR8Qy1oUTokc36U5WrZr6/aHUbbSBLb5U9z5VuULnNSnUjqKfWyO1CMchYPZVpqqgp5EwrmICRsM13rDHPHK8NVMIKHXXM0g+1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735813554; c=relaxed/simple;
	bh=V7A0BmfID9Ddm8v6mUQBt2TjQN88LHoOJ1YzuppWCeo=;
	h=To:Subject:From:Message-Id:Date; b=t3EXpZvOrTqzz6BAYvozbt3gO6n65nPCryJg4BQeuqfzmGF6u7WC1qSm2YWmoIsoiSf78y+aTvd4lLJ7GeDUOBasZQ593zcJfDtOK+q4UyuvO8MKJtstqdrstvmiWXcS12ZUmuY8fnp/hTDtzi2lYIrUVGza0SbPislivpUPVV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4cVdDyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4cVdDyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2308C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735813553;
	bh=V7A0BmfID9Ddm8v6mUQBt2TjQN88LHoOJ1YzuppWCeo=;
	h=To:Subject:From:Date:From;
	b=b4cVdDyg0tMKDArI8B2rJOFro+/vSqgTEpL4Do7p+i4Cw3HSalF/kWEvdR/jooCFO
	 UDCGzsi/pv178fPTOXS/rvLw8SfPUSQ/K1HhDzAVw5tDd73hqGjmmMCO60PU7tu8T8
	 1Q1zc1ne1EqZAZJEIxWZDHcKaIsQXG2vXl9wNmrtXWdV+jvJeQF5UtfOYZ8w+FUbMy
	 s8KVjU5X1Jw8BHLBWp4Al6rvdyuQ52b2CnMLZ9vVqsFEVFPiHRLVry3chqYZXm9gaS
	 FRfU4ixS90zCoSd20f04L8UUun5OoMXfJSjdHIZZLMIyHP6AjGEB1MN4F2uBES/WxJ
	 jYF9xXefWoSAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90605E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581355358.14586.4494354647376416072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd49a4b64996b49ec7bdf227d7d89e2ab4d18885ce78629d0984233ccfd56129
Date: Thu, 02 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735813553
