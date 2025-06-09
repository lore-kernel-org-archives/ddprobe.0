Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3800B221717
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749501594; cv=none; b=i7hqj28MQyyKNfY7k1zh9NlayyHkj9WScsoEXLsrUp2tzbdEhjiOqMaWm2IFxXg1/JhX8WXTQy5vqkKITL/BVQ9Hpm/7LLzhe8Tpd0G0x4E+0ZqzVtQMJ15uYgPUuvMkaGyGRqo1MX2+C1XfU4u6qSo7QaOJXw9qCpiYovhh+RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749501594; c=relaxed/simple;
	bh=qHrByU6P/fEAP93JqbfNm3BplsFpRNMYX10lalhlJtg=;
	h=To:Subject:From:Message-Id:Date; b=tsv4cunSIV74LB9iLCAfhBrpV0atRc4iJqd7Mt9zV81FWHeHEK8gA/tbtim0ZP8MYDIvo3spmXrjGhOhNZg3fsLfUfoa+vwzOcFxDHl02EngXoldhhTSGD+DAnqwGuVMzcbr/ineKw1KdaVcFY0ZkLnulkl9kuzLnGkfoj5Y+lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYhROZDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYhROZDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9B4C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749501593;
	bh=qHrByU6P/fEAP93JqbfNm3BplsFpRNMYX10lalhlJtg=;
	h=To:Subject:From:Date:From;
	b=fYhROZDcEbCd3NnyJUWrsLoppD8LOxDmq026HpJDlEfDHowMSPSlYamBaxQOralbd
	 FXpr0tqozE1EULoPq78OMF2pAev19jNLWOL/tfHssDzjImmOC6PMPpJ0bB3XlEOh1U
	 6eetzFEuubTBPjQ2jveVs5cIl4fXEe2c5FyI2Igqfc3To93rOFak/xH5nD8kOVXD/i
	 VWd8qm+Zg9RviJGV/S8XnB2z07qcxw9zQwOcGeTsMT2vponjB13QsvU48zfF5cPOJj
	 vi5cIfujywGAIPuN03a0l4XLZZGXjAqXTB8k7ov9e2rEoVTgnvqcWKY3//3NGhxt5g
	 rxi8A2tmQRNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4611C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174950159361.15719.15877389463899090528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570269668a64de1c26016ba1281bbec082064d1ca7e390881166cf0fff99b6de
Date: Mon, 09 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749501593
