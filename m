Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BAF75335B7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788954034; cv=none; b=kvsyKAU8ftvP8GqIchYFyuBfQAiKkFjE+Q4WXhFstMGFr7U1ybijMm8jkBMolOWDJhYRE7T9rAc+lmetxflDvopxuwD88DsVkhMuPalUpsOZlPhDob3scV1/05FVmPMdqtwjo2NUjZpRxzeACIbCFMPDZNz1MGJnDoK6mOGVmeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788954034; c=relaxed/simple;
	bh=2JwYoAy90HDDka7ZlVNUE+AJLXwQ8KRucm4C4o1R2Lo=;
	h=To:Subject:From:Message-Id:Date; b=Ai6NBPgDcaIPfwaR9d5vofxbvZ45oYrkiPCRnwVq1rzVJ6kcegk6uHP3FNOE0ipM4bwsqxTA9c+OJxjwQjtV/lcDVI+/dZsgWjppqjum8N6XEh7AfNH6LYLIsmPXY/HCKxcgQldBfLOq0Z/1qqk3CpQHZ93VrHASCVMfkzdrvCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cw9P8Ik1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cw9P8Ik1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB487C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788954033;
	bh=2JwYoAy90HDDka7ZlVNUE+AJLXwQ8KRucm4C4o1R2Lo=;
	h=To:Subject:From:Date:From;
	b=Cw9P8Ik1tcFZDxXWnghuZEyjGkMzTjtx1MBn7BPhmMwn56V2Jrmf1ZZRr4x6YcwSv
	 sskYUUWYPB/UvUBJfsa/FgV2qtoq2tN4XB9vkR9EpUI/N3+jovdwMWFwuNYyc9BA6b
	 qd2JsicHW5KLxgL51k3ABmtYULBduu0mV2L9K+ZUOr8ZupixQJGPXs9CCEJKiCfsdb
	 rMO/BdWLgtcRu3QS8QziLmooFOYLmd2a8bYOzEpVmd+R5whKbe2mwAuFIe39xW9Veq
	 YKNkhMIeeqNt9lvc9OTOudbuoFqWzoOMNDT9Uf5PYxslW1BIkCjd4lK7O+lN/HEm5L
	 M5J137ozPPyGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5792C79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895403373.29599.6948526857777265131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a46fef2c001306ad4b512ea5a2d4b25eff5075b9b5b718cbdf3911bf53e947
Date: Wed, 09 Sep 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788954033
