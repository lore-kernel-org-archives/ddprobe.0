Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9810E3612F3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781376994; cv=none; b=PPBW+54ckE7nyqY4GvFvxHby/7ORmGLtPgTwBXcRp5qHfWSYh+rOGAbkTexzKlTP5FQ/QHHqdDXjMpN4jukFcTFgJYq8Jp7DBO4vTh+91C1BEsM4EhHqpg2pmLVSzG3N8yi+QNk7jkplSbULuWZPl88A66LfV0HYV4pr+YJnGJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781376994; c=relaxed/simple;
	bh=NGz0VScqVwbEmy98/uTkau6SnMVL+WX/P5qS3pVYf8E=;
	h=To:Subject:From:Message-Id:Date; b=aZ02lKsPofswOvFN/Ho+ZlxOFCt7Nzey9ScJS2f8oR3RezqTKGTdc0T+Ptx8N0SMagrtnwABRO3anFiPI+91R/ZEvVKdA/Xyi91yk57g9jvT9o8vNkM7xggBdexSUIII8SLW3LF1Ys2HMPNVPPriQUeYIPhshZL6dEvzZZ7U0VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqUXmyMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqUXmyMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5E9C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781376993;
	bh=NGz0VScqVwbEmy98/uTkau6SnMVL+WX/P5qS3pVYf8E=;
	h=To:Subject:From:Date:From;
	b=nqUXmyMfo7MqLYVh8IWeCMBdqgnkNX/2gsSXOk1S11nnu3treHk4LgiL2v3h0J65I
	 fg31+70ZLtuQ5IYVhh2LUqHiEF8HUiC5s7RbWXNAgKowrQo4xnAjVv73gds1HX3d2T
	 DR4xPAjM/5V09AZHG74YVH04zSHo3yL6kCUGW1a2BIDzZh3QDmPxFUeEQ8ZwhMqNQt
	 BfN1En3LE73c0ERj5Z57ssQ+jQ4e1JkJGnOhhmJnunQv1vjBeqZDecXeMfb+Jz39C6
	 XM+KTbzJn9WOOueIO6dCA7lDkP3dbytUq1CYief7RjpoSux71dptFc8INIEFAg16Y2
	 8NEFIDCH6H1Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E4BCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137699369.14319.1640722824803785037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94dda5d4166c351ae7a23743ffb0586236f3f75ccce7d49096e926f7bc90988
Date: Sat, 13 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781376993
