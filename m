Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4595D2C236A
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755512996; cv=none; b=EglS8xNiv1xK4yCPOuDCIhFnV13geJipz23U2gP7WmgvqQTypIpgj6W5XS2ZzqgsKuZLRPhVgBTNjc+wXbVEEhoctAy02gYaKyyG9D2XDOOCyASYDB80esv3jhD60S7OO0QWytmq11oohSMAUZPURdd/WuHCv7cFnp5Oh0Ms/pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755512996; c=relaxed/simple;
	bh=iVuNrwSlKKif823txK2ZKr2VFmHaI+XHseuho5Bgras=;
	h=To:Subject:From:Message-Id:Date; b=gR4lcqd9yPVoYphkdrOujot6tSpB/efTqsqYOY0oZHBn9shyYXcCgY0wybP8geRcd6TW+YsOMxAjbZyjlAe3HHuYWFUqY+dJeQK/3m5qIpUFHvUOlaW+URKHjImHVMTnC43WZVhnDmmvRZYJaTPaW+2to4mdfH3smxLuNMMSidg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovlMliVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovlMliVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AC5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755512993;
	bh=iVuNrwSlKKif823txK2ZKr2VFmHaI+XHseuho5Bgras=;
	h=To:Subject:From:Date:From;
	b=ovlMliVMM/SYTGyXL+9rL9FkYaaD2iri11lA2iwog5dXPNaLudq3vQ91MvFbIIfhi
	 26Y/aUUgYSo6lxqNWh9L2AG86yBz4l/VULHw4cRWFfe5+qf0SuoeU1aE4zTeTr/p3U
	 V8TqA4NdorHMlZqFoA0NXfikgwgy5AjpKCQ4Iai/Va5Zz6U8bRc4U5/2nOjzB80zwM
	 KXofy7EEaXQ/4skDmyw0d/dMXzgg0UIPocI+G6af4WV3MLLnCOZTUqIk+YOg4tm3hf
	 Y3I9rmjn1+fOjyZtIz5yAT4xBWx9Qyd3L8qzWC6xAuj3JcLA5b4ZYD6UYBa+Cy/K9F
	 AsC3dtojHN8fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90480CA0EC6
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175551299358.25447.10556199340597175385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87053a5bd5aad712f0f503e4f26bd1a89a3f808d71ddc88da71bda75371ab548
Date: Mon, 18 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755512993
