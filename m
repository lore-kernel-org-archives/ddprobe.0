Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1424823A98E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771187694; cv=none; b=AUqsBEo7FZygb9J4rKGkBhspcvHhtuXfMBM41MMjHSPCFg8NcAA/OPwU74kaMIt+RKwJ4pHZFaaEtIDtCLCc1cc0ON1dDAQo9PMyNK9N23+LMZ9wECcz3qWGSffF57RkmQtkuSqNz6GHSOjiyXInBlUIrur3iVq1JHUPaCeG8MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771187694; c=relaxed/simple;
	bh=puG1PxQfqAQHc45a5DJuxPxMPRKoU/KiXhvktxNgYfI=;
	h=To:Subject:From:Message-Id:Date; b=rtNnO/e+ktorOGU7x52dE1VafvEhsRmKpgfDbJuccUQSx26rRNwZC8pNM2PZKua3D0vkP1KBkBLlwVpd4XCd2j7VeR21GkXg+X/HqqfX9lCh8207YNIePWtlo0qSQD373rqiraxv/zXIeJ9XpLJ0jFXNWIRkbqrmgziFGhEN9fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8SYNTkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8SYNTkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F36C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771187693;
	bh=puG1PxQfqAQHc45a5DJuxPxMPRKoU/KiXhvktxNgYfI=;
	h=To:Subject:From:Date:From;
	b=P8SYNTkzxNKGFgWGjiasDjYmVumqBy/mf1xWVdEWjlyeD0B/Y//LBW+kepeO8xdQq
	 vciKydvJUQmxOlTfQOw+wHZJZspIu2K93a+elD/kFemZtvO7mMoSYVCj7uWJq4FX4a
	 g/HL56Eh3zfS0MIdPXgQmMt376RTPW3bmZL25XeZkK4fOZ8WB2rdeHz2t3SS99HdGS
	 tpZZ2iKO0Z2cLcXRrIQPOnxeo06wRgYFILvHaFBqYBk3yUkjGkmXAt7tePZIxplDoy
	 8o59E4LKZAjr9lrIXdw7z1WrBcopNDztgs4DJ7YNJurW/XF1M0px1hqyGDDUm9UfvU
	 Cp5Yzf794MQzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD8E63F14
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118769358.32155.6501931580612213012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4272ff5ab5d548eef4ab778fe691024e4da6589d0106343206a9d3bc97f28af
Date: Sun, 15 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771187693
