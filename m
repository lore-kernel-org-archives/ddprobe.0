Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256E023504C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750407594; cv=none; b=LzXLu5DXmTLShvoAvQeMna8K+XX/fUsUN21qPeW3ScFnM7BHS9gj7jGCz9SwARlgM6QIW2fsKQ18aUWFIlggmuF65yDlS7ZY7SCi/7z8KOczIcdHN+e1vm4OpsgI3MqkrbXFwTFGFpDQMQwzsGD/ADUoHz6yYdI5YidcnulEY3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750407594; c=relaxed/simple;
	bh=+UdI89lrYifX7y1zaYADtK4P8Ez0BmRpfKYGxvbRmAI=;
	h=To:Subject:From:Message-Id:Date; b=Isb+CJ1oZAAV2VAei9HtaulQ5LTwu3AyUgnJnWH9V5CnL78VXEuoF+mzCEkXzBUCMHXGReHcJUAg17NQ4MTCXF47LOMa9rHA3EHsT+unmHvw3B6cw1uRh7tqH5SBBRaXNGjRRewcGZ0zaWiSB0vXjW8MrSdAzWreTxNUwh8iBKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1L1xL0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1L1xL0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DABC4CEF3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750407593;
	bh=+UdI89lrYifX7y1zaYADtK4P8Ez0BmRpfKYGxvbRmAI=;
	h=To:Subject:From:Date:From;
	b=u1L1xL0Pl8u95eHY8oeUWwUVKTeYOlsE7c+LKLlzTrQxgkV/UE8ePU1DsTKCj05Cv
	 +BkflM7/pLH1A3bmgsMPT3LGi75Qg71461bwsPHCdF0W+wQQzOjp8LdesBYfCBiO2f
	 QG/Ee4DQlyMzD55xX/1amGkX9gz6EMMSBv+2u170BbZWBe5hY8T+4/fINQXzKHD3wS
	 vjyyBVvDPfH0waA60+6SNh90zWjnx60Xl+fQwzlEGQJbtEJaZhx2BleR3KNd96Y4Us
	 3Rwk9A7DCfllGV4fw0DK+7LN0Yq1lc04qUBHUXGXbU34L8QBssza8K6JZJDmBCH1f3
	 T/55mRg4sdLwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E904C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040759357.26112.14331104541914421477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b03fe4fcd934951794655573bb7db1ef9c72a53182ce894aeaaaf1da981b230
Date: Fri, 20 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750407593
