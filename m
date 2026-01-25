Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3FC7080E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769366034; cv=none; b=PDbWLyzVOD3muD9QKb5jSBh7VI+lk0vTvolph4DwhV9YbmYl/LflbfEtDg5nzo2yczfGBazFgVthJgPUMm2zNftP9lcS31/8pLWbWSPvUdeau5+xpyAqmr6MYqYiFoSIJCBrfADlIqew428czadmymMRJ/aP0F6/k1g1skBtBJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769366034; c=relaxed/simple;
	bh=Z7xdUEyRlsfUBdTQpPgS3lOJ4igdpiLZfisJSjnWUhg=;
	h=To:Subject:From:Message-Id:Date; b=C3NNuLRrrn5JqOWrMnDEZHsBbDHP7hGHwFSpHktXQbOvub5FoIL1jPP92uPGQeEZa7QyVbcCMq7BDfJgE3DLUuvyZSqE+ziyI+EIbT5E0IE36dTnSpeFezSneav+3Mr68I/3IKmB9nwFAAvFERGtmYPov7d0OQIZCRBoqiFSy6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtZDoTtb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtZDoTtb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7F8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769366033;
	bh=Z7xdUEyRlsfUBdTQpPgS3lOJ4igdpiLZfisJSjnWUhg=;
	h=To:Subject:From:Date:From;
	b=VtZDoTtbCiNlTcUpN1kdSf9xNVEXRbhWHbfHyIDbh6zsrOvN2Enu8l6482k8o9jD8
	 OV+F9gqDpM+WOX1t6DYAvS9rCKTOZwKCNF8BbMeFlQyUT1C9Q1luH/ipa2TkYzx7/U
	 7P3tLcS9IO/ggX4o93TDzHTQJb+qceHthL6QiLlQaOsm7OAqCPyn+WQq2hTubzQPvq
	 WwM2V6Wkd6Q9w7NVP043C9JBsr/uGQLWFbEOx/qAqftPd29A7pxVjc1Nnkl6gTobXO
	 NMiedtkgGUYYSaUY5eYj4dZ7823C6/hoQ/JIO48ECWtU6ryLUKmSk9NSBGLnyMHtyv
	 UtcMWYCLu7U/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D170E63CAC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936603358.16357.12997304546055694374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3d35eabb3b837eb32f8e67184eae2aa07dded7a4101b0e2e80b2c4f2211b4b
Date: Sun, 25 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769366033
