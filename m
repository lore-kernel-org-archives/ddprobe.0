Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0CA1F3BA4
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761721194; cv=none; b=me6E3zY7z29ajUl5/gs/+wNrUJFZICsu58I6ZXeGZgTufnPZQ9ObngrvZhaDc+p/fMlHuw/+0fmi5wlXU+r2qtk2rNMrrVedwQk7PyC3GmSudY6uTWKd/GJaO6Tf8UgPKV6owe8smJ4PNCMXBGviiba6gG15kGNh0IWKDxfxmY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761721194; c=relaxed/simple;
	bh=1RgA1AnZQapNrSTyD2kJzHA90+OclsZ5hmszGaolp8I=;
	h=To:Subject:From:Message-Id:Date; b=PsQbv/kMTrozEm9wzqsLo1UH1r4qw/D4NoxgxNtV9GZh3wlGKkwrXM6mZ3EZkahwXOdXo0uHSFGq4qokQ2697bEvkdH1uawqbR9aXdWEnGYSXyM+GeBm6bAmZJ6qFWEL/sgwFllmC2Hdeg6VH+LKHkVbXMY1xxkS3W1drtt1SHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJVHWg50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJVHWg50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2446C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761721193;
	bh=1RgA1AnZQapNrSTyD2kJzHA90+OclsZ5hmszGaolp8I=;
	h=To:Subject:From:Date:From;
	b=dJVHWg50LWezxB0g/koEi2Iu66C/CJSl4+1/qZZRYOwDhM/lVdMQuhvXBfy3u1kRW
	 pnw9BOa7ShbgdUHnoDsldkVz333DUAHO26t65oltvaYKY0+8mIgSH37hdR0v2oStx9
	 GEq5zGMj7dpvipOjzq8chmDHWZM0NneGCt+h4EsnSrJs2JNu3zVefgILm4GyBgjVdB
	 pWKvgWOAU10ud+Q+lETXGZ6us4kqBbyvAtjy3OEnhu8m7yw5/ifJ5x5buN/C12sH2I
	 t6njJlJWDCNxXYeEEFBfQhqt4qADfiTMY85ak1lPqkzpFWaDlH4DKFcBl+oxV7ZqBt
	 cqBdq/6h7qKjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E1CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172119358.29741.5388738038032448734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f38f16f000b71ff5efb007310a9b505a8258163474c15904aef6aa784ceb70a
Date: Wed, 29 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761721193
