Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C0925C711
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761313195; cv=none; b=BvTzsAG1jz8G/8znGEx5xwHKMJ6ucwA4e6FU4rOnUpZZEM52NYWf58I6ssosTAhTNx4NKXzpayCyLU+5Wv2FCpN1CQT4Hcgq2NTSnzpx97EbuxL4ZseAHJ1f+Z0kZVpN3l14C9CLVokS7TR9rtEJHuLBIFJT6z3d+EervYa5EAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761313195; c=relaxed/simple;
	bh=I1/Zs/+fYU2n2zcWtI1c5+QWPUf0Dn+92khjP4bNgDQ=;
	h=To:Subject:From:Message-Id:Date; b=kRhEOGtA+Ecgy5Z+9Nk6hl4aCvJWzAsWwz4DqJOozZ8IaoXSqDKRuzI7qxrf/whjDjthW42u7OSHkRQ2d6zTmLELq3xplED3Mfltjqb+Tq7+EL1zQFofXqbzn8OYSv+muPIRT1d/rIy1W2NRagOQhAPn4XKw5TpAoYp4DTw8dvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFOQFzsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFOQFzsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B81C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761313193;
	bh=I1/Zs/+fYU2n2zcWtI1c5+QWPUf0Dn+92khjP4bNgDQ=;
	h=To:Subject:From:Date:From;
	b=KFOQFzsXXcaAgE5Z/gBNr47RLV/E4QfaHsi+iGYW5eY9ClwaVMQztok88g7FxcXvg
	 g0YiA9hXKF9XNJisAKQ0uZe5vyJrjsx77Gw1N0AUgL6nIsYR9b/cU7lNffGtob1CGy
	 JZzPA4GC87ZHclu05XXCU4McAyYKJBMQ9DaRxqtV4Bv4ldoBFz6KPfMD7utQfDGKZk
	 +DYtZLXwGlz6Jy4SBDVhIE7B1TybnmeMPFZ4riGmqHjRDAVuycPYw8Cd8afUtoyAJx
	 vwaNKQsDOP4CL/foa1vprJ0V8DP5X5gAh05EYXhBBvxQSc938xR6SgruqXnInn5llc
	 /wQTjdJSBOifQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9251BCCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131319358.27922.12364646878039009969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13a8f98bba5ca539fe4e495e9ca39ccd120a533e3e4988106bf81c505fa45b3
Date: Fri, 24 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761313193
