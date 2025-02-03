Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BA25CB8
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738545955; cv=none; b=bsjU+3v8Qm9I+qsvZfhTIbVjC53Sw4+vTOAzGTxRPiNnoEC/4PVipe6EpkW0GTm9vqmjb8+0m4TmgeQb+LeSsU5O62MNFoXcnumBeYLekTtzzGNNnboyPpexmc6Y9aX+KU07J0gs1XNSCOAaiZPi7rcdzioBbCM9DTtUVaONQMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738545955; c=relaxed/simple;
	bh=DHgdFLI+KoCmrcFRuySvHfpryMBQWyGrd6KKK6d/Jt8=;
	h=To:Subject:From:Message-Id:Date; b=tihS0jKqrsalRFd41OkvZzEJMleyxODD0aykBqHMtLTcV4wAwreY+jvjyLKYxWt06lPyB62GUk+oPFDjm54WwvkJToh7GvW/zXaqnKRAHI18+7bm3npkvdmsGsAwfmVud2xlaiqLePlngN5JKR81tc+dH0mBgb8AvD3tj9BDY+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1iMQe99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1iMQe99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3EDC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738545953;
	bh=DHgdFLI+KoCmrcFRuySvHfpryMBQWyGrd6KKK6d/Jt8=;
	h=To:Subject:From:Date:From;
	b=d1iMQe99dKdAwrdBrc7C1iADPDnGnVLCksxiiU7R6uNY9wAhejOewuN4h6Xzb9x+c
	 spr7YtN7JUcnxyVTQclu3sFI1KO8kW8tFzpRlXZ/X3S2fiy50cwvQJR7vDYL0SY+zr
	 CQtaoupl8OCkgmkkhMfihhnwCcifKbqZOFjAtgZI0wMzXlA4WAfVhThOPTuThA2oox
	 UaBDkBFuZEL96KJeWmxmDtvnWrlzChtvMc6NtvuOhFO9qA9Kn96hu2CwQTCMPDlltZ
	 uicg8eth9Pm9VgcxYcaQ55Puiy3PM50zngh1GWfrPsXXoP5YNMc6hzOV6yKMRnYwg8
	 cPSMYBETLSN9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6B21C0218F
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173854595363.14038.10505783319630449468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91396146a267e3a07aa6c7197dfb61244f0af93a32b5bf03ca2f8967bdb35ee7
Date: Mon, 03 Feb 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738545953
