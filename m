Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2319E3207
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751772594; cv=none; b=jCC2XjWYao2b0+/Hw3vnehyg1zkg3jjBURBK/CbG/D6k346NkMJLiJS1x9PMLRamBYhCmJW5VlNZWvJIWDkTDxBgCAa0f/jV6LjQx7zRiwb1SgbsIVer3I30Zb5OnTAi1cJ9VHI+Alx8z2nGEJrBs0QU5URpfhZx0Fv/LKtZsNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751772594; c=relaxed/simple;
	bh=KI0n2OVDfbw+WirDpD+kp+jnetdOwkkChMUz8c3+ysA=;
	h=To:Subject:From:Message-Id:Date; b=WfFUXjL0qB7mCCWKWhe3dUxHqnXdNbepczx2gv9ncUNF5zX0YDiyncpNQjDVRtMiM2KC3PWB620u1/FlevxN9B3qGOAckM16T4HeGanov2Ws5LmxkLbj0+Nw5aRxyK887pArDFeO7CVyrrcYmpnl57ah9EMI53qiFEhtWDYBw2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ2/Gsb0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ2/Gsb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64A9C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751772593;
	bh=KI0n2OVDfbw+WirDpD+kp+jnetdOwkkChMUz8c3+ysA=;
	h=To:Subject:From:Date:From;
	b=VZ2/Gsb0LDBqVfjS5zQAB1k5Q0afi1avMRp8Rbma53r2JFdxF+9u5l5zXKyU8bvqa
	 HCbOgTNLLEYSPyJHzqREKzdiFBDZEEBjIiCiGO7/frgFonCL4f/3ZvxEpMBn1JkKhH
	 ScRgtJA2W0cTaa+TkWN2uxbGR0ZK6f0NBXPhUHTmxAh1Qbz6DPTZdbiEHepOrQawZl
	 HGpZrd/IyMt5IaMK53+FBpqcohnhX4sJ+du5GeQrZ5STsk9sfawtnST/e48rs9Zdpd
	 ZiCMUKvLU4hrwxmC4plaFqSVabl4qNMqvdYQ45Oy4IXQltrVWmIht8QSekVfLbZg+M
	 6/Ze9z83FDfpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92545C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177259357.5200.14519183138516743286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9261555ed16b1262071f463c83ba0084bd3615343506f7df86c3f293668b52
Date: Sun, 06 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751772593
