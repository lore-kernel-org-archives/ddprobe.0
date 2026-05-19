Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368C832720D
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779231634; cv=none; b=JpSBAbGdYy8CTi1mwGhoA2BJJUvacaL9kH67RHWVYNcC+EiHSD6j2T8+dv3I383snB46rk4D+BEK7GpbWCrnC/sODNWyz4lYkoU6eUeOtd7GyGLcp55e3YcuENAoEqTcb59nsObcFgmR4Rkz+KEV3WQRz6oLl/DBzLvuBJSL8dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779231634; c=relaxed/simple;
	bh=FME3PW38AMCbMyE9feeoA0QZn24/OsCb+VVpm8s61O0=;
	h=To:Subject:From:Message-Id:Date; b=IufVbOCq50zwGvkEI2D5xZpfYsINWqIBwRHSxvGvjMZ7A7z7tj/QexJRsX09Xnswc7/Cjjs8TOluGs6Emg2YtEO+/V1K+b16u8e3+8sIgAYB7sxBntUsKeG2IsN3m7x7LxXX4Twf8ho9mz9ydKejs4FulczAZY7giNpjszmxYCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EoVQ7rJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EoVQ7rJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7CCCC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779231633;
	bh=FME3PW38AMCbMyE9feeoA0QZn24/OsCb+VVpm8s61O0=;
	h=To:Subject:From:Date:From;
	b=EoVQ7rJ7M8iaLv6tSbL/99BdPy3TeOXZTFVbhhtzFpfe0cnnav1eVeer8/+vPS5zT
	 H0BwnGvibGSxJ47VJt9ClTmHJ191CS4IADmtClQdTYs+gZ1jheP3q/FEIPRqVU3nXB
	 d/49sxD2K/k3fDIafJeIB0rdKaHzBcZdb2rTtLDPeBjg5lwV9jp5agRGE5a7co37Uw
	 VCoS3zz47R42YVOfXoL2Nccz05OSJylZhuGggl/5l59S3/lGBxCZMFD69ODmf1cKYT
	 S3BRSJwmDxSxVjuegs34m0ZOfnzLLJxkvj+Fe4y1rlkWeaU0lfJQMubeRpEQ6Fliyr
	 M0POMtBVzLGSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0094CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923163371.29335.17521312363163532025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a5d1b4342ed6fad959ba63b30595a8692319c46244b1eb0517ffb39bfdf9324
Date: Tue, 19 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779231633
