Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E293ABD83
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779826954; cv=none; b=SzJ3VKE0nWPhnfKnWbAtxMF+w7AkFAyzlStvYTPCC/nLtE/MgUy+e6D0gp+6ftVV3mpceRU88tFsio0erSTWOZbHlOaOgoIOR6yOKCJ75kF7kZc6+vWj2ZT3TQ43bPnUZ3maNPIez3q5iWmNwaHYwGvNNxSOegSfIwdE2z6SHjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779826954; c=relaxed/simple;
	bh=MgoRbIOxJDxS+T4TnCVkyWuxHdfQHcJzCGLkDk1yDv8=;
	h=To:Subject:From:Message-Id:Date; b=oFI9tGSfSSZA5b3R/BR0Ygtwz2jkKsgkTHQ+PUU9e5F34m3zJToWIsfVHQDVJSWgC6Z0l+OKJuklcn/64hdcUfIo+yg6mkxcDQd/3TOpsvstgvBK0ap3gBJ7yary8+6peqL+n2KRhSKav8M4dXllKcER/hUdYgDx9CDil1GxWvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qep4Fa0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qep4Fa0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4570C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779826953;
	bh=MgoRbIOxJDxS+T4TnCVkyWuxHdfQHcJzCGLkDk1yDv8=;
	h=To:Subject:From:Date:From;
	b=Qep4Fa0ppCO023Vc1Z0CIZlGrKg2vzeBkoTr7/age1QLmL8T1O9eDAwhCvbegqrMq
	 WF09bP2ri6PIIdnvMeczu/VRkIQVbequwntCDP+Zn+xsxO7y5hpqFrq5APOTHgm5o7
	 TULFT/SIKHdX3KsbhTrrXtvnskHw8gdRSRjc1zkR6mmXhn+nQS16LfKletsomLWXFL
	 t0oaJMhCiOmltU1HdcdVt/9HVsxplh8S6d0H6ZaMaDfy2V24GyD3SkTulEdeqqMgtj
	 9KlN9OCnN4aLCAu6jJOHnMrZhhUI3auI9307DIiJ8rVThu5L8UhQI6IXIH7cDfehC8
	 DXUUWoMnsa2Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB96FCD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982695369.15977.8168830802792096996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7f9c4ac9948d13c8b846b0661da068e226eefc6df023232f9aa67ed27fe64d
Date: Tue, 26 May 2026 20:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779826953
