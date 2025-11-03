Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C753F2CCC5
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762196993; cv=none; b=S3Et5Pymf7MEIc3ArBcp7Aw3M2mEv8rc1oXz/q0f8kwutlObFxPIp4H+v4wbafHp92+lMzxDGZtsoTi+9QMlAUoShCCvzA38TAcIcBmzs95gUYseaELa112uEYGmn2vFB2uW7ksds1i9VAMaK2aC3cavq1HVs5KcgXQA9IUVyQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762196993; c=relaxed/simple;
	bh=Lj2caYvLPVlhGWSqKOMxpyY78r1ot2Qc5JIjCP2PArA=;
	h=To:Subject:From:Message-Id:Date; b=PHJYSOhMp7vnqYwsK/CImD/F7kQin816L4xIm7Pd8yEPtA+nfL6hpT+2/5uJHZncMMssoXOTKhDA7Hv13aUDtoAVGMmlAaASVy8F8EQOdh1yjjuMpvRzpPp5j1IZfrZyOOItFETMl6FGyvpzEyTLvlp4ABEqpsnHFGx3tm4q6JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLA8ZaZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLA8ZaZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2C5C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762196993;
	bh=Lj2caYvLPVlhGWSqKOMxpyY78r1ot2Qc5JIjCP2PArA=;
	h=To:Subject:From:Date:From;
	b=DLA8ZaZG5gtTDTps9iTuFDDGPT4mdtpJ/BVZCxbkB66wFUilTpMRDIQ6TgIe/QVRi
	 Pcld2BqGvTelmCRuJqkQJyRnQ8oMKrxpz6dMQ5S35IWg/z3/dK0BSpNN6JvYNTkU+2
	 KGiYoprwY1QzWpU3WiBE99D8ObXB/rb2R0T5TOneyq1ZGJDZFdH9e3SqJT7XGYCrXJ
	 tQJsf/XJuY8LphUawmlMSk5nFNTvNRVI0FPRJgiXDZPliSCFgS9HbaafT+eAeBSEOU
	 hM0j5qwwB0+6kRlgf6KhWvx61F2PHHMdHjR+lSqYuxvcgawGp5QHZH6UYY3t+qG0mA
	 bHr0OWSH2Psng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF8CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176219699358.9554.4871367863354004220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfa5cd7bcd16e608f195d33207f668ab370f744ebf966ecd9672d572d140692f
Date: Mon, 03 Nov 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762196993
