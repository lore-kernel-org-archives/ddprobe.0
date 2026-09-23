Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703E4318BB3
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790144434; cv=none; b=QiS6VAlIO5pMwN7vkJWe7yU7Ona9OccFDhz++fkEgPbcC57h7SpIJxEM31mZ3iPUp5FiBTDE2gjNEmR6/suzuTki4GnMTIQjRPzD0fFmnJT7uULSCTTTgCEIFbruWh9L4ctqPJlqpa0yppDH3OWHqptk2SXW7OdJbQOCHzK/L2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790144434; c=relaxed/simple;
	bh=TY2AWcwE52PQpJVWXu5x8Dnjbp1mQTMrqQUNIbL7FOc=;
	h=To:Subject:From:Message-Id:Date; b=fVDaR+NxSDlkxRokVeY1TD4XbdieE+LXE/0hkekx8D8e8NnM23iDN4cSPE77HSFgsAT1KAVqxTf2k4G8VqsJqTadpLQ1FuufYp9RevuHDUl0upz3/9H2pHir/XwYMCcU5tuy3JZY5Dz3EUbt5jmpC0ph71ODc8b87ZxiER7h8v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWn5Rb1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWn5Rb1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DA3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790144433;
	bh=TY2AWcwE52PQpJVWXu5x8Dnjbp1mQTMrqQUNIbL7FOc=;
	h=To:Subject:From:Date:From;
	b=uWn5Rb1+fj/jfOaM0Q5Nr+mkrccNH2t+VtYlSVI44EXBK+9aBj62dTyHYGaQICX8Z
	 02RP4nJnZ3o/G4suwU8SHKuSvQy9Yc+aRSe0Rmymn9YpzfMvk0j550Vyl2OPnx/I6r
	 Lbf4rnELHXdq1jGaWOIx3/eNke3QfNyKaUKjhYL3tHeDI4qVkiXrXp4GKi3my8QpTg
	 LUwJIo2pvJ26AtKUj9CKHsRtyTJ1lJoD1ni/Vrcf7vCa9gkxq3W23WL3ePdN7hGEEt
	 +7nM1A6SS7uZxFAjukQx/tmKjYgUAcVoeo6ZHe8FgMV3Ya2MwjSBfhJRcCK0EaRNkY
	 otLAnPUxJV0rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA25C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014443376.10174.14447985184908102053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134e527015c72e091990baf270f63267d688935a702d7f81054c8ae53e435a5d
Date: Wed, 23 Sep 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790144433
