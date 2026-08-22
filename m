Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550AC3CF02D
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787420434; cv=none; b=oO40Bcn6ZFBW887QYVOxfchoft7zJspI4VqWoJvrL0heGAaPBp0+03oopj9hJURpA9fKSCYQ7A3VfDS7aiw4wgZRqvQUhDgPZ4tV8QNewzwFUJQaSw+3+lKKKdHeiwElVWVgYbOiqN9xzFx1qeTshUOFDPV/BJyqyyL6Dwi+s+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787420434; c=relaxed/simple;
	bh=lHWwKdnjq/ctuiH30GGoM9p4x3P0/DfcdCQVBGgROGg=;
	h=To:Subject:From:Message-Id:Date; b=pkHZQWGVefI1gYIXUv5YM9KsxHgIkFOkWwdfLk+aSt2ZPYKJVjAZChEpj6yM+ZBCjuBWTPtU+DbeaIz92tQusCcKUW9kofXxnQ0dAV3wwrqRDyM5ioSBXfn78oziJPPnZLeqLBkiY2m/wUV8XO9Py2EZxhb8AaIRXXjLaG7zsJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V30748Ln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V30748Ln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52C8C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787420433;
	bh=lHWwKdnjq/ctuiH30GGoM9p4x3P0/DfcdCQVBGgROGg=;
	h=To:Subject:From:Date:From;
	b=V30748LnEvieB0FhsB+59kqLLRBeizb+HK7ddQK4lRc/dImEPe7allVzTX6gomukL
	 sNcwYaLhgMc7WIg8k5+bVdN5f98doP1y+Av+gpMiRYQEljXtAtHgSpoSiQQYbO03/j
	 JcpAPogF5kHOA86zZPxkaOkJF38EDp/brnhr2WBAGRJyE5Tm4H89TbDCtmUoZAvg/6
	 mkXNr6O2VkVTEX/WppysMdXXRw4Q5akgA/fZj/X7pj72RYd794+ShYiUtpw/4yq2Qe
	 o2zjZk3n/uMORos3emIFrNiWfUzJfc3ntd6YDOzLcobWiQfIfHg1VBrw4kTAyxzwiO
	 jDElf734J8yLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19FCC5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742043368.20136.9190826257598586490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3305e0a0659cf3a4e1d64432dbfba95d9dd9d185403a4f328c835181ace0ac
Date: Sat, 22 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787420433
