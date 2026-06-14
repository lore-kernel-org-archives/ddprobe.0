Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53090222590
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781462794; cv=none; b=BDCv3WjjgsGOeoBSNWAFEbQSmDmXDBM/284EFXUtgEBDtuD4cpfANg5f/eUnSB54ErAagpd0jDji4WPB1b5YZuySy87q2VkGJaezjU305b3/9WGBw9Ve6ByUBHUVYKsM7RnyLpC30p5Swa+5ueiNq+ZFemwBccvA9fF9WSiYPJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781462794; c=relaxed/simple;
	bh=j7zzzmC2fQOQHbmMbcJJvWbmGj1x88Z44pFVrLHN6+8=;
	h=To:Subject:From:Message-Id:Date; b=nERXLKPKD8mFB++YjPPCJ394cm8PRg7j2v3/tNLYfQRG/tz8YcVKyELLWneilEo9tgs8n/EuLHE12rJCWZ6QGZuefLOk/o4PPwxnhDbBMojC99NvlZln/gdzVOzSO8fd8ygxV+Um8pj0OafAhxu40jzcoC4cvVSkIosObff96/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WfHd2V7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WfHd2V7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF04CC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781462793;
	bh=j7zzzmC2fQOQHbmMbcJJvWbmGj1x88Z44pFVrLHN6+8=;
	h=To:Subject:From:Date:From;
	b=WfHd2V7Hd3bRthYSYkxty8m6tbPHx8GeT5QrWZhSADYD+rIhADzzzxe6tiGsK9ow+
	 alMcW2GR24IeiqgZihEes3DMWeprpRASOhP12LrTU5DocZDVJFKg4G/7pioS1xDPc0
	 R3Qfvu5FXf38274u6Sx10FZnWb+wfwN752SlUPfvTlB+3BfKEQQ27c1MPLjkqHxTjg
	 3xsD/pvK7yFBk4ZjdUlkYn9QkqmxxhtwcIz4Lr9/yD9crvIx+cvvw9vXYvyjBP9jZX
	 Njd1GPPFY5YEPlZ3gJxgXwDyqQ2Ig1I1qdCuvyehiqKmTvE21HSe+Ykl4y4CzeOCkF
	 +qJOvLNGN7RWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0EBCD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146279369.568.9061483883042360433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f34b0691f34f5094b27c5c424161b02e1cc9abe728c6d4b574bc2f52d210de6
Date: Sun, 14 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781462793
