Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2712A156F45
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770007434; cv=none; b=q54/FEO84Uo4vDSCc7ZkvAL7I7d1cPTgLE0Q+/DCSmfp9yAMbCGPBbpGdqycybF2hQ9OgoSJr1UynHaLNuhqK1jBlR8AOAxU79cFtjxY7QN4W0cRna9OnelTr3v31ew3noB4mkV+GS2qhxKhIN/7qQa+84h/koghSBBjOfq42HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770007434; c=relaxed/simple;
	bh=8O8xDVohI3WgpygY2A+/EDWva2IZaQZ5M8nVIj1dhCQ=;
	h=To:Subject:From:Message-Id:Date; b=mqpBbPL6Jiupg4x+8HzZz7Uii3N/DzzLqyoOa5rCFz5ZFF1zh24h3Ui025ExjCxKgSyhv0Rnr7OBCLp45r9hu4SUF912W2WeuL1QdrLTEfIFUoR9rDsuMTPsZXn3Wzc0NSO9+hvsn8/PjQyctC2bvOcN+i5z83ImJJBR/jNQ1yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zyarmxa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zyarmxa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC54C19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770007433;
	bh=8O8xDVohI3WgpygY2A+/EDWva2IZaQZ5M8nVIj1dhCQ=;
	h=To:Subject:From:Date:From;
	b=Zyarmxa53kTfNez67UMK57GTwaaSjGPYGznPmeT2kHoilGMVcsF1C+SNo/81MMx/w
	 CQ75iMgP6bSIYvxlEXdzeZqefApBUo4CrANxYbxX4emP4kV3lhf4xZC1nKEQWwy4Zx
	 SGSjIZyF471Bvgb2J3mxWeWIM++PInZctU/we6iP5wBORhn4DGXyOzjow/pzKKn/IC
	 h66yGSr3PD8kW+FTH1PBN1Tv/4pS9fVKi4xDFiqXcW0Dm+35Xg209w8m4dF0kHoHtx
	 v1p+U/YucGtQAR0b5EpihochfkVoVh7wp5v/G6NOrha4qsAPqU874xApIgR3qh4lK1
	 MVu6EUu9/F7Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8A7D172CC
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000743361.9358.13423869845819673344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbe35785f70aa7dfb440d836de281f1e4b4b21a39ded79f4b0875e53fb92e18
Date: Mon, 02 Feb 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770007433
