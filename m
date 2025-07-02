Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB502D373F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751470194; cv=none; b=Ih2ugIV4nuhwhpY9Gf0fn9KfBtEp6j4DrdqdlXFUB0Czi8HoYDHQnegspxfQUBTZjVZmwtH6Owbc+1gdlWpu9vYllH+frtuIfIZoO+YhpVi4H0AqA3p3CDZwRz0fImDJD9132FszBFc+9ewKaT7EjFjXuSyKRs/QOHtLEkFV6Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751470194; c=relaxed/simple;
	bh=W0R58kfW7akZeDl/MhfvG48snFj3vIIoC8mpVaYrPN8=;
	h=To:Subject:From:Message-Id:Date; b=ltkTg8JVoq0nGSbhX+IoKUffWuQIjmzbXMn/c2iNnsJww4oPT/xGPEDmIfpQWQWaBkK0YHIpipE6aqjU6n9Gh9OBdlqdrRiMlkgskVno+qdkitOK8fMIkeufh+1iRj8H+tNMM77uKApplR77xlcnJNyVklZPROTEotz4C/KXBhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTLYP3jS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTLYP3jS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D65C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751470193;
	bh=W0R58kfW7akZeDl/MhfvG48snFj3vIIoC8mpVaYrPN8=;
	h=To:Subject:From:Date:From;
	b=RTLYP3jS4xnMaYs3lr583VeMIWHrpXRzUiggP4o0T2n7dk9cCWFAbEdkRdEihvN1w
	 LoPaGtgFOS+SU98vtMNp7CQHmJ0RaOGf4RqYgt1xfkMxQmcCbqZJdvNjFplBEi4S59
	 BXSVTJLSybs8xjZQa/1oAgDZkiRoC2/FwMMbamYqoZEOtKo4DSjaSKakLjrsWIz+bP
	 /kk2D1iESAw+TASQZG1mEgGrR4AFQw0sh8TUVKeu2nSu99mYAVVw8w+G8MUiLQa2os
	 I2budEOh6Vx0BSig61rvigEyEeUqmSUVIn4Jq5Gn5Cgm2sP7S+UWZW4sWAdRp1+33f
	 kAIx2CQXkV6Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9632CC77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147019357.8595.3963790991055927961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0586e56a105be0fecb656d8b1762e9639632a492d3b05d413601d3d0dbbfc87
Date: Wed, 02 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751470193
