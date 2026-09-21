Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83180369D66
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790008834; cv=none; b=dOL8rBsc2pHVBZc80pnf+sSvTlRlECWNUBhuZQCng4osB/sA8+Lk6/Hgx6aWMKeILV0Y/vZGtfJdRYjPKkbSNYTejd/UUitcUg+1745hquUQgZ9SmVAinLxsqfS83I+aW1HSHR6XpBR8+r7am4348WQLUyYc7DqbGKTBwRDuFmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790008834; c=relaxed/simple;
	bh=7rkE8Zqpsb6J36iKHiwTsK/3DVAgbqkiQBDs6pyvncs=;
	h=To:Subject:From:Message-Id:Date; b=m6LSFql/1Ty+3iD/C/6j1m9foXCRWfelliLC8mtYpbjeWHXdcVFeGq7MtmF4Fk+MyV/BqW07BRrFC41/CcGgk+4T+5fusN5Z52vQi50tMviPTsXGBrXon+L0KwsW/Z91Nq3bcEoDTq7NvsjUPqBoyurPyIorYCu/hwae3KEYwEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHlMF7dD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHlMF7dD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C84C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790008833;
	bh=7rkE8Zqpsb6J36iKHiwTsK/3DVAgbqkiQBDs6pyvncs=;
	h=To:Subject:From:Date:From;
	b=DHlMF7dD6tp2Mf7WiEnsdHBUPmllapzTjJoB0d/kP4xJe7frW9fpdRXHeK+MNTxUj
	 MfvTNb+ahqlKL4PBGyIYBoOADXFQyrxSnEDdfNoAGadEob7tEz7yO52ltLJYlsyaqq
	 k7U1TeEBY0B+8tRhNOoZYUdVkan0OM4BbHhtxaFbAJ24Drv++A3P6iIq5XGExBUvaf
	 dQe3xqtXBdEHNxjEeQaspQN0g08C8M32dOoik4CM7nwE9FBe+77sqdvpF+FHAH4irH
	 WPdGcAdk7kExxSWjg4AH1seAtJ75lXs/XeSWvs2mQVoUZhlBY1p2XnokWLi0prPLlN
	 q3bl3goI5JOJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0150C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000883376.32244.16489672940984041479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241e774dd9daa3978e8c2ef6f63b87ac5ab86f4322e40fcb36793968e0499433
Date: Mon, 21 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790008833
