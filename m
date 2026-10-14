Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B65B3B8405
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791959434; cv=none; b=Py94wVADAgBBEydPmSBAIWfah8R3WqYDXb5OwO6aW3SITFuVeWE7iADWm/CNyCitfJ+mJa/fal0mp96DGbFGy0g+uynIkGGBKVftEXFEHFOF3vs84192fcHk0AF765OFVB+5s/hd+aO3DcPa360OX1+MXLgZ9AWgGBiqU7wAkqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791959434; c=relaxed/simple;
	bh=poVWT2jTxusW6Vp8eXu4nBwJiGXvdGXpTviiDN4KClk=;
	h=To:Subject:From:Message-Id:Date; b=rqSxDEFF88aJrG/emLtAiOEzwh0rNoLXcI0HHVEwy6gqerpMG9tbZ4a/DU6zSokL2VJBOlfmwrjjhrpON1diu96l7+9GQ93q6DvXZYoh4bGB6qrebWCUvQxOPsE5cTn+3KsfLyQtYhG8C7kC26exNWZQbM9N7XDKVg4zQ315a4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHcD5Qsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHcD5Qsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7A1C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791959433;
	bh=poVWT2jTxusW6Vp8eXu4nBwJiGXvdGXpTviiDN4KClk=;
	h=To:Subject:From:Date:From;
	b=vHcD5QsuNPxZanvzDfzxdquxzms14csHkgf75wjqwM4Vxnz6VZVErCv5s2kLoSAOU
	 tQTAG8cNP05OrVjHBnqwbKncSLZXe00hMMyPTond4V8mwm1W+kjsz490uQ28k7g6Uj
	 DcPmRgYY6MxVcDMtobyZXbSeM7MytglaylvJRc95BN6azqynIrrhaBjhXczMWWiOxO
	 flBYjLONiQpwHBLvgIszvng1BuFwvQcCBp6JFT1bkJZKsuSaJJteKV/XPHY4LRmIp5
	 rQKQYoElTAHgfOuye2bnRGJXQlSM96IUdj2xppaIozCzUNgD1VcHihZKJvc46Lq3vh
	 2T31eRkZeTrZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D38CC6B19
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195943373.32531.14765325232312670932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4331ab165ebbbfeef40c06078b8dfaa2fcd882ce7ccc860da108e4f61433e0c
Date: Wed, 14 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791959433
