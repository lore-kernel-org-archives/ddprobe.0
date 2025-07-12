Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98B37080C
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752350994; cv=none; b=q3SAdQesxJDWBWYGnN+Qlofx+mD60ySzoHAZZvokUxD2i0P1Y97/sSxUOvyvNX5Mvd/KGcdmG2Ta4BMQQ4O+HY96dsHMmg7iEdVwj80txDAhuggq4wKRamn1HF7Xsfymg4GA/E2+7TVZiKBsiUGuVxikXS6iM9FVqLnBW0/PWxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752350994; c=relaxed/simple;
	bh=BiL0T5j7ehUPOWyaFIn55vw1vg1E4MMrw/xps1m1I14=;
	h=To:Subject:From:Message-Id:Date; b=b6ahejG9gh5OzIE2lQgR4pX7lpArrv7SaCZK23BBKKfqATdLHvZ5hsz8iwLPl+1NkSpv3WdtPIaL14UeXQMPciUDoXAdd51mKMVzc9DyIvIy5Usaogrh2HB0iDhzc1BVb/5n6JaVMuSp8eEE35h3Dzs59C/x/y2ybo5kSEPNGpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhYTJjmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhYTJjmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B82C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752350993;
	bh=BiL0T5j7ehUPOWyaFIn55vw1vg1E4MMrw/xps1m1I14=;
	h=To:Subject:From:Date:From;
	b=EhYTJjmRE571M5DzGaq7VNwm4tQA6BJvQjBNDv+Fkt9mpkRmwX9gNn1aWZlTceyHO
	 2iZx5XaoKNwdJNwUS8p86JfqG02KS7D+ukr3WIMmQkLqeNvf8rSKtZZXGIJYwQOQX+
	 NYk2OnXIh1EctJ8oa42FrGd7tbgVRPeNUzxTBL+CFbvi0bS12hdaCQhN5nJhAcQD9w
	 O5lvyj089cJ2DAiic6yzoSTGnESECWO//SH6ijUTfo0CQeOLLKUHtZdsJlbllwpFXx
	 rcSGCpkzGyjAAlTYhTaN1AI/QaaT9E9rUo9UVVGiVbtXMX3h5TbToxUtOozfUlhbqt
	 xfupY1yqgML1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AE4C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235099357.7501.1528711241323182178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6843c74c01aea76edf3651ff8ecfd6354efbf480e017c7838daa395d096c40b
Date: Sat, 12 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752350993
