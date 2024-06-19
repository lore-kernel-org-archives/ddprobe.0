Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6841DA24
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718820563; cv=none; b=qRlhw+Ycb5klmfOJVQzD4Vh4a3nH91EkfTOAQau+eLZCW+4ZYBqDv121F8gIXAdeqbNn5PtJOex0JObyiv9zwK0hN6gKRY7XARSAZgOCukm2wQ2eFRrCdhRZ34FRJGunWbZ35Xn+U+trj6ZGTJ8ceS3QSikHsTm62QttqDB9nUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718820563; c=relaxed/simple;
	bh=Ueg+x9/MN/faZuy6veWrB88L3y/VNlbLlzduXoo+N08=;
	h=To:Subject:From:Message-Id:Date; b=ojtuEyIUnzNHruyd8WvMHvSnsFJNmsUsjfJY2eCotvCFDda6V9v/cbj266oPs0+3QZDM2EmtYK5H4RA/9do4Ta1eqhNJocY8Wa36kg4HijTPVbSqMlxFFcS4p6cTI1KfjKDqBVM49ptK3aN0TjOP8FPPglkzil3c/80zne80eHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ms2VI7vS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ms2VI7vS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E592FC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718820562;
	bh=Ueg+x9/MN/faZuy6veWrB88L3y/VNlbLlzduXoo+N08=;
	h=To:Subject:From:Date:From;
	b=ms2VI7vSqIbEjW+8eEIpAzOx2ex+moidSLzbsvYaiOFXDcrNnSwIHY+Aw/aThFnbF
	 acqMkz/ktMVnVzOr+GS+paTU8P6yCARabsUWnLRrqk597KbGH8Rrbn0ka+XwQVWD4B
	 7M92WMGuRr8qWb2plWvwBuwd2bGsstla1mDqthALIG2oy+EBh5ZOhtFjD3CAjECG+r
	 2pumMfXgE7GMN7huSeCTtksXOEj3k0gY9uR5DZJs/s848DN+1LW9f/jCK7sM0nRhZk
	 oFXAYiNLFwfP99+qQGXvRR/tI6x9eMclXn97sFymmRkMaf7pzjs55KMH4k1ewI2EyN
	 1WJUiY/uaz4+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5425C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882056281.13764.12917277770433875079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509490c74344af81dcc10fa358615c1ea5ef686d048bd43f50573e2c23b04ad1
Date: Wed, 19 Jun 2024 18:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718820562
