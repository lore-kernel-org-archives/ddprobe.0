Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1488919AD5C
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777780054; cv=none; b=EnGZA/yyuAjcNiVrFQiyjwREULZ8bOWEP7B8z3tkJcSmh0xpkcWNZaaxvnjqSvNwi9DfsVKSQ7XXUnlDcE9R0m0MJQndgo9qi+1u8Guq79Zqb65kjvpnzuG+HwrU8q/RJ5zvtnU903UAedE+WlQD2SRscur6PR5buIH4Tib6dFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777780054; c=relaxed/simple;
	bh=X8+9MH15E5K2VpBIsxUBWUsK9dR9QHWXYly2MoCOBgQ=;
	h=To:Subject:From:Message-Id:Date; b=VZocpTDMXqlT8WYlXdwd/h9bpnRk0sUfNrUkQUikfLJPdlzoxgabSY4W9h5ddjQLoeUY1CmcN1RnZcueL4NYFJoTsEYUl26Z/GLJQU2uyxnuKDm/00tsL8+qEaIH1Jbjhs83oygfQcOZWf8F4Ey3PqmiZ64gKwk6q0iO3HodaVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUTi++yN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUTi++yN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C216BC2BCB7
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777780053;
	bh=X8+9MH15E5K2VpBIsxUBWUsK9dR9QHWXYly2MoCOBgQ=;
	h=To:Subject:From:Date:From;
	b=MUTi++yNH7tGs4S7mQGHRCgkR+A2IMaHmdZKHDc5euhJviHeTzqV9eUPCqa0KnDad
	 +NOZzUZDaTxWhiFZ0GYudvIaqkuoRllPpckGLow3nIpAnCMHcXw7sDde8m6/2jWwj+
	 2mlL7lvJZgkMe75tl6564Z/7YY6diRXVZluNsuDvx7nSoLOOM1wyUKDVIz7g+uUaGl
	 MGtI0JBO3tSExuEchI8+htjrJ5ThOIWCGfRTVLlZuG+RfbvQYOq7/zCy0iqidKxNI0
	 OXpfDpLz/eouWOJCBRcuPkT5og1Ot3W5olcT8pZ8CMQfMPeLGw0LwUzpwi8La2Yxnz
	 sb/d5ev9VLaZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B023BFF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778005368.6588.9946275407943241190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d918c15cdc44d8ccded09379c3d9a5bf8dbb05e99f5699deb6133e1bff6e41ae
Date: Sun, 03 May 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777780053
