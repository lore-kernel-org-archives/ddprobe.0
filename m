Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B1614AD20
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729712754; cv=none; b=u+1BeODBeUzChd9KN/qdbhrbWDqi3tyxKCRp8gu7d+cjmBgTYPH4N+fWL1GVCE8sHL4f1zZBR79FW4Fz8YHFNXqbn5IKQGOp4dLwBhpbb1hRwrS8+1uRE0E7Z3jvopKgNXOgaxFeIn76UQjzTSiblujulzSEsbaOtTuuQEfmcvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729712754; c=relaxed/simple;
	bh=/s+VUSzi5lfYACD4gHXmyRt1Ll25CypcA+GJ9FIersM=;
	h=To:Subject:From:Message-Id:Date; b=PRi7vhWeKxPt6+G8pRBA5gLMwpQh4nKw3LGOYFjfQVHZBB1SRwDOoxI13xhKWEidkY+8PZC/Nx1nnn7MJT3rCPsPbjlqVEA+3c2Rww4zaHlomHfJb7vjPLnhV1f9x9+rgawyyRlDGNHoahv8if1kTONJ+o3/XI0JFiag3coofBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZI2YbQtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZI2YbQtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EBFC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729712753;
	bh=/s+VUSzi5lfYACD4gHXmyRt1Ll25CypcA+GJ9FIersM=;
	h=To:Subject:From:Date:From;
	b=ZI2YbQtIgSEmk5HWTH2GkqadaR+3F/kCP0SNEbcBieGrrFN1jJkWvOUv8uqtJzUv6
	 hEK9SPjoubm1ZjWX72eibvi1yr05V+nRTEw/xIuFwNyHZ3gEw91ooPRKnutCrbEy4s
	 8sdN2x11ITCmC9QcoTKXj4aWa0AGi/2ObGXZj0aFzdup2cgz9rr4MDwKcI7XwYaTdJ
	 DrYgRorv6AjHC17OxVsyNh3OxAnCTmjoY6eGJ6QTNkkGqEUNQVEdNkbjknjNzd4O1W
	 vMTxum4sCqfgoQ7oL1AfEXwhXNQpsxbEKKXpxMR9daSyuHf9m45m4SZyI+9Jh9COrW
	 8+jqoxY3wxkXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02D1CFA462
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172971275364.24317.12233103280351116366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba55e00676b25c2db58a0dce35ff72f1704556754a0ad996e19483fe55b6ca8
Date: Wed, 23 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729712753
