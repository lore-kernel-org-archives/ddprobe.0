Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3320A332906
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776278254; cv=none; b=A71UpoowZmmvWiAR3xIwaDg8aSRVVS9mKeo+CbXdbBJyBt2+aIc/07aXUQJn5VJWX3YNjJwPFgwfgU/1r/r1xYuauwW5CN/oCNAL0m9fqvaOKahM/gY4pCNj0sI9ErMVRAfMhF4k4ImZA/vsxu9N6xGF6Zz5kYLKTgODFWnjh68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776278254; c=relaxed/simple;
	bh=2s2TOjOpwYZalDGjNiJqeCODv91r+bmGIavNMgkiwaU=;
	h=To:Subject:From:Message-Id:Date; b=b8a0aVQ18vZTWOaVfW/yB8Y4N/0lSLevecNtuxKvf3cgqoZGwAHPh/5OO4pgjAF5F4rOyyxYfa7feQ8TmlXo6QbRQYOqUYG2xTN/Vm5O+KJOrJ5+9XteND2lENeISVKCcxchcBSdkP6oH4NXerylCftkKU/r5b6Eryoeba7DYxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrmxSldv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrmxSldv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9DFC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776278253;
	bh=2s2TOjOpwYZalDGjNiJqeCODv91r+bmGIavNMgkiwaU=;
	h=To:Subject:From:Date:From;
	b=FrmxSldvJH8C1LmuCMqoZ49adjar8J/8Q9P8X/Oa3Lai/3/VSpp62Ogp4KqSqFIW2
	 hDofpVU4+Xa14ykTI1Jtb+kND1yqcCXdgFAPnhpWsfp9CprYN4pAO7zQyNh3WqtIOf
	 SXzdSimUnWBx/emhVQKEC9Zt5RslzwQKvei6jeARTetbTxovClTjFBKc9bP83lnVGC
	 +3h1ozfj/m0XQW5DqbdC0DVLpVkiiKuvJpRe6hlm8vWMsO9xMtpZ0lJ/HdUq5Q2Ngb
	 t2MC8copp6mazPJd9LjoRb+GK+Mbamevbd3NveWqA8H8eggvtFpTDsNkKof03OQrFz
	 /rPyTcB2SkEtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC519F428C0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627825369.27818.3652589340563166395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07197accb0c03b010534dd61a80e5301bc53110bb567cc8ba4f77e4c2864adce
Date: Wed, 15 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776278253
