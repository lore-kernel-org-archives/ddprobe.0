Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641A13E7BA9
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792402234; cv=none; b=gVoxgC4ZCzKrDK6NQVALMvdqkX5YsBmeGMaBHF+JKY72qdACMLLTsohuTMi1mPohCwaO73l40EPVAeNn4CslAxeN+xC2f/7RBpF9dxMLPO2QPg8Y1NvYTSS4fGT6M8it3IbjcIkVxHzKq4acJHowiIM/SPV3al1EWS0Kqu0kKkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792402234; c=relaxed/simple;
	bh=Z8bJ5QuxUhrZa+oDX9wrN2eOWO0ISfvdDyVrCH+T+pc=;
	h=To:Subject:From:Message-Id:Date; b=Y8E+Inu++D361l4mocbqyommAiQLcWtSQlmIMzaVKgbcO9PqfseZMhhopIndjHSm0bMRPKyG3Ts+ptpolZRLjtmHuUmw4Y3TgGTEREZFzoTrjX5sbgpfhWBaBGtOkCRpXROQlmBdqGr9LY9/WYqXqb6Fl5/Q9TQLiNYd5MQ/T00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRi8jNpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRi8jNpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF95AC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792402233;
	bh=Z8bJ5QuxUhrZa+oDX9wrN2eOWO0ISfvdDyVrCH+T+pc=;
	h=To:Subject:From:Date:From;
	b=vRi8jNpkrm8Xb5f07qX+8/UHfnqauVB6KNsbmLuHB1nPP5WpHBgFjC1f4d2I01tB2
	 dgjymPmudYzCo2X+u/XOtoTTuCrHO+JKz/O0GPZ+33MawSZYR+rueIO2ALicUgj2sS
	 tUZfSaD90TBo50jTuH073I73HIBrOQAO/05q2MmXeocwprfqPMqWfKnUaTKwA7F5WP
	 YH3uala8cPia4r00HeJmoctEPNNpuowIJupLk5As0FIxNJPEIEdyEQf3e8oeG8gtEY
	 ltfzaGUP5oRfqJnoeBC+dDjDtn1teXVei2iTk2UYbV8sM4Zob6oF+PFp0dtZm3mrWP
	 4FHkBZLD4sd5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9924CCF2D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179240223374.11365.3903988520810492177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0860ec6df8f027dc1feceee0e24fe59799f9282906d978b247d1c53aab5f634
Date: Mon, 19 Oct 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792402233
