Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECFD2777F9
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770920094; cv=none; b=rWWYL8c4yh9A+/Sv8hguMR/F4lq06Wszr90CajFj4xiUTRInHe0+WdkZL3l+3WwmZyH4mXSK/lkyegPUCMjkz7e2/epBznf6osw015NQYoV+BlMK9mlwI9aFB1TrokAvErXgWtEGTdwUrQzu54CpQwIlsYR8QY7b8H5oJ9FLxmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770920094; c=relaxed/simple;
	bh=+nRsuqbG+pEu4uggox3PaweeWGjGOae2LqP66lN5DVg=;
	h=To:Subject:From:Message-Id:Date; b=pxtpOz/vqGi4UFSDQ0BRe+ali7dl+mQurxAIeJsjCSVo08MZbZrHzVbpe8ZGtvRsAq9VMtWPnX/7JzSYiEZWcnN5lAEzuH+FmG1hc0m8riAExkKNiCV9CLOQ8TC+fHAIh3HImRWvfrwSAWsfAm1VUkAcDD7oyETtTmLAZf3AEA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOzIr1rN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOzIr1rN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2512C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770920093;
	bh=+nRsuqbG+pEu4uggox3PaweeWGjGOae2LqP66lN5DVg=;
	h=To:Subject:From:Date:From;
	b=DOzIr1rN5ldRzB8ZqulG9/Mpqru6/5zVnBPPIwg9SlDlSrvsWzgobofYrW930S6aM
	 uKuYVEASmL85rqwFSWwhT0yKAGUdmfa7lGIw9Kn1F/QBXoGbzZgCE4iTqqbDiFdV4g
	 CGLyXGSgCb1DO18uzHohJHipWYTWbQMcnTjaDtndc0X1aMBwagVY/WN2JmC7jfv4N7
	 7ZFgy5lvfS8/ClBfns/VpIQISzjoSqnyGdw7sCOa/cz5Xa11nNJL6Ya9pS4+loSySP
	 O2S7Gx+338GfdN2vDObJ29aQTcvtBXEfHuBHyFELDTz+QyPXnTCihAG+D5JAmwk0Q9
	 GpIzpAQUVDfzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D13EEA846
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177092009361.30529.8105128781748620010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14be3cb86095246ea4ac913330505e0637c2a97592feb98d078e2b55f66df89f
Date: Thu, 12 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770920093
