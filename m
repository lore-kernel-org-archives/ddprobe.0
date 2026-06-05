Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D394ADDA3
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780650274; cv=none; b=OJ1SFaQR7czWS6FeYmJmd7RUZ3Rw2tr6j6NrqTlEEwMeEenrB/TMKnk+iWhEU9Zk6gUnah0fWEhVTufqpJFEvnqCXwo5Yx2otnNaPEY44UHK9PUC619TTi40ySJKjebIClEmqSh06EyNtgl2KxzKYgk3DTshdqUwt64VUOK4E5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780650274; c=relaxed/simple;
	bh=EBBWVttVL9IkopHefOV/0lKqX1dVk1KcHiQh1Dxq3L8=;
	h=To:Subject:From:Message-Id:Date; b=Wz4X7muQcEF9FHXReEpIWhMhyc5HZAm82LKUslGHMrD4PJOZzjBT6D9VnEtsuR+XPdOIF0fVl3yBtJXsyOZdV/rzxL3VuscUQhe6136GLodDFRlN3MXYGctuWVg/iA74zHPBGeUvrfULz2oNALol8jui80jCEyaU1rYIZpdgCDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fO7WJqGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fO7WJqGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2A7C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780650273;
	bh=EBBWVttVL9IkopHefOV/0lKqX1dVk1KcHiQh1Dxq3L8=;
	h=To:Subject:From:Date:From;
	b=fO7WJqGLZkZtKwYWEY5cqlHb/C55EVxgZJJ1JrQXetJgwM/KZVtPTD7dcrDEroIt6
	 t5DK0wsufxX76SkBDkgS8ATs4CNKasiUNvHuhLHqB2D0C4JhgWCLTmCdEgI2z8gIww
	 +RYG2RL5AIXqw4eUXKrFq8h9a9kp3nbMbio8Fk87NHglPTqV8/8mvo1yVpujzN4HAP
	 RNSfyFyrdS6gq3Mh19aKqGcxQGvCkYo+2HZOgrj7WCnB9US1LQked68ETvwRtrlmn+
	 CEkLUOSGrgT80aMKOszv1MU6kNYZVzwlx1rMEKTFhNpJ2yS+FM3YlRvRPD3DdGzRFv
	 aFCQkg621d6Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0D5CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065027370.11286.8707658974323500296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32b42c6c8720c82dc49a7567218018fb9fa81dbfeee6c748b0fdea512d80106
Date: Fri, 05 Jun 2026 09:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780650273
