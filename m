Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B064A18
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724900154; cv=none; b=eyD8VNOWoKt5Fo6QTOySmzkO1ncwIxsIAQy/67SsJsgn+huH2DfYimO09wldy7rW9BOLHJH08bu/LbkZEaIncBys1SFR4jhIZobHW4jWTestPk7Ep+PWnNOHZ2+xnNK4cxvgNsbEredNoTIBTGJo03K1FZpH1PcaFQD9PPAvu3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724900154; c=relaxed/simple;
	bh=6H+CEGhIQMRmi7P4z4emyzR9LIJwmZ1H4MFwlQSVz/A=;
	h=To:Subject:From:Message-Id:Date; b=RjRFiH9lNX34QHUSnnO+bczNXlBDKn95652aPfmtzvj1M0g4mTGF3yOidia0QNpX95PkNs5FzM3mFK5SnGwvaZeEFsMC/bfxKkGtlmOopL6yozVoREn7JG3VAPhVwGHGeICbhpBpXYn8bYL4rRz+MB/yz13htNipfdeXyf06VoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXEPG0gS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXEPG0gS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF64C4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724900153;
	bh=6H+CEGhIQMRmi7P4z4emyzR9LIJwmZ1H4MFwlQSVz/A=;
	h=To:Subject:From:Date:From;
	b=bXEPG0gSqde9jL69jvfXY1sWOwCuKtiTbohxlW7/fWEadOLRfehP6nWWl4muxPiwH
	 NJCTFxK6eqfq8a4aYugFJuGoqVQwGkG+PaemDvkjiUL4mgDvL1igepIrEcFd9F0eTS
	 Kmd+JPnI3rsQZCkJD5ubv8/A2FpCYdZR8KvGkwKVzXdrLGFzpkLolrej7eLZuQAff5
	 jwo3zyt2YwCM5eTTRAWo4O115A1ewgo6GFUMnHbu88E+zqCdWR88AlLyxeqCskV0QN
	 /6xheeqv3ZciKn7kLBIinftlSv0yjJ3uo9HU53G4jGbigBr11Dx5FV/3xFQfhWfaOJ
	 IVmdFNEEbrEXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7DFC7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490015363.20747.7099677309290035315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 157addfb8de9131f2446911182c54507a75297169f7d3d73aa13b4ddce9d34e6
Date: Thu, 29 Aug 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724900153
