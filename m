Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150F22E9ECD
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752077394; cv=none; b=fsg5yL8vrzoO/k0Gj9g1pSpxcW1hA3tHdjQ0Jy7oitHXiBVaVdZvBaZ2WmKeSrfWtow7yIhsij2VT3VGsXc/q+YXYzi+j8sFdBAfPAVX/kkhsnvhXteJXERGYVystcDPkbWi1ZJPhkjTBpS1SghNvay3tPFyXqk2y1i8F7ECrkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752077394; c=relaxed/simple;
	bh=lKglywOz/WC8RkUL0+h0ryb1JJkltrQXtwV2JwU6HwA=;
	h=To:Subject:From:Message-Id:Date; b=t6VEqi/fJdRETwmwXi8FXVUHv1v67aC893x1k+rMgy8YHE73weJ45Pyx59EDYFGTd8pb6gCEzwccIM31UxOLpsE+LRZ0Mh60xPi2GeWnik080jdHH79/9DpwKgoxR1ZUFsOqk7dxwSrXR368lLwniiobeW/WM1MrWy+EtCkskNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMvo5QDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMvo5QDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A019FC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752077393;
	bh=lKglywOz/WC8RkUL0+h0ryb1JJkltrQXtwV2JwU6HwA=;
	h=To:Subject:From:Date:From;
	b=eMvo5QDA6Nc4MH8Var8Q84a2fPnvwy0DiBLqYOG8p2P/G4PlvVhcYS/cJwFCzHQJW
	 EjyYrF9e+c05hs8kgXjN9NJkDA+ccyAM4ewvobbssKQC76DXDI6swofaltksUOEycy
	 mGMpvyqCh5PcThRjt74X9ixptk0873Ur5tjaG+/81r2+IgI61SmN1VtJSHGb00TvB9
	 EuUbqftElIuVTSVaYj9OGRBoavVYzzfCBMVcujN+COlQBC3dJC+cjGlSGci4wpupGj
	 caAHP16EPZFr1CgI8b/8I3iGqSEciG9dDoeOkFoEa+UqI3CZjNbIWOn1neVp6kFnNE
	 rldBKkE2jnzPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F54EC83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175207739357.4385.56056153664759306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23cea454dc545865a66abeaa5ed5f05d4864f0ef006a05f1cb1a10408bddd6d5
Date: Wed, 09 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752077393
