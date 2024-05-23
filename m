Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3112323767
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716501203; cv=none; b=YYRdC9+7J3vCeHsm1E85v0X+065qGxOR4vOjT1Tax4bQcYmDTAxasYtB4Xam9RV8Gdoy4+UYIgJI8hW4vgJCXJbzbrzXj54iKXhIx6jTTwayeEBPggudoDijeRDae0rX0nSDrjtAxu9Gq9x0P6c0PWE7+xMdyivBzp61YOKQqBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716501203; c=relaxed/simple;
	bh=/Azj2+HULHkX+AvXjfwXRBu/b5xeJkpR3epr5zSo/V0=;
	h=To:Subject:From:Message-Id:Date; b=rj0AeyEKDKGfiYuVaTmai0+tdT7keDkeeDPC1iee2bOZZW9SN8me2YAiMlE5PTH/Weh2MCEm09A052X/+mho4pABnix9fg5hvBSEn8UslZgC4BOj1Vq0n494ha9Lnr6gwpZB3G8axW4TyfTqbag0ccYDI+iZCmVetwM/UvPlzHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3+v0R+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3+v0R+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BC0C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716501202;
	bh=/Azj2+HULHkX+AvXjfwXRBu/b5xeJkpR3epr5zSo/V0=;
	h=To:Subject:From:Date:From;
	b=S3+v0R+CQdS5aBoeVsp3ergDOpavyISy+LTD66pE7Tgcw9QgylP1I9faLzpsnoQXk
	 3mCO9vBRiD4X9qCwOvL79L/a9ENVNahlvnlo6p/Myq4inz3TGl+LWMx95xQ3R1xDu7
	 5TGkiCPfW5AzWUmOHMEoeAfjJ4w2mmO5kACwb6JyuYm4/YCyWm0iX8XKh4Oov4XMkY
	 hRAdTGY3f7aLMlG1E0mguxu7k8vqeXelmI0ClB7OaJcNnIHGh3KIgkw3OvGPOvEo03
	 KGaQ47qx6LmEVIr8t0wrtPD8sB3JHHAYDdlNHFcPnjIGHUZoe4R3IoFe65/A0U2XIh
	 irje9PRLx+uAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21FAC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 21:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171650120278.17630.12835435693025034797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb67be20611e0f89047f72f3c3f42579c03a982f6f6f37ebdd9ec2016d6a3de6
Date: Thu, 23 May 2024 21:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716501202
