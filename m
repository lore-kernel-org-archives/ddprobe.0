Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F8033F399
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766072634; cv=none; b=X77iEb58Najzfj5Bmaa+obeouDFiaT/mG0NlkyJTr1emcGvhMOS6nhHG57nfHtN52u0BVOnBD6iwEDM9gIEc7sOTf2zH5XRJ5PeoMzFuu9zMk1iPgieimRh9X2w/zLpoLVlYbRmkP8KLFaAIR6Yr9DR9s1LmNa7q2sHmxAs5A3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766072634; c=relaxed/simple;
	bh=5wYKrkIXM8dLt1B03hZMvK+57fSu4W0Bx18AwawERgI=;
	h=To:Subject:From:Message-Id:Date; b=lLzFMTICQgiueL7c/kEW2MiDqv1v+Drmct9uHP8uwrt8ItdltRSNxrw5V5be3TSQpxp9YU1jYd+SOV9SssciznhsVEqlolgHIwUjNjTPGZ2SY0DwyyShEkGc+27J5fDsdBGxAqhNiqVKd44RasOYfBwirlodn/YBb215K79JyyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp85Z2wk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp85Z2wk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F381C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766072633;
	bh=5wYKrkIXM8dLt1B03hZMvK+57fSu4W0Bx18AwawERgI=;
	h=To:Subject:From:Date:From;
	b=hp85Z2wkyzaZBZIWf4gVBJm85a5TgbK2jrjvXrENlU8EVGo35lcEb8MXZBIjVHPPJ
	 jBV+aFiNKx2HbFnCgY9eBr8bw6jr1m/r4FrVQsbUZEw1wUU0JTOXOF4vIbumcs5Bmx
	 6VB78Ohcnk1muByGTRChmtSnx7dulhuyuZvr/X5NwFROLqDoxLO5Fz/39p/EzmnM3K
	 kIyhx4sUd/1Mq72scACxytN1I3BkwKfDa9Kqdin945TaWsJcGgycdPzNHrv1qGsGEK
	 sWGdM7EEnkBxn4OJNXT0EuWcmL7z9alZqnKIVm2xIs90E9xKGYoRpF0Lqzg7nnDyEg
	 zwzZSuBb/E/fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918A6D6E2AC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607263358.12908.13066350847750543716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb3c337cd900ca2934a3a3a00d4056e90a6b88ef5a76e8fd8fa101e1f9c665b
Date: Thu, 18 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766072633
