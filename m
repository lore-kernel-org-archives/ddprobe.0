Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FDE1D5146
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753570794; cv=none; b=c1YHyXyfs8JHqVJH+y6A3o4DEL9WnBwrdONAehzviaTInLXvKfwoVcNYWauoH32Gn+inTV+7AmJSFHYw7ZKdEAsHRjicLCCIhG0K3h6floz3K0vtBtZyQ9SOxC9UsmIxh+2JWCAd32XPC1L1J3znA17bHbVBDPPVaYZHmgdrjCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753570794; c=relaxed/simple;
	bh=oYGG0oNQWFvzvfcvAgbBU1rOvy9UosWnKZdvFsV7XBY=;
	h=To:Subject:From:Message-Id:Date; b=Y2VORNtNC0kNrvOQywd/g4ZIiCzD+uYliROyDTSp3UgwFXlzvSkw1pin7X3Oe51YY9ErLaVRd/e2l0BAPHzxwm8TU1pHz6Gbu9gIE2VTlIHiS/BRmhmLMd1DcQBrukbSJ6clBfgAh2ev1LTNeHj180ETskvCFAZDwQB7T3vVnII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijKnWqz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijKnWqz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D43C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753570793;
	bh=oYGG0oNQWFvzvfcvAgbBU1rOvy9UosWnKZdvFsV7XBY=;
	h=To:Subject:From:Date:From;
	b=ijKnWqz1mwIxqkasjD40IG9NKWoes1Yh/nP8nh1bMvViN2WrJ/0pnoTf0JiPiZHTI
	 5QlxkLN7uUz9DX9lW0m8k/t6yRLHi+zPPeFrzjLTWzFXnnKCSp6rA9RSKilwuH7tNp
	 MJ7+vzrpeHu+0ZthB3UFt/lBIoQAQ7ZpG1vRtPWEFd7xAItDTiMZS/JmIx1olfwoi7
	 OozyAovCo56+d6fZPN+7Nf4S98zUFdSndvR7MNwcp0uGCzgu/E2lifs+cXJ5TRWz9i
	 SzyH6eAtsmY+r9zoFpB0qkf0+USYX1abgrT1iqQyG8f6fPqNFU0nzmxz1tWCDa3W0q
	 uFjAsy+NpJYog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9555BC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357079359.25682.17286125396282848927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e8c591af913eccb94c551f17920c5bd96b2f6fe299c56a88f3763ed214d4797
Date: Sat, 26 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753570793
