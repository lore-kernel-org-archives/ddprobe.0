Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481B7392814
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788337234; cv=none; b=XVBYQbLjzLDANig8X47R6qVwfBaSbUjXAycWDb85vuT9BnPH8tffevbdiNW6ysSrQGLovz9Y4pCEUE4F5ZYUHr4ofFd2hu9XhcvIBR+eJmZObqHtrKFJNcxTV5KHaMXQYnIw7326oI49vG1ExOpCi2jhHlotO9znRF8tsEMQxmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788337234; c=relaxed/simple;
	bh=J1IWeMi7tdzgU5JUhSMOK3bEF6D7I304VnlN8q5RBog=;
	h=To:Subject:From:Message-Id:Date; b=DjjbqivOEBOkWza3DMs3OLtd+rNLMMIJP6o+xiRA68XK6Oup6WKhcWtomR4sTupR/eVhbNzU9Ig26d/VPxx1+at7kl2zgfBSs9TpLakx/y+Sy/8jmfuyv/ctfx8omQj6OF2+aPcEY74Evl+H/K1FIuY5HH7PlLJO9A2u5AbfgT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLljlBUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLljlBUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9F1C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788337233;
	bh=J1IWeMi7tdzgU5JUhSMOK3bEF6D7I304VnlN8q5RBog=;
	h=To:Subject:From:Date:From;
	b=BLljlBUylGj1I/Yk9ZgHT09kkU3UfgC2WUq7Tckn4ioWKHR4dDJSNZW4D4kbWkXdT
	 oVfE1dSKF1RjInQAkn9/DCm2kDvZjb015x/c+RrHB18s3wynbsdmb0WqvMDqQtS1DA
	 j3A6aqLPKoVhFyOovnhwnm2OmspxtWqm7eILcmDG+jSA2lSpN1t9jEWNePLICpcE0k
	 xolNzij+MOO8FA4ELQ+Ir4zozMpzOqyN1X/c2cExB/2EcCfnkqavW6OUDqsdEfdLvG
	 lS86xCCKNXanyhbhrJDD6D6mzA9hn+//fyo0dzDhQAs9fChVNGUSgcf0OhFynh7Gb2
	 WqT7FlnQsMoaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA891C61DFD
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178833723368.6664.7825326499057945245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857c24f42a83d8ea37a97204d36c78359a090551b2b7fd281cb6648b80103cc7
Date: Wed, 02 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788337233
