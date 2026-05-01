Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6008241C2F5
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777663654; cv=none; b=i1FxyMRqVzo863GI76DrGbmsmnz1W6n0vsIOc+//woIYGigngzlWBm32W304ByeZc+MCXL/pPKpEarXYl2g/v5OJVP3Y32tb1eVsUQc8fEg6Yvvvn6rihENZ1/lGuUvTXm5WCCsyBqg0eeDPLKXvmMR6iEyFCQJgRyFhlpixCD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777663654; c=relaxed/simple;
	bh=JWcIrNHYgSu/rxkz2ig1W48ZJjutwGWnXDFxonp2fIw=;
	h=To:Subject:From:Message-Id:Date; b=p3rS7z7XZWBuPuOg690Hp0PwLLnTAGzugVzeaf8fegkSCmY6VANC9eALH9ATHqWeVF1UOXtCrB/12YzELnB3I+TRD5tz2BmdYxYcWYCL8i1Iv9LakAJ5ru3jHymSGT6VgTwQwzFo8wz2gR+jEzzti6ykzystGGlbuJHyAXD10i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNQBPSxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNQBPSxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC103C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777663653;
	bh=JWcIrNHYgSu/rxkz2ig1W48ZJjutwGWnXDFxonp2fIw=;
	h=To:Subject:From:Date:From;
	b=CNQBPSxLnfJRWfQrl7Ulm/RnAHBEGyl2GFJjCoF9jWgPK+/WLaCrJEm95XkYK6MU3
	 GA+9fBURWQXdsC8NGpcJkveEN6jNuXXe+U3eA8N+wrsee7ANhUTg5G0erKsLslA+rT
	 6fny3w8qts1XdGYGqjf8D4kG28m3ghLbLOfOXTdNrNUkARwGz2XthC9z1rtLkcb9Jj
	 7Y9vizyOmoy8EB1bfPwOjeKK/US1IiB0Q8ppwmseRKfbLIKhDQM+1TheoiKAaHItG3
	 lqqXO+NfZ/5XRgvgfsqEXQyHda6Z49w6wW6GE7WW/eIUTlw1vx7SlTNfWOIH4xPOGp
	 l2AhmdgqNSk+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A940ECD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766365368.32185.12785224443269164265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1de923d731b0ac831b71cfbbabb356265a7398aa7141443248c78f83fce24d
Date: Fri, 01 May 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777663653
