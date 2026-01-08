Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191A54CB3AE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875034; cv=none; b=iizxuDeEbS7Ltfs1pDU08UQTNsd/D/3V2LaUTtAKpGGhwkLDSHyGJtVzkIMB6NYIYLfqRlpsbYEsTkG6mnmhlucT5DKci8xmvHxjbXilTDUbCHROCt1aIj5yot/6Hd0QCBaNm7UZu4oGERRDzsiMOtufLjDA8AxodsNRcTfHck4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875034; c=relaxed/simple;
	bh=PO8N7okyLExFs5qC2crhYdKxAQPNWYzNGK6LdlwMxdw=;
	h=To:Subject:From:Message-Id:Date; b=XPH0DuwCxka8hLK822BwCIXy6JkPKMUq4Es3jxgoBiM9cpCil7ruFLOj1iA+ZQb0WPuf5Jd05S0yqCN+3pwxH8XZIFk4MWupqnjw83jatvxx0uhSW4x31Ek+8Epbk9MyF3EgeWJpyWJnWtX7y26yWky+9ZbrUUYxyh8wN/SqlVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZxrE3Pv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZxrE3Pv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED2CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767875033;
	bh=PO8N7okyLExFs5qC2crhYdKxAQPNWYzNGK6LdlwMxdw=;
	h=To:Subject:From:Date:From;
	b=iZxrE3PvVEsW75zxn/ACtcBU9h80Pzfioi8huoVo8fFAKBW12uKESLo75OP6G23Zw
	 JVOaiU43mvps2pBcyRtDV4PC7qRcaaMLWctOCUxqx2CHmRx8dvH8DMAotUP+Qfm4KX
	 AGrGTV7uEei4e8c4pCIXyLKwKOvdZskzhHhr3+CSRTVtPgt7qsEgREXgYd/wRKtKmw
	 MDLtyocK63HWwH+du34LbbGwunumLnrTI/LYiDeM8grw10QjbRDyIkwx9h5bdNU06y
	 NIvXYMTmNm0oqD+n9f1HnTUmr/GVggT4QTnPC+56QlUrCO7CEhxJwpyOhYMm8jmcM3
	 GYFOl2kAbXXuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DBED185EB
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787503358.13406.2348717033319981598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79876ea059da988c848e8cd0f6b69f7b8ca1983883e23951ee6de8a5e9c8e6c2
Date: Thu, 08 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767875033
