Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5BEB64A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738008954; cv=none; b=nlwjrRFssG6N9AY5QaxTCFh1t6+dZfvKgD8vjCxhwepY6aIn8241fxOieHdpGczYZhNAiqzDhLtgWSfrYlDKgktDZ2O1jpOrgoZCrp00VEy0M1H6BHblbX990uOWXx85bk88hiqNV0AdAbq1B/a404h7s86RICHYsfnmlJyHQDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738008954; c=relaxed/simple;
	bh=/py1PRSBzvmFH8qj0oK1WC6DAW6lFo1Xfm8Uiy0ydec=;
	h=To:Subject:From:Message-Id:Date; b=PytFaXRPbBJbPM4dOnBAiGqffzu3UBIYHIzP7p5ZQSPAGccLJ5adABASd5XsPA5EeTw1xNtxnZ8Wovzn+ms72J7dijDS51njIkIRAb67ZnG95QsPeUl+rDUxSqRl6d0nFWdz89niYFkgDufk9bW0lDHRPXYvMwq1I90X+jbwGmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWvEo1fY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWvEo1fY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4BFC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738008953;
	bh=/py1PRSBzvmFH8qj0oK1WC6DAW6lFo1Xfm8Uiy0ydec=;
	h=To:Subject:From:Date:From;
	b=nWvEo1fY1WDFw35q4YMNg8JvrNgTIJlt2tNhZmfQ85UpTWkFE6QmPrSwyTA+BqOaT
	 PBf5EheX9JKDr8b8CJ23sBGaM/2U2/uO3TXf25mq/hd51Gij64N062MbmI5j4ATazj
	 l39/6pDUDSMfDCmY3Y+oknPHWI/+yoLhNrw7I+9I1Zr7wM1rqNbq+9dMpKjQTO4ipf
	 L3Vo1JCfTcSYo9XzsZw2KeAsKCz/1ZzSLrZWuCw8xgE7M/rpUgb+V8/uHlu0tn/jBF
	 Af2RThpP/Fo+Al/os6AuVlmGjPzULHckH6OwedrEw9yqR1FgzfSDY4KKsoiBMn27wH
	 71qsw9BXfIGYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBA0C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173800895369.3256.11527050655592767980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: babc3487458aaf43ae0ab2a59b9b7895f22c829361e05613479d86fd31f23595
Date: Mon, 27 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738008953
