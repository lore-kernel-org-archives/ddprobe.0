Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485CE7E105
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747007394; cv=none; b=KW1M/fDhGEXfmRg/wJzkBH/gplyK43ElUnSn/s59lAQ2p+LL6hXVO1tCEmfaVA/yM5hj3iDhX8N0mBPatI9fi7kOwQRfTPQdfFyKGgVV/7GLYISgWZqLoLVYJiEZfA2kp944pvqY26KHKfuxN6CpI4Eijq85ntb0St5+nST25JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747007394; c=relaxed/simple;
	bh=6+LlIBYf5DfrT2WIGVwnivmufbS4TwuaZjq0smml3wg=;
	h=To:Subject:From:Message-Id:Date; b=Efk7LwoQ+Xovg6MmG5CxV0se5bFuU4vUWp+3Y+80eAmQ6mfEIpS3hJuBbV54qVorzABaUwxyTSVboxdeMSEqFrmPJqc9UFFNOXNPjMVmHF+D+DqoAik+4BtWUWQZE3hpaB6Bx8crArMz/6k7VoWO1ntiMb6lDyPTV1lVM2YVm7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vr6BLFpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vr6BLFpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58D6C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747007393;
	bh=6+LlIBYf5DfrT2WIGVwnivmufbS4TwuaZjq0smml3wg=;
	h=To:Subject:From:Date:From;
	b=Vr6BLFpatA4sgqJr1fVhoeEgVN/clFMkkx0MenJH6EObv4U+38LDIrkcrh0C1Prq8
	 KXe+BX4pKOLmXKpX5zpBMI2YdI3bTxM7ytKEgOzD9ebYIo93DwPYNm/w+itMswfeSH
	 GNGsfLz17916avERH3MY56ZcpvT8ctUMshPolxigfmTBJE6rleFbYNMLPg2Ziwg7Eb
	 6ePl2bpGeaEiQDU8D3qc0ht4+a/YBjZZSCBdm/sDY3r1TcuonxiyvsbQDkO9+qlmBQ
	 CAwklxrEBvWsLwg+KPQbkJs5Wx4GS/DTQbcP98lEBU03FtKBmcHboJlWFJMsNfza5l
	 3dTuhQeswl3qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C8C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700739357.30530.14611661704658718738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e8d0ba148764c3fcaa418b53a70adc73ced1ff79247ec711b0112342dd7a12
Date: Sun, 11 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747007393
