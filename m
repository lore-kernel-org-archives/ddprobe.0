Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5050CDDA6
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718667503; cv=none; b=aRmbwoguZPugCaKiXwduaHNv7C7/Nc0pt7yoNao1M6PFJHpSfsr2plIRd4XubS8iRyD8JFxCy/wev482MgDeWpMCvckO0f6uAulol/scKsr2HhoTNjhAFMT6SZe1+cNWcHWRGzZ5MCNQPNVzuC8oXEEXxPR+Be5M9RYRBkPcx5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718667503; c=relaxed/simple;
	bh=RQsRFfkd0BLmiof742wnWJoL9MQ2Dk1J289atvcl+wo=;
	h=To:Subject:From:Message-Id:Date; b=uUPCBQFrUohxadpkBVvZTR1MD4wITzkbIL79Bxf6v5+9bOlmrJZtOL5lygQDa3wgVGyA+TSSuKNNVAdStodXfVUfPQtaqScVkEaVBngRGiTG1RN5cS2c/vOy6VaHO7o8Xpm8gfkPgaeOREjLeuJ+TTMMxz1UpgvOo3NZ6PAOp1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iezRmuTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iezRmuTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D854DC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718667502;
	bh=RQsRFfkd0BLmiof742wnWJoL9MQ2Dk1J289atvcl+wo=;
	h=To:Subject:From:Date:From;
	b=iezRmuTbNaw+e5dLYDueokgMldWujLpIstLkg1gF0hm3oQITYH5caNeooACWrBL7T
	 d7HFPgtZr1L3ENMWUmnHWBy65x6MfZb5e99K93zCVeXWfVvXgRFDSQLJ/kmlhMD5ct
	 bxoAb/be+MnYJPUDgFQW4obdpNqmcShGBfUgpTJ3r8xUFjkGLEtRdTYxEVNPAJZmgF
	 pd6wesSdIn+XHtV8Sb2cOqr5KMImp2e3pzc1YMPTM3JB+qhs5vLcG6JWFcShSbqf5n
	 uv4WUGBuc6pDxGp2063PlJnBwg66MM7WOqu4d3qHfJlVhpgctPO15iq2CrXrExGTO4
	 +0VMMA6SOzqVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBE4C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 23:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171866750276.2432.12555532955481949290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ace69ef7609d6d556a0fe6bcc688294273aa99e4bf25bcd6d6a72ee73a2333b
Date: Mon, 17 Jun 2024 23:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718667502
