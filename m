Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DAC72BB15
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740623934; cv=none; b=sOhzjZMzGdSu3rQBSDAQ9Q4MyyYkNmtRBTQLFBlME/cB5Gt1PtDIfWpdS6sc0n7DK+oM0Nifup8cALLjawwWUNzdFCD02FqsV9o9tYT4KZ0dWNyGUR7S5GBKrEA/J3xv8LojFRTQ7licKQM4b5EtVpUPDimHNGLXScvcj9zKO3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740623934; c=relaxed/simple;
	bh=9+m5szAK9fNbpH0ySu6Hpt4wfBodUljHSCoLY5gII8I=;
	h=To:Subject:From:Message-Id:Date; b=reFyWcqDcYvKnlyJYZ/h/ri/nF0k8rNSvyH2mRlCs05PKYfBQtGyR0IslicfSK67UXM4yQnuHrQjkSj6STGZnkEASfn1eoe4TtKhuAb8/g8Fjf/Yy57uEohCg+4/8SW2wU0MDOSOHwTRmD6MVGeGe6RNPaewF53egbtLYwJFZus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr2Lf1Pj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr2Lf1Pj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F60C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 02:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740623933;
	bh=9+m5szAK9fNbpH0ySu6Hpt4wfBodUljHSCoLY5gII8I=;
	h=To:Subject:From:Date:From;
	b=Fr2Lf1PjUV0/AzWw+oLppkpeBmWGEUqCOdLFmSrg1O0VRZEWv7fYbkQz7A08s8lSw
	 sBQp5BBXsBFUGP/ZhXmdBAQ23yEpUJPExGs4ZUZouONSxQZjFlZSdmPwukkvbRGm1R
	 bMRSos+JSN+HAEA4SKlvtCwGr9s87lLfkLx5bnBkBmf225kTbe6OEiP5LQeQpJhnhY
	 FpSvln0IBGAzdRIsCrrFQCLgZjF7U+o3u1hvYM3kPJ/IQet/KEXXE+TKcmiaqlUXIV
	 qqPXBz1IUew8wt/sloPFzSbGH8vyXh2MsEpcmRxfyVUoupJDy0MF+odDBdIazp7L7U
	 m82q6wp6H5hhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94632C021B8
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 02:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174062393358.25026.14790401222921352081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e10c2f8be9420b3ba098f5f1c767d741865111d7bf7311b5efffc0c4679ac6
Date: Thu, 27 Feb 2025 02:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740623933
