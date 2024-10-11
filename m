Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0581CF5E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728687354; cv=none; b=tzFFQPN9odR1Fhf85COMD69RK8FJFWq0ddBJLk9PC9j0PpU7GCVLDjaUfEM3a1QGavTeaGkVgj0qcYnEeWmtGjRyz07RkX/dqKqHlHzFmj7JPH0q54luoab9k3Oba4ZCzb+1ronXYau1nO3+K4Rtq8qSUVoN6MXNqat4owOcqm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728687354; c=relaxed/simple;
	bh=IQaI5OD3WMUXhDsYgQyftVBT8zinbEc+MnVlqLhVix4=;
	h=To:Subject:From:Message-Id:Date; b=upGa94v5cNLKjBROXklt/3wfQcz5kp9JrCZx15/1uP6e+I9aTvE68K1Uz/B5UIAhdMxwDoFT5c/YnnF2BLRIeHPdIxWbha5RBU+G0ByEGMbd56KA7/SIGgcUdg2maxQSeRRQVOynMiyxEQEBsg+w18ZLN2JQx2OXvDR36oS4HNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euxpTrn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euxpTrn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8016C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728687353;
	bh=IQaI5OD3WMUXhDsYgQyftVBT8zinbEc+MnVlqLhVix4=;
	h=To:Subject:From:Date:From;
	b=euxpTrn1hDJeiSYQoFd04eiazOQZ85XNYiMZ27QY/mT/RZUxn8oEdzn0twr6Hq8md
	 /kH7jlU/NSQzPYRnvmjDKoJU41s/MqCHWz8o0RRSC5EyguYVPoBkSuydyCWm8CRpvN
	 AUSJpm61p7MFDpic1SGQRVuejW77VTq2444L2XoyxBFiFuG5gW2PXXdzPtB3QiCRfJ
	 fMEacudaT2Jo+1r5rIrC0kRIxsbYksgd+jkc1fYyecP6/0oTrskSpTfR79szLe8P9P
	 V0tRZyCIT2yRz/eyZW72dJ/NOWRWxSIqqZTvXoqYQuzt6M8q/2PmBn3iKLHjcnW9l8
	 WeaHGpEy5npFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F39D1A427
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172868735358.14174.14119071727935138067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4040539c1d603d49dda7b9b38fa4e8e9a068e06123224e7abbd6e9d99a4ba14a
Date: Fri, 11 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728687353
