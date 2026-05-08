Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB753D88E8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778256454; cv=none; b=RxtzIo4FLIGodm5IgqxtmVyleW8aAWZiJyT/3bcS840r0MXraR7431na/ONiD0tzM+lzubYiIv5INK+KW1L/tKoDah+L/4FNkze1mgjEaP5V+weEV8WBlkG3U60iSSyCmYN3MMrutQPtT3n51ahfeuRWhSoJz1yvv6KDAf0ULpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778256454; c=relaxed/simple;
	bh=h6udFvXFWW7X69O/zyqWa4Lla0BZ3dqqV0mnigMhTeA=;
	h=To:Subject:From:Message-Id:Date; b=WHp1qbTp2xD+3z45o4CyfepaW/j9Y4t+ue0pol7slqWC610bpTee8/Z6ikQg2L67EuDIFpL+Hj57lPvTuJVIFECiwsBs3C+IRkStayttckSN1AfG4iG5DhvE97RppnIfKu0JsL3RZK/h8aAsInKIJDdTzSxmeEd1PLy+mnKzlso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPuE1tZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPuE1tZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6518C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778256453;
	bh=h6udFvXFWW7X69O/zyqWa4Lla0BZ3dqqV0mnigMhTeA=;
	h=To:Subject:From:Date:From;
	b=LPuE1tZAkKUqUH39wjy4Hq3ouNPw3Hw6dACbbxbuGeuk6UABKXx3QHdLMLna0Wc8f
	 tgZuuCIZOx8pEKi+sK5cMgUbWOvD/7tQwSE6Li79DxAE6RBa7HHnfOVFw+LQE9fnGP
	 jotevZgTpiPuppa5NqHDfS3FAaWjNj/RaAsr8uBfWEhDG34K7cX1cFgxwRCpESskf7
	 itUZSUGtYaedRfZfQqVO3QQu4la5U1xOzu1qZHFIPLvFEeQYOqMyhoxF4TSSLQGtMm
	 scQcAIqKAAYfBYzhK9bDDYi/HQ8YVaBh4i+djyxFqQcvmfq0Xdp2+NfyAmx/FcwJTp
	 4YhVqipIuCiZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE3CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825645368.15679.2136947207465271177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8f820d2b551ac0efdc6cda82337db06b95441d4b9149b184d1c1c7ca69283c
Date: Fri, 08 May 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778256453
