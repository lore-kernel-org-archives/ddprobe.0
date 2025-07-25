Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F7E1428E7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753405194; cv=none; b=P4u68FK1AJ/gGSCLoueIUazxH290kvzer9KpZ7O4Uh6Bd0l2AxXjB1tIRwhJ9dlr9N6ps8cEAhKIWSfJUGw9ZjIfxoRk9KYollizr4MDb1JxOIq17FM+rmby6IPax0VUo1jK2LyuLVohqGM3WwqUEgABBtSTfNPjUcEsoZEYOuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753405194; c=relaxed/simple;
	bh=8HpeukUsaLwW7qKsucDvbC39w3XbKRn6p6+YAe4Hl6M=;
	h=To:Subject:From:Message-Id:Date; b=aV5xmXUZtoe9kHYi0pNsxXcwWyhtgvr+1KEgFtY913gAzHrgKmosnvn5hzQE/tdeXq+K4u+LPO4/ccJbEj89dNa7LTIn3r+d3/kXp6skj3A9Fh2l3dJVlJ5MxPdDGJo6bCGW19a5P/ARfu5qP6iFkL/Tnww9ghjKH3gugeGLyz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHGEwKLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHGEwKLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F7D5C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753405193;
	bh=8HpeukUsaLwW7qKsucDvbC39w3XbKRn6p6+YAe4Hl6M=;
	h=To:Subject:From:Date:From;
	b=hHGEwKLRW9+Zfdw0/RcWGik4hW5iqw5SGsCAMNuTrpdiW3dcQaBv8xm0gCvC3HBzb
	 5IFUcRPt0eRKrrqa/Vg7sLjcwOo1uQRI7ttYHXWKVz6ZzYvvqkW8C+NuL77FSG0cIZ
	 qmPL44uJ+y2QNXV83yh+Faz54fKJ3sMTXprbh34xB0P0QySlK8hdRU40ClyLnBOkxA
	 UWKG57+NthtRLEqtXuF4O5PzdhI58uDZ8VlZkHCtAw/4WAAngznPs+0VvCja6//M1E
	 Kly8Du+W99NfkelQQq7PJkyIBhcMjgh5L552u0sHjUKGnFfdwjC+6N4io9GhkWWUfV
	 HaIysk6lNJOXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90013C87FCC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340519358.10624.3877654665840150485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10072becb2f46d04ac607abbc498f290e0bbb2cab99e39be2e0ebce1d5fdfdbc
Date: Fri, 25 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753405193
