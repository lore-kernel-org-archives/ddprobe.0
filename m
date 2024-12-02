Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D76A61FD7
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733183154; cv=none; b=uoQcNm00Oc7/vXk/RpnXiyfzdsW+nocr634bnOR3awuCdFmabDE7g9APqoRiFygsRhnN3wNfjEAW0iZJ9ew6DKQyv7xTEv8F21LolYwRURVC0xTwgvD+6k4LTIYUsLdZnh40Rh+KSmAtcncbB+rCS2hpTbUi6Lm6/hyVoHfuRvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733183154; c=relaxed/simple;
	bh=k4ByYsIETMEm7HJ3jBqtDrH6mPay3ljZi4Nvtyyt98I=;
	h=To:Subject:From:Message-Id:Date; b=ccaA/ohRz/RG2B8IRP11IXhlTMlGkWGhYRI50KqRxlNE5/WWiqZvAfFjL1GJg1BOPFVHqbPRTDO/eROlYcfUJg5SGvSMQ9yKiyUhuxlvpTM2o346RmzS2eb2V6HhOzm8ljQbJuN44RvWhIbUxsA8JNfJ7e/n112NFdIaBRepPAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2DnsPpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2DnsPpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C9BC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733183153;
	bh=k4ByYsIETMEm7HJ3jBqtDrH6mPay3ljZi4Nvtyyt98I=;
	h=To:Subject:From:Date:From;
	b=s2DnsPpyPZnwv2SJC3F5Im6N189Os9HYm1nTMLFPzUNj9ExL/kt0TCBJS7jKnwbwo
	 TmW73vtdhe75Qg7gHY/VjdNwYRCwMH/ZCFYq/XKz7ER8Yd7+/gOOXRWh53UKvI5Mfp
	 g+URqMQa4NFwQQ4cCWj8wVmf3K/IOq716TE501sgyCRBFQZjlw+a2c5kJg6xUGg6JL
	 CrRRGv5ds1HjZpWsCSi9aDpJgg1y77PxE3AsaN1CLjvo/01/vLgdUy3wsmU2ahaXdm
	 HTzjxKhwRTzx30wxEgg7Y2S4SM5ur4K07oDcRoltVWTtuqkkQ2b3mQ/orE2qZ2b5k5
	 mustzcB0V/rFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47BE69EA0
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318315366.10809.14082316955230632389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b95e1bdfcde153d3da8e4df78eeeab2029221e78bd963421acfc73fdc68581
Date: Mon, 02 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733183153
