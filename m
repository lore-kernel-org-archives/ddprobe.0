Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D89361677
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774039494; cv=none; b=MnbUciEyR6I3lqcuawHfPumosFLM/PU3xEw4H9yp0B5P5RQOqBozulHcxa1JuR8xKO11HI9J7L71ovZ/Up8Df4ykZ+HAR7R+gpH4D27NwJPc+PaTlTgHpoVGNhKTgTqr0dXw8BA4WPUBILV5c6JClcndQ0TDFkOJEKbqOHJaU/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774039494; c=relaxed/simple;
	bh=YdSMB0D1hsiS8MKntJQaL4lDpbsyIBmuCUaRGMFPQ0I=;
	h=To:Subject:From:Message-Id:Date; b=PvObm/got3cIP2STmfubhjcJ8DOQZhrylEe2EG8RMQXv+GMAh00/DcrJe78MHPsUm3Jer1OkGXHAuL3phT58JSOKfVke9bv3+dNSUeuOg6RVsEf+AgzWPtkE9VGftw60EC9nx3lpPRzoGQpJkPscC2lz9y/uJxc/LImdVrac3zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dj0gyLsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dj0gyLsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAA7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774039493;
	bh=YdSMB0D1hsiS8MKntJQaL4lDpbsyIBmuCUaRGMFPQ0I=;
	h=To:Subject:From:Date:From;
	b=Dj0gyLsEL99svq89KTxaw4Ia/t/BkfhP8C0ONc6YXYuR05GlSvOnAbtjlIoj0xaEu
	 rNNQge8e8hF4nTnTuvF4nSWnLcukb//tFrsb+VPsuk8D7GytOSMWXxmbJlMY9UUEB3
	 K7bgn08B7XeYtZPmNfE74COhmmsKwfChCdY/zBzGntemNk8rgA+tqx8JJjGwyia4mU
	 q3BXmLEbM7g0C4sN147tbKrW0hISfufk529MGQL2vQnj1i3cRfMp8V1BHaK2/v5ZU0
	 Cd8iwKuoUgblPO/8PgdEq58PVpB0Uc0fgJN0mCXqAC4dQJTzp9zR+faN13onHTdjUa
	 GjnCjTGHFPCrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3071099B37
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403949357.23105.3341712771540020957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f7d9a66ba5c40e93ab21b6c148f05d069d6d5a112dbfcc73ec47831fda09c9
Date: Fri, 20 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774039493
