Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699C02BDC0E
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789086634; cv=none; b=oJqvHzADB8xthVteNK7+P38GepvEEpu3VYl6JHZyfSz1N9E2qEGXN6zdW3Frv5O/yFXNXf8lFAY3/TIf8RerRJ9pk32QCbgdUxu5/mqwEZXXzFTu4GMKphvTJfEbKB5wd8BYLBMDVNXDYfk1+N3YP2VKCwZ0S30KL2sLqUW5fNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789086634; c=relaxed/simple;
	bh=P/mE26mODW+WLNrQFbybd5rAt+H7GZ5AVnhYrgqjIZw=;
	h=To:Subject:From:Message-Id:Date; b=D46wSjefcpOV9iJcdqwemrL7ebc0QQFujtDsBQfyiyntTRxl+uvxz+ULcTsW8gaGWWyL/MnypN3dqTqcJEh8eI8h2OFphPJuBoTtb/LZMdbQMj+pCBxxW4w/vu4tRucscpD5/TdD4w5uOEWSaMiwaP9MVLet5OozXr8xPB4ri5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7mqkcvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7mqkcvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44EDC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789086633;
	bh=P/mE26mODW+WLNrQFbybd5rAt+H7GZ5AVnhYrgqjIZw=;
	h=To:Subject:From:Date:From;
	b=U7mqkcvWE4yPdEOwlrvUrLgLsfsSECWwClIO+2T2WIRi/Flv1X7ShFploFN9n2IEx
	 2sGyRWokUB/pJBtSQT4shiUSit8xECUcehGUfAdIhYMWpiLWDqw5fFZj/EO1R7bUFT
	 GJuqUYbtcIi/kQl6X7VHkd+EkAf4kaEqwPM0IMEnED2qGRngZyPydBXSiHvEEAjCxH
	 9Ed+ug5VMI4JoeLA/HnvrLIyxF9V1fbHQBOWaYkqYQZHwDui51meTqQ+HLkfRTULOM
	 MjXLMi9JmPgauf/N0+332HG1UpXbpXjx+Sp7Y7aZ+GWD9WRG7M93obR/gSMTWarYDt
	 CtjojimC384iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1EBC88E41
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908663369.12355.17254733524740314284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dc3e4d599246716d9bcbd5bcf544aa322a450b4788d694c6302cec4c0986c79
Date: Fri, 11 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789086633
