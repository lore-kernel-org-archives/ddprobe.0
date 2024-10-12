Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4005B171CD
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728714954; cv=none; b=rZV33lQtjJkEA8q0dP+XpoWk+BME8w/rmyGTaSzXq/4Tkx+ssE4mI0giXpKSjc9XvuIwf9bdl+Sl61w3CLMHG7vLKVLtHhVHcOQwDCaeZunMX6RD70LrrjG4jYpGv3QYIhDC+sjQFnDMfIY9asFcLYiy/p4l+duSXm4UYQZXNlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728714954; c=relaxed/simple;
	bh=KEk3cmwCMygOAcDQZZJMIcUney5FA3IpKV42CzpD88E=;
	h=To:Subject:From:Message-Id:Date; b=rNwpSQljwnC0k/GFYBth2nuIeOChd5jWiTd1C6AKq/PW7kO2E4AW+isH4spZNQyhPzLrjvjP6ugE05PQIcKa3gyNOL0eTTk/QQPwMwxOMRKeYTbutFyxnzDg0gOOecC8/Sm39O6eUGXllmle6j0NLHuup+/ECZlqiWwPr22sRII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCn6EIiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCn6EIiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88B2C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728714953;
	bh=KEk3cmwCMygOAcDQZZJMIcUney5FA3IpKV42CzpD88E=;
	h=To:Subject:From:Date:From;
	b=VCn6EIiRk0coFJ4MYZpi6P9VTlhAQKWKfLG9Ee3RiOaffSms9v6yzij0/0shEldSz
	 W/W6+r3+VHqLdY0RVAYmSY4zOCLypDU7yJAG2PLVhFqs9oOpdszpPljHHL/gGm17og
	 Xi4C0xup/sbcbWyGDbL/kE4bU2WK/B5KLKtKAP1E+1EXEaWM44iCGC4AIzHNydd0+X
	 WiLCgg2gpJVW7zCkDiHSdZSzPI9U7vRV5eVhmoiuMLgV4o4pruVgh/Pb+yoS9PKLMn
	 YkyqjktgSA0vqA5u07v91m5k/JkK/wOnNfldyS3QgNNM0S+C1PtHq3gs9D3LqbZvzo
	 TMM99wiwd86vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2B8D1A431
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172871495362.16413.8358722428899382238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0069a6745e5708f54572ea6d7e4c503f84e25fc8629c5893069be1461dd2c323
Date: Sat, 12 Oct 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728714953
