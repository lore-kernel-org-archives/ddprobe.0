Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A17F3E5A2E
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780063354; cv=none; b=GM7gpyjGht+5TMHd+O5N7SM3iige+CEltC1ZUbviq4FH6o/TtJZPWZ6efI11/Hy7nazufnaU8ykHhGPPGK/Fw+E1H38BQTu8mCTP9hgI0yQDFLubb1ZaMHqaxZNasHJZrA8RTTqJ+ddV8XufkWAf770jnfmBtLCENPCJlyvpTK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780063354; c=relaxed/simple;
	bh=AUWCLWBWV2q4hSycvG5bUpMgriFcz9EDF3Wv5tEuswE=;
	h=To:Subject:From:Message-Id:Date; b=QkR90VRvbam7B5bmfFaXJXIsYgTN6otv2cYYCpu/hIa4MUS9HeKBdYh5ACeGkvnWcmWCgGFrhxRm3bYg5TFWdf5TybMCvMzE7lYvQg5+XZWOUCA4OUoUDeTFfBLJReyXR5VPIud4I7AkLFpVAJqu23pkBzVlEifgELkyzsWsU+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC8Alw6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC8Alw6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FC3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780063353;
	bh=AUWCLWBWV2q4hSycvG5bUpMgriFcz9EDF3Wv5tEuswE=;
	h=To:Subject:From:Date:From;
	b=fC8Alw6Pg3Qq+OR+r6zxyFROTgYlftfG1xnmRqo7m1u36TUPrKFAqpE2q/y95fozw
	 3TJoDe2icfvGnJjl9PGqPNLLvOcDDoz24t6QFkXmek1jV/BTUuld0lSm03DMic7bI/
	 P6otfSxDT7RgaV5tI1IS19szIwgRDAVPk3HpRTLGsubdvDdnUARYddEz+HGgXLRmD8
	 l7W1wKiWVt1eCVvY1N37o9rq4QGP+J55n05JcH9mJdZNYXA5kmatfjda8/3UdwL4Z2
	 srHioX9EibX/jVcbngokGIUshARFnX3fw0ojUD+4K6ioAgKNQ2qz/qzfSsyWApBCE+
	 SWAUEKTQNi8nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF989CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 14:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006335371.8047.13171803379088592372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570416a417e87046f6b94c6d09983cb8734e1867d2023b84b587bb61db78fd54
Date: Fri, 29 May 2026 14:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780063353
