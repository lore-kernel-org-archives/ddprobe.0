Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2863F335BA0
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765818774; cv=none; b=hFIZiPkKVNnBmCchnxzZVZRnMfs748W/V95yOUAjizPvFZP9QokkKBc0RfXD/cs15feJy7kQrXXLNjDgBOOy47WLaCxFt5poSZkSF16bSTC4EhyICB6eFRisAx1RBw5b0LN2PGD0NQ6i5lMUHu+syvajHql7dJ619jqjdlfqVDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765818774; c=relaxed/simple;
	bh=KioH/Vjvuls6adBu420cCMFA9kj4Qew6SbcBlIJdiiI=;
	h=To:Subject:From:Message-Id:Date; b=fp2AWW7HMWW44gh3vJv16ytSBuUY2zA3idpUUQebda63+w34uuAHONmTxctfvyc03Cahpm4I9LVul+Bc4Ovea3u6Ez4HDd7EHaU1LvG0+2ktJljP1bvWNTpjtT0O1/F8ZyjgUi/OD4WvfYDktnPoNAdYwdDbl8d/YjXMZ4GJNRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XY/SJ54l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XY/SJ54l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6EFC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765818773;
	bh=KioH/Vjvuls6adBu420cCMFA9kj4Qew6SbcBlIJdiiI=;
	h=To:Subject:From:Date:From;
	b=XY/SJ54lxJYORPLHwfKL4lbF8Haeb4Wq8T/ZlvVSfMeBcShjsJWEX/esIuvxbeccH
	 9uHzuyazpaV3k+A/efg5X3L0tZFi+N6UELHrJNX0UnuCQMARCXbo+B+8d05FMnGMQg
	 AUEx4HJ8EhYX5j0YFB/O0vu1ck+uyqBL3wcsiPvWfI9URiL6c+U7vMyykTBWTWyMjW
	 2G2C8F96fN01V6Jg20+i7xfpf0qiP1fCZXSnWFA5YfmGM/zcQeBzIzAUJ2MF2bZpdg
	 Ha+PZnWsUWZJggLcgHLnHLXEchKtNckMesN6MKmajpwdNrG21uqR7ML6cIWeRXyVTz
	 9btZSyLBwerSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E9AD5B857
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581877359.30563.17043551044851794524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b862c28ef72c8ad0475d65d51a440832adc364065c3bab51fe5a347b156ffb
Date: Mon, 15 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765818773
