Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BD11E885
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727097354; cv=none; b=icItoS0XuenRuCsR8DTITzY+YisXZ8sGa/23CY6QrhIQQY4f0xIgIQIF+Ga7Uzq+M2bWTbp8xuHfNlYE187XvObNZ5B+NltIMXpA3R05B173022hAYUnHRWO4vsoInj4VnSsnRVCoX9WoD+OAyuOc+dqc+O0XplNN8H52RJl3oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727097354; c=relaxed/simple;
	bh=NTHmREjxrFFizYgCT975RfP9VygHLtIF76KBaG4DSE0=;
	h=To:Subject:From:Message-Id:Date; b=EirHQ1IQU+fLaJCI0L89h91lJM7dtp4RIKfFNyvjK4WN8hA4M8CjXWtY2S+kvayGSdCZCWeER5/xG7oFABBC49+dVoQTLISNRYQmgWAuhcLEr0W0pOEsUCGNOmEgst7GWKbzPuNTLJUmBMPFyjPS2WZcZVAh482edGNaiG9rkFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHO2NJPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHO2NJPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71FCC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727097353;
	bh=NTHmREjxrFFizYgCT975RfP9VygHLtIF76KBaG4DSE0=;
	h=To:Subject:From:Date:From;
	b=RHO2NJPgmkwzWZocxMUtToC+Lzmxua3MKeSqodkACB8LNbC4vZzRJwN9SBMDlaJHl
	 GJ+DJURmV4upBoAEm2ly/DZ5ZQFp8vtEGXemNJjVteVhPsal6xBuq13AaRNKynQPaz
	 diwrsaqqnkjA4k338zrCUQo6tRH0ERWugl3GM75uST7JOzYrcq63PjBzFugIoCKQ20
	 jzif5SbEOS8yHw8aYoHZLa6HYYE+OFL6i5c2fcUWp4bjFJ9HbueDDL9RABhFOAVfRg
	 kAQwK6xCQjhbF9NfXKe8G69b+FeKKXjGzCg1672hC0UmDBbhG8k4+rZ29G/g2P1u5N
	 9XokT5cXURuEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3CE0CF9C69
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172709735366.32550.6642685653444999773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d381f2c5e7374648d00de804d241b613a90b39eec7ecbd4c2d6ffd814f857f92
Date: Mon, 23 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727097353
