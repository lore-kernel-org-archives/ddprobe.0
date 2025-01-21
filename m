Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5339CDDBE
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737428154; cv=none; b=rbct/xilSGgxoKvqHPPIEDd31qm/Xwp3+Mfqp9tHY9jGplr006Hz91WfAVROdHfnOIHysBl7HgHNyg9vHkNIEq6hncGuSA+LGykE1wvTZEMsw2Up+6owjbqPknTwu2z1cT1mKV/WZ9D//KW2tRG/NoTvSlZVOL5OCK5tToU83EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737428154; c=relaxed/simple;
	bh=6twhzYOM7N0soRJMZgo88sV4Kh+shHip/4xGzeUpYJk=;
	h=To:Subject:From:Message-Id:Date; b=MR62SfqqoVE/qhnGnyyqIUWHF+LwJ//l1ncA/wU0jVhw0cf+d/sFRolHOR/lfB455UX8vCeiUKNt88zD6XhDQ4WOh0fqtna3hGjRYfFhAlpaZT3kJ9NXkl0VJvhf11Y/S5tYMWTFtsuXuFb61z2VGSX74ML+ghaMBDpjPEaTlx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYiAZp2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYiAZp2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06FBC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737428153;
	bh=6twhzYOM7N0soRJMZgo88sV4Kh+shHip/4xGzeUpYJk=;
	h=To:Subject:From:Date:From;
	b=EYiAZp2ttwyIj/Jh9kIa9yTcqXHhaosiN+a3csHFoh67Gzmn7aoVrUT4GucyKUdK0
	 qm/hKZ6NUGs8/ecNEDmNWY3yLgasVNDx9pf//zZeyuhv5jnOOtGi58V9LV1TXUV8QP
	 6ORoc8fHQalhRR1TVOT0mGh821H5tVD8KJE32duMY5nkFtMdKKkYLsFgTjh7cxpuIp
	 SU9swz8D8c1/IjHFcIqwMmFhguPf+F5ra2ezGO3WQL+Mwy57Z+AHa0Fr0eKvWStV4y
	 ngEPR+/DF6Eoou0cl5Wr8AY9bMG8jkZzbEli1+Rz0gNEXNyr7ad9shxNSz8rvIGO0Q
	 V837Qwvoz9ynQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEC5C02181
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173742815361.13355.13497835713190262836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2218168b1e4ea91ebdc46f51bda2ff560a5c1e48dc876b4a56aaa14ccfc450f1
Date: Tue, 21 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737428153
