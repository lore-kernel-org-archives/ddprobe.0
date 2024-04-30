Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D27132808
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714477343; cv=none; b=OFU5sEKrzQgMCILKrh5THgsS+hndCXabXYG962rWMkHHwYu3yCMrZhpzn0OUdLgsj73XA3SeWZPORey4NSNBM4BmNIiC8cPput4/SuYsUhvTbEyBwk+f7Uto5Vyu0JnPmxdTzhPhpOx9cR1zkjqEQhxDAZZJtqqxDtK0IlTnl38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714477343; c=relaxed/simple;
	bh=UwWHEL67JKz4fq0RtYM1J59m2utAG7B6dikgg5TtLZw=;
	h=To:Subject:From:Message-Id:Date; b=qhEBjLEe0Zh+mzPonEW0BT9Q9l+0jNLDeqZEGBpczEgay9IUkjWBqUDxjwqoAxeXBLnCybMzmzuNKB4u0L4hEz24xCtblGj0ilVKp1jlKMOytv/RRpgY2S94tFSeMHfv45tF17DUEiHfbGEMhUu+d4xBkVEWpTwktXSDwBxqay4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gp2lkbuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gp2lkbuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA9BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714477342;
	bh=UwWHEL67JKz4fq0RtYM1J59m2utAG7B6dikgg5TtLZw=;
	h=To:Subject:From:Date:From;
	b=Gp2lkbuGQWY0rJFnb9GNDsih/FSxx5H0gyi2UEwCskYIFsDot2Zr9wxObdhtF7Bfc
	 +/ylWQO0k4VL6Aw5Ku7XaRWGJfkykSOv66564DgEXao58FcXelBOQTPwpmd9U1yPR7
	 RYKnBOp/hXfSBMB6I52zztue5xC6a+hs6nmSOiFbPGFcIIPE+2BAXFHASawPNSEwwk
	 cUlTRFz2JvDuK3fb51XGHIwkX7pASzmgzfO7qXHYSDZeWRzt6xZ+sDw4LrzxFNEnG4
	 ZiSQLM7r/wzFpto8WNmbC5mm2fKTHS8LwMn4ZZhZpW87ARezPTCjvgmrt/4SjKYLEh
	 G/vEoj9STONag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCA5C10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171447734276.15925.11600372497308088261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1090bcece809051bcadd499a8de789ef8cc79e593477fd2ba45817e18476ff
Date: Tue, 30 Apr 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714477342
