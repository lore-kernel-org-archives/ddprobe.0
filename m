Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A56202C3A
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741963135; cv=none; b=sSpbI5yuRJS/V7LBJuz1RkBsWDOC7DnCyEcPjBtPLk7cOF3O9CmNCW7qv4mRjPgTGwP5U0Lnhn+Y+puGiSi9zGyrEQfuDrDAskUsg8zkF2qrtpq4GbS0wE+MQvhl7uizAwmM7HSTQtwUc0ajMpqvqkhaw56iWsHuoKtWfyQhUgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741963135; c=relaxed/simple;
	bh=3gjsdtzxtrMPqQt78RP0Q8kiKu0PnC2yYocppag4hok=;
	h=To:Subject:From:Message-Id:Date; b=KtFRvENDTDE43aKuZ4C5t3dl+atOhovgwFCMLenaJTFHZvi9AZ/UbliNvewneLRG+uowYh0fARa+VjKXv8MCR4sukMsYrzx5g4u23JD56Lv5+IsJMgW9bt3FpUsir69RGXWfJHrNfh2HLkTc9POQmCnIdj9HkhJYX3+NXBjiCR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/gKxkhF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/gKxkhF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2012C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741963133;
	bh=3gjsdtzxtrMPqQt78RP0Q8kiKu0PnC2yYocppag4hok=;
	h=To:Subject:From:Date:From;
	b=Q/gKxkhFcCFneKYK6yeesYjwiqUrvGDqHVbIZv2s6zMb89zLbyidMlQXLDYFYojIA
	 Z3goz8FxHUVEwy8WumW/MnlZ5JkP+CAK1i12wnEvHJ+GZZni/mzjWv5Soor9gkNq9Y
	 gGfUwRNHBc8Y1jrlbqWCdkv3mx6NhkmXhN0Kwl7wUxuDf7Up0zE9rubQFJGyRn3AGr
	 fWlCP69FG7lGZidD2Pgn/RzaDUHApxLx4FDI7NodphcaPPVIBkcpUStUT4bD1tOenA
	 JFG5s9PxxQarYZsMlpuWA4kAAgw3saiHsLiEYmiMHpS2lcN0g7PYeNERo3KUOxR9B/
	 BlcTNFbo/CWzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95549C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174196313360.15849.8925976439738524385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4befb33ba5013dd6b1f65fad36fa70630d89ea1f0b33f3693296e437e53fab
Date: Fri, 14 Mar 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741963133
