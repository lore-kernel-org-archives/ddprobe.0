Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46629167DB7
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743804594; cv=none; b=bFo4a+O7/YfZrWK0D/fYlVAoPhhLqRyNSCxqo0Z9yazJpkJa0hFKhX0gAEDarzzjsdnQgppTzxfeZw/bEL2166f1+hokyKZ4rgZ8a/wZCLYNPwsmoeZXD4mzRWCO/ZXxZnt/iALBnu6MFq63e1EGgXXH8idbBFqgzOMW5OPHUGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743804594; c=relaxed/simple;
	bh=kZQhoyjxJBrxVXqupNRNbmG6FJZp4y3D+p6C40yTpIo=;
	h=To:Subject:From:Message-Id:Date; b=HKm1Cx2ReZvsbZjDokl6RUl4IDAd8omPgbRdwmZ8sypYGB0xSEzkuNu359VF3Qo4iVcXVVTRi/nexJILvAVCc5FAmavr5ZhvYvBZboW4UVMUQMQryW9AHt5aqyVPKo0nPVZzHBXIt8rtcbPvvo5sa/3qJgKQJYscsgUFhe/s5jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dK0lTkaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dK0lTkaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA81C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743804593;
	bh=kZQhoyjxJBrxVXqupNRNbmG6FJZp4y3D+p6C40yTpIo=;
	h=To:Subject:From:Date:From;
	b=dK0lTkaKTX3g61ESUOk+9I4bo8w3RGVOsgXTAx081EuaOctEi1orSHyXhhD/Gg2rM
	 xT7ccEpVub0wd/usltXRQAhiSe9r8FlDitcSjQCcgcUcyjPmA6VhhrP0zEU2fiSYDX
	 dgp9GtIh3l2o41wleoTKWXWuHmjNu/w+7kTStxZ2vOoXqs5Ir4IkTjGWsCW0smgaF4
	 4sd62MD5cXon19e0NpvNPLz0YtFpcx7QP4csnCBf1T/INlyy4/HcPjfMmhjX33j+Qb
	 k2bopDt9l5pGULT3W6HYa/1h6Lg3CvUPL7p+vsLRelWZeY+2PaL70vtYQWQZMnVouF
	 Zo6sc0ZyAHX1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9971CC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174380459361.6331.16415715115352121321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03861ee41158ca4c4f418e7706e83bc79c6a88880d8a4d6e1f57f360753554a
Date: Fri, 04 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743804593
