Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD7A3890E4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792313434; cv=none; b=TOeytPa3YGsWlPMKtoYca2LqkAqI473T9AAlAOSuH2TDYLgFHDca98fAsmnzzjNGt6Fw64ZLnqG0vn1UbNnZkoHMwgqkesGUflseMMtOYPPwfZLH9PaLWlqcFCS6j631pdzwXoApfIoauaOyUsZvgvoSMTEx5d6bNVkP0HH/tw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792313434; c=relaxed/simple;
	bh=cbvTcvWbfX5Z0wt5RdVZjhX7LTLlxkg8Q0yAlZxJolY=;
	h=To:Subject:From:Message-Id:Date; b=SQpP6oO8AF8uZS0wJoKSnhN9SqhBeuGbobqGboc8CtXcf23yYxQzYTKFgaB1HJldC/+mDKR3MqkoyJYtc+20rlrbomIE2c8BHX8KagckpEmmdQh3Tu4pc20jZHagZXez7dgnsncnghXDxYWLgRMXmzyJ6AFKrlPnfEgjtW3e9+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k1s9EP3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k1s9EP3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19EFC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792313433;
	bh=cbvTcvWbfX5Z0wt5RdVZjhX7LTLlxkg8Q0yAlZxJolY=;
	h=To:Subject:From:Date:From;
	b=k1s9EP3VpfaKJQdnWFbdg9QNeO1HtyuVTI/jEl5YmbxtU6Zi0eudlE4UIC7kQE+aR
	 q0VMmk1TDj+5cU5BnEtV70BIp0ib59iNXpeElZ41oRFzVmY48pXFK2ukUpTQ9e5ETc
	 oRZR8YLKzHvDAr6+RZAKmO93V8FOZTHJkPsd56QVX9HLOYOcTgYzuIFNu6eXe3vpHr
	 grV/sEExSlRM91iLbQPoCYbsQtEgySo+hr0wHsCGJ2uQj26JtADPBqXJcL89pl6utj
	 +EItzhbTg9BNBJ040WOJLMJGatq0+zIr+zqKqsjPk+fxCwkht0Y1QRSdJBcX83zlZQ
	 MOGu+CdH33bZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3A8CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179231343368.18803.10580525058045714486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df712cbdb0342dd75232ce837b07d6c5b2107c8aec0f6a48bd841c6cdd709ab4
Date: Sun, 18 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792313433
