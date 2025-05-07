Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B341EA7DD
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746643194; cv=none; b=IFwQO663Wx9zUJoUe102cI0sga+b7PTCeHP619ZvxCoRYkXE4Ob1/lpPPVGHAYqU181st+rrl4GlApUzQncEi0midR/rDZbQv6typRTvo9wWarRcy0CKgTKoQP69qE/9WQURry0zbl4yww+JwkKzPxHjLjxL+Bt46vBmm3piN6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746643194; c=relaxed/simple;
	bh=hnOFwAjnMjaS49xXx303FsJttPYEGE7Cffnyyrlybt0=;
	h=To:Subject:From:Message-Id:Date; b=nlKsjT736+Pgj5UPPfBMJMLlfbkYi7q6KDNosYDM02JulRmM+V5oYJFrUi5dAIag+IZfPNChdtpfMe4Gp1zEppkNaqQvnxXByU1anXS8wvUmgiJSqRslF0/Q+Twzf6dFCtXjzlKKZZI5rv1nTuR5TuMdH+fZ3CNB5k46FIDMAq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEs77a5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEs77a5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A45C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746643193;
	bh=hnOFwAjnMjaS49xXx303FsJttPYEGE7Cffnyyrlybt0=;
	h=To:Subject:From:Date:From;
	b=hEs77a5c2FGOCVWX7lAjau1xwWOwWa+c5LH0RnStju0aCWOTWv1TTaGmtVxbj8Uvr
	 0CXGNqBN2L1lUFx9ZChtX4EW0VEkk3Sjbph2+CxRlfCrzzou+5CZqaEk64HYvkxpS5
	 hyLnG2sccqBwFovnpQAVniDHxAsKGACQPrDzAWixuxSpvOD0pegIOE//Q7Hi7/eGm1
	 YWVGxxPGtY4xWgHkSEa9Fuli8s0+HmGjLcZAzuek16K8wEbcqJJYPiQMUCd6HMvkpi
	 EzAqmrQyhGLSjp2UuWEZYpCk7WsRg9Mm/LyjbqV4sVrDKGy5Vf72ej0VGDWvlpUy2r
	 dL8AMDXxUs5+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E17DC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664319357.19897.4380026884609724755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d3e2332c0c3d093492e1f5aada33112a7eaba3af617f430127ad8aed89a9261
Date: Wed, 07 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746643193
