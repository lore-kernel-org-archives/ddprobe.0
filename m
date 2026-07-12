Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4851B145B11
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783874914; cv=none; b=Sup9EMVZ21g2ibzM4ywbhSWdH12vaoX1kTHJ8FdbUG/BgiyTcABoc+fieg+cA+I3AGLNYi+GjFB6DTwSNrviZJqrMrgnidtnCc2nEQGpOEVEezXAiZ4f7wNMV+xruKG5V8A23h6261QSnshPbzJdTXR28GQaI5U/zDNFQA8ReZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783874914; c=relaxed/simple;
	bh=5jUZuvL7BLjH/eTU6FflUjnBWr4F1gdUGsQL9+ZstMk=;
	h=To:Subject:From:Message-Id:Date; b=tPUHKqqKRBT8DXRrTMTpblbqBXzet7LiFPAPErtLe0/1r2er7HL3H5mycYRP6474iC3PPEr40Dwylk/XvHag2yXd1zScrhwF+6WFYwosX8wtFqpXcJh83HJYYL9WtmOmRqRevMvPViLplHelNzSCFj1eLcqxARUPjx6ca4A+3gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUGmI3rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUGmI3rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D63C5C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783874913;
	bh=5jUZuvL7BLjH/eTU6FflUjnBWr4F1gdUGsQL9+ZstMk=;
	h=To:Subject:From:Date:From;
	b=CUGmI3rJyezg4BXDsUCrihTQIATwHCSJTgHX151MSY4DMCr4mlu1kCy3izVC7zUIQ
	 riZW86WjXc7tuNfU4FNAb3W0k1zbjFuxurqeqb1gLLv3INaR0Jbtjd5jaIIrCf5G2F
	 uzGxtkkLphZAwbmrPzr9QbnEZFDhZM9svKu3ybC4BrpgqyydrzKxlaMh0WTOtBJDiO
	 DcaFCjCHD2BSml34+/okp9fnmaFvJ0MUqlrweW7lm/DFHEljcqMp8oryzKdvQ0WFgn
	 zPiweeTVnqjt3E0fY4+334svyhbU8ZWbY+UnxIt51Y2yKkdlhNTe1XW9c/TQW3tV9n
	 bCiZFZkVo0fSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD562C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387491368.13022.2282642449442008433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d29a0a5dd59ae4c61022e6a50684365f08ee8e31689b1de972aad1fb4fad563
Date: Sun, 12 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783874913
