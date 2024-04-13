Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3F545C1C
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 20:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713040763; cv=none; b=VdMpe3rSSZoTinuUcNvxl46cSdXYeMDlTpmbtP3+BpRJLyyOlDioWZTdpOHrSqmRNVIABaU0qb6iYRqp7zVRGLHAq6JYXjPHbUVd9tB8p+ans/+DepBVYCUQs24kUHBAJ0Y1BZKSinSCxqAyxFEynphW2iYMmZpdxFOeNWeiq+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713040763; c=relaxed/simple;
	bh=b5bR0Pd/hfvvR57p5lMz6rL+kjNNfBV34Mkta/VhH5g=;
	h=To:Subject:From:Message-Id:Date; b=Qu/ozV8/Yb8hARgrcy8WABHFEtyI2t91V/1vIAScw/Welwn2B3VxwOBz4Kz8LBkCeF5XFmLncKQpBLklM37ZPKX4PVl1e+xy8esms7e/XClf2MlkJFJLrr2cnjrxCpGqhgXr93dLUVW6qUrtYB3Mmy+UL8pUBn1NduG+RThEzbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNqRlgJ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNqRlgJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1287C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 20:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713040762;
	bh=b5bR0Pd/hfvvR57p5lMz6rL+kjNNfBV34Mkta/VhH5g=;
	h=To:Subject:From:Date:From;
	b=eNqRlgJ3H7xp5fzV0l0nltebXbami8s9+WdXuHVMiFUT8QYxS0viheBqkuVWDm0Xp
	 qVmytDTK2ldscH62KBjic/hv67/84PlADC3rQXpBsotCUekX8YQLpAi/QTnDTJ1pwV
	 6HSg/5ruUTOvH7nWazniYlV7M1s1T+ta2xmP2YQ+kkxzg176GFgSivY1z6+jhAwYKJ
	 sSPzVf9OPYhpU3p9TooSahpEyHWGMourvWonz/c7fXgMd9Yw0MeA8FG8E4yPrdt06e
	 kfn+Jywcg2MvZeBdF9Yjtdkd27D9fjAXu9gVIpZK3+fbW/R+wJ9tO6/9zwg3v71Jub
	 ZEWXFIe3jK11A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC661C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 20:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171304076279.12338.13524759933708873900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1a9f5630809e2635779bde1199feef6aedccc3ef2b61813c539b33d21d4d9f
Date: Sat, 13 Apr 2024 20:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713040762
