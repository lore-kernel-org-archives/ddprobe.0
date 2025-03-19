Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF21199235
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742354994; cv=none; b=Kkp7tXt3DPegLdDctme5DNBNxRH63QQS7SU8bMP6Efj7hQ67pJ9FKX+JUQ3IQr7x69HbPIDJ2nUhwGZ4NL4OcaWonMopGhw1IkWri0mJqfNPt+v+/EWG+CEC8u3NPMrhm38qdXxzMiKtDBiebCfvAlTwRkE+wCfLioIxWwRzruo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742354994; c=relaxed/simple;
	bh=Bb57PX0+iRdx7EzJGc4nuV81OoSOYD0vtd0n8YXxos8=;
	h=To:Subject:From:Message-Id:Date; b=azHw0jedmjqREyFxh2NCi7bMuob3jhvSNj64w+hY4qGxk73VjjCYyBb8K0siqmWu7AHHsdgTStTlcYm0v4LjHC+ajp16/Osbh4z7rc29V63jZOH0swRQycTBi7CCDz/bZHUpLpfZoDqm4hbEcREcfxEsWVrgRXXb7k4/utrBwUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHWxtluk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHWxtluk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89CBC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742354993;
	bh=Bb57PX0+iRdx7EzJGc4nuV81OoSOYD0vtd0n8YXxos8=;
	h=To:Subject:From:Date:From;
	b=dHWxtlukyb7HJs+xWXaT45T3dQeSG6XGqMFFZiTxwAI/j2YxU3UI//lGTo4htY938
	 pqDfLn1O5K/ausF8VAgYlKA1eNB56jjPgkrta+1Xq++iK4V5hUXcIArO1goJIcr89t
	 yhYgRYsvtGXfsUDlU0uI5jzVLdlDbI6HyqV/FadktoUKBGl+5r73TwosFKW4scB8s3
	 F2Fn2HOQTExud66LB+YWLau2VMJzc7RJvjXPNIg70v1DThAtRKmhSqVLdOGjHYkOcA
	 aZsyVCk46FMwKLEU153NW/XA3ci2T9AFdgOBGOAZdvgK0dGzYW7HHvG5AU9B2oBrTv
	 UHbdypVI+8mqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73A4C35FF3
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174235499367.21258.13607348548088634335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c023b386ea69073735a945184ff8a6d9f30db2ee96942a2e35957911109a78c
Date: Wed, 19 Mar 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742354993
