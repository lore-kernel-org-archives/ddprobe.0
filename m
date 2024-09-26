Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367291798F
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727351754; cv=none; b=d+/yKpvqG5k2oNw3Qm7UJfoaqUa1t2dUdYswOwymtLW2sj8Pg3bXo36RLjHqpjNpS8KNOSozk+qakyN+4qAWsxXOr5mrkIO4Ooy2qeUQU0pnA7ppJ67j0x1IkF6jCp3LyLbQ7tiPUWbDTDjmYuqH95rfUOhEXGW95ce+HrBW4Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727351754; c=relaxed/simple;
	bh=jiFiTCieXFuQPYeE3M129uqhYtIQq+XH+7qwk5D+AnA=;
	h=To:Subject:From:Message-Id:Date; b=oM/kC5O7Tjm2PsnznD16SQsENu2yQoqJDWDzVLyxs05PTPP6R6+AS0w0hgFVo+7IjcI47U2mBRZf8iYqchgADJKH1yczToD/AvnUKjC5EyMhBx5qtAfUwIBnXE6GC6wvWiZmyKKW7hsNvjqiKd1dZd186n5YyCX1X028Tkl2j/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRlfmvtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRlfmvtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B016CC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727351753;
	bh=jiFiTCieXFuQPYeE3M129uqhYtIQq+XH+7qwk5D+AnA=;
	h=To:Subject:From:Date:From;
	b=KRlfmvtAe6dVih4ShU+ZivUME6ZepJBrWlsHepojxTxC9DakSs4w0TIS5CxCfnArL
	 /wnM1tKGIroQ446tvXVykcsxz+MqxDrf8G+hGnYeHEhSWlstpmX4yp0Qo2DbNPTITt
	 FQH2p1FscwtIzqYDCHkN/jtTdAXwexrYNM1wzFG9eKuyoENWpt72K7EvSZ/b4/jGKm
	 XA5BxvzND7Z2DEnxu+IPNTQmurlVIjQVd98M90A74f3pWwEh/NGOFkM1NMqzTtn/mx
	 d8yQ7yXMQn2whpEVFHc3PY/2kSrYyiIQ+7aSWCsZQwhIeyny27uZvSPhZelDno2phL
	 s27uj+2bpndeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00A0CCFA06
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172735175362.9541.3552809511647644597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9019334bb62935eec0650f063a3b9150a14699b9177c8fc12088f82339a854c
Date: Thu, 26 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727351753
