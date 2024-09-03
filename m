Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276882AEFD
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725357954; cv=none; b=fkMxT1kdhjKslE9ttIq/QapjSBukDIQfSoD2uYH6DKq8nEdiUT/QJOsLdyY3LobIyEOlFU058vySmsON/C3rAMu+eWumG743uJa9sYBbVoCmVHB4x46HqOgb7/pyLgaPInh4gYLxmLlya/26U70cLir/372Al5S2c8//UG4zW4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725357954; c=relaxed/simple;
	bh=XEXQzzyqgocOjQyfr/Z4xUQM/ao8zwKd1YdICANbM8o=;
	h=To:Subject:From:Message-Id:Date; b=P3/HAyc4u9FyjM8oRlsrAHaCqMMLSml+E29OxET51KC2ydBcB1PhHz6g/+BwiKLP6LWiBjIp95B+3J2A6xjhuva9NjTPnYwlT0ivc6R35K6zCKDteswHXS+7yMeUgqcigIank1uVucBNaRTwaqaX4PX4t7LvmBH46JAOtaEyapQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IA+0eJEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IA+0eJEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB03FC4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725357953;
	bh=XEXQzzyqgocOjQyfr/Z4xUQM/ao8zwKd1YdICANbM8o=;
	h=To:Subject:From:Date:From;
	b=IA+0eJEkROy3f79r9bqo8ZtYE9lwiTEXW7FWAt6ZGznIjr2ZKDymdL25JMrOo05vx
	 HQ3WVV5v4/fmX0b3K3srlYL7b5YlNj5GuIpldq66E3oqNeUBzhnayhZrHRjWjkru6j
	 3D3S3Z4LZCqoN44GdJE6LuPEeilJSfyY7YYnVmjVR6O1XthL4TrhWxokYn9kca7y9H
	 /gdSQE/KuDdkd2nPBpqCkCcOIiEvLBuOY0Mgolzhq60p3CCEoI2D4qKUzzGINZ/iVD
	 +I4+4k29qUNkj/2jjS74Gh+aF4gggHjhGof8gfbeRWoLo7fcDb1mnKVoHW10nY4QVp
	 Nz29bF1aTMzKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7D8CD3420
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172535795362.11329.5613964621374763784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a567b1707229d585d6719a5c6f82affbf62ca24d881265b420031e53fff510df
Date: Tue, 03 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725357953
