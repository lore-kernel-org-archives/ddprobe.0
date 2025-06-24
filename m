Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0D92C1583
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750772396; cv=none; b=tgEF4XFN2/cmbVvIMwmf3wI5Jp+5eAbMlrnjzgoFEN5OqBpoTZcg6C4Z1fWabDs3LOF/6rmfa+G0rPxRflArlGC2y0zo76LNRPBFS9o6fxaOmKFTWbb8yGOecwXRBw+Nnu0BxjBx592nVU146LQqRSX+MPCA/HzfydRY6x11wCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750772396; c=relaxed/simple;
	bh=+iTzZWfcQi7Zn/Vy62mRZs3tz+cdNkiB+P7Rc+2kQeo=;
	h=To:Subject:From:Message-Id:Date; b=O6XYjSho9nW1aIVh1KJVW4VCgW4tF+koiJ9jI8LLzottXdt3i/wEa83qoilQ8SIuEwqPsyi7EHV0s2Vp826kB1s3XG5hs2/O5Kgr5lhmkDTt1oNA1RGoZKAOpkdE1jxREM90a906dtsHT0SuPr86INaelvPipZGXF8dO+vKVgM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0/Mg2X9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0/Mg2X9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A243EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750772393;
	bh=+iTzZWfcQi7Zn/Vy62mRZs3tz+cdNkiB+P7Rc+2kQeo=;
	h=To:Subject:From:Date:From;
	b=l0/Mg2X99nZNZSKc18TWtHn+M9C+5WeDkp7GxrSNt7yfztmVIv+5OxQAmY+ULBPdq
	 vwefrIO0RcRyYauQx1nvHaQJ4hEtLjsnrrbo3PadxX/XHfZ5yPJIEUItmqttlyNEuv
	 PEybGbRakBm4aibP5EmMQMaTJIzvGLCv/E1B4m3rUAzeYbBxGJpa76WzqB3MZ0/bmT
	 SMOapWAqPPYfkWBR6vMkYdr94lmcNVlwosVrAP5BsNTrOXasFLZSYZEx2RZlLROAHE
	 lf0J4p+AvE8NQulqaAA+sWVZ7yB0OAtabs6uMo49H8seCl+5Rw07UXSkRKRxaMPMUL
	 DQsZyyTFW8tnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F87CC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077239357.28577.14112445896059484153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2503f40824a02537a7a106c8827686bce0b741453ed7aca89eb3b18c10019d94
Date: Tue, 24 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750772393
