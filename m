Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC471B4244
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766852634; cv=none; b=srr8pc7pb1EXTHB+iWhF9w36RyH/q0J6X3Kx8wub3cbziTXAYlm7JlZi65ll8Hgjq1EuhZM2+L83yO8GHa/GJwS1uunpFkGwgIQKu5RlGX9PFR41iFkV8gDWudeuZ4Pca1OG126t5vrOKD7l5cz97M01uY4/fVUE6S+BKVGj104=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766852634; c=relaxed/simple;
	bh=fgThT1MoIpwGxmhJUwi9IukE2kEmksSZUHR8RygKaO4=;
	h=To:Subject:From:Message-Id:Date; b=AdQChy42CZJ60yVz1XZtrc4B4Z9Ti08H4EMGRUgGEKwSr/0YlKjsaCbYk0qfx7lXfHYyDIsB+UxT3XLg6qMYz2+osbveRGJUPTE8mB6k/fWvZWZYacx4M/M+H1aDAnq/ydxe4pu3kj+hT5fslAHcdXcrP9By57uo5CeRg+pdLa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iv8/wOOs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iv8/wOOs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B102BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766852633;
	bh=fgThT1MoIpwGxmhJUwi9IukE2kEmksSZUHR8RygKaO4=;
	h=To:Subject:From:Date:From;
	b=iv8/wOOsfNl/OucDUHz0WVBExE1bTHf3F9o4pZM+ck6L74sh6cVL7AAFrDu4vqrXZ
	 JJ2fTTCa/Fc8A6C8onqAbCr0DV4TpYzXrgaCHEH1vW6GxBlfeNRtxgjRtp0s+dVKig
	 Pxi6tUrxRHbJ/luIfifW0RU/aV5bI3y683vtY8B9qQ5nmE83qHdI2uKsaQ6f6UCVMN
	 EvblziwyVs15OWmuzMIaH4SilVmfqsdKrSTWJ8OFaL8xhJZLDFhT3qVh/SATy3ONqw
	 XUMjdyqWZHVpA9Vjg7U2lCDyY+7io1yil/mWQ7zkF3e2pxyQZg4y3Qxcjd2s51YT+r
	 JyFkCvdz+HCdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB7DE8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685263360.5333.8095129335682993038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343562480c94cd740248d99d45b242f5a6b935f8627527a07c50f6ae3ced1cb1
Date: Sat, 27 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766852633
