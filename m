Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4022978F59
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748598594; cv=none; b=uK0a8yPOxh0pSU7SRWJfQPoJvyLYA+4zZ04DLtGHcY3qc7tegyVn99j+73ULkstwql1QKvykQVT7Je5lb6daZjnvfk8pYl/NQv4EViu7XMYp+pzAH1BPibBu/b6RbqseS5FyBAkpOzbMlVAX/cwrz1qjzW28u993JuejkePpVAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748598594; c=relaxed/simple;
	bh=1a02WNKtLDBNImWSLtAWvBy14GUeIJ9jMedRegtz2zs=;
	h=To:Subject:From:Message-Id:Date; b=c+K648WGLLIkSwmeBP6fHJSNHVybGDTUDxZCCQMNO1khQFGd++l43BoQ1LkcVnQoHbAxQLb+YFd7GYqL2lU792noIybYdSIT6Hmp4OtGJ8qPa83YFAoHA9VOcahUktqG4xsvTUedjRTmF1KE7vR68gHrrhmjZuv9TXqOOt07vPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPeEJC+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPeEJC+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5A0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748598593;
	bh=1a02WNKtLDBNImWSLtAWvBy14GUeIJ9jMedRegtz2zs=;
	h=To:Subject:From:Date:From;
	b=MPeEJC+xcyRC8LDzJckOE2ZNXjcTSF3/efKTdzgViscB/Yg3NMFaUzis17eDpcwvJ
	 BrYSCFBPnlIWL7kReSUI/1tp7SqWpQL6cTjHkdYSCirUXHw84w9B8b1KaqEI4+vzYO
	 D/LN2qRMNwHOd1jbhpLY+HI2AppsIvlqZqK4skmBaEPMopeZxhmDdsMeROwLxdubFo
	 83eazmMuCxcFG3MjW9dHAagZe+MEsgWM0bq0iHLVrXGXWS45xYj6UXfUSSGfCYxDUa
	 Xa8NOODWA8K57YRUOqSVoVwgAfAmALRfKUavNYScF2AJoTvDwX+Be6KOAMWSJajUYU
	 j39w2WtED9b0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902BBC5B552
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859859358.7331.8545098469461826852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f44a3550b32905695fa81f43b31d1b3d8ca20cae8fd19d65ab474172b8d613
Date: Fri, 30 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748598593
