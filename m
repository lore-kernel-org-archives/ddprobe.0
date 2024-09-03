Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47216405C9
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725379554; cv=none; b=SxqbD2+bUzjvW6ObyJ3HXFRU4KbIcO48//Lud9vYmVAxdTCniD+fPs/bdPkB5X8jXtwXPD6lQVvYGe+ZCWk2g00RjlP38yAu4w4AjS8ZTO6hB7fHwc7z0/GDINHhiAojEIGjfrMo7dGBUqRRo3oEPXJIZloPHQizjQChSrvWaU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725379554; c=relaxed/simple;
	bh=kR7GBtpUBjvQ0owxfh/000kwZEYuSLWrydFKq4W9pxw=;
	h=To:Subject:From:Message-Id:Date; b=KBD3ppuc4E71rar+CQf/OemUgPhe9XomuTNSyMtp8QvEP9jVMPv2kGofL4yZrBefxUTJ6U7mZP6YKfUTI8LP3bmbakprNR1vpE82jpsjjpMVneCD5QbfFpj6GYC/90xnQCAEnSIl78XT8He9SdvysZlRRpSqATcKNV3ByX2jjKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYoijQSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYoijQSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A3AC4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725379553;
	bh=kR7GBtpUBjvQ0owxfh/000kwZEYuSLWrydFKq4W9pxw=;
	h=To:Subject:From:Date:From;
	b=dYoijQSnK3TVhaX0AcnQjAuj/gUvPpbRFhDZp32rsVw5SpPYd2nt3kURjCD+SscLF
	 8M0FnVP3Z9uGKM8xQjHJqGOYG2mcsJfMspNTsGOz8oKr0gbFjcijsQ/+v5ltI/xPv2
	 WfhOFh/w23XgC9ZPGg2j7W8dq1lMeKuRrlgxMFwlnQReQtuXa8cLvLwMeeRcCLdeoG
	 WN8iH4XKL2MUUQGIWuBfi0i6QL+tyqBr3OjrasbEZQl4Sq2Z6XxtfY5ghPJQ1HeKn6
	 qeUx/oF9pbbImKk/rQ/1XXxy8hppernzvqDwoBCpqscts7D3EI9PR6kOoNznM3H2dn
	 VBX4Uj4xRJhPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A447FCD3446
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172537955366.23286.904464110735311962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfc85e99f597045cbab8e173858deaabf049afdb3db30d8e0900510affa4dfbb
Date: Tue, 03 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725379553
