Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A3F12B63
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747746594; cv=none; b=pONQE/aI0eJ2TAKo2PIoynPx5FW8CO6jA2kt+efqWfQUzaMahXGRLV++5nvH01lljHnkNMHO9s69hS4ibcNEBDykJBQXKEzjsEsZ+rPS09d7eGGppDW+8thZZU/vT5roUrEDMpGnB/Lmh93/aBbJAmj2BaTH0Wk0fLEWgzk3n3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747746594; c=relaxed/simple;
	bh=efK25r5UsWLfehX26Ba6iDd0F630HYMEZ/w+wc4Te68=;
	h=To:Subject:From:Message-Id:Date; b=hhFMcpEhiHdHuF7pkI7Z+5GsHMo9h8se/Bl/Udvp4xIQX1TeVNwWcwmaB/ykXZ08yt1aHWj1tQBETRxAdLH9z+IZTRL7vQZG/JF042CVx151zuhpoogAqwW1PXvpFOwuCKyALSMKLItZE5pWVJw1AlFU8g2+BKRW/s5txDinbu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJ5yM6dH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJ5yM6dH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0590C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747746593;
	bh=efK25r5UsWLfehX26Ba6iDd0F630HYMEZ/w+wc4Te68=;
	h=To:Subject:From:Date:From;
	b=YJ5yM6dHjz63rDprpVWWDN9QBitJusgsnvHvFNqhntkF94BNALVbWPJi0EI8AL5TW
	 1xWj5u828xBCbyi2Rg6G/a5Qp7XviTzJD5Pg/V9DP69/t+O0yG61JX/x3xZPMuUktu
	 BBdEGGhSraRdp9ewDI8E1nrBMfPEFK14A2osvhUdN/P/omilmwbjf2GDMv7KVCjjV8
	 fwLRMFwUGkRIULItUxoI/7JrNLJI1h8Z41Hyk4lr6jGdkv4LL7HZOCyeIEQVEozawL
	 mHsarcenUN3cSRIRwiNJ3pmww89CqehKiotVATnLK04L5Kn6sdLnEM772Yko7sI2FY
	 +FJGhBT/aYWlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5CEC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774659357.29172.15026266046943343354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48246323e86efe597d8b12128999f46a1e86d1ee8582c415662ff5072c5b1dce
Date: Tue, 20 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747746593
