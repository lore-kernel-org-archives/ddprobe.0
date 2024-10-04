Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBB4D512
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728007554; cv=none; b=Wh4RPeBbZWoUUa6BidLFYnLLpuZPi+iEaoLSaHTD9MhM2l1mxUjy1u9WRQtvoLmh5YJTdNnpsZCupzeMVUQMM6wzhCIdzl+CyKSwAJpBT6mmRtEh4kiVC0jXxjna09gpFEt9+VbvDrdW69GG3wZDt/Wstcf349MbbEatZ0VsNow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728007554; c=relaxed/simple;
	bh=1iVg23I6Bbsp/rSGSgjnOiff6fq/niINuZWfe1xfL2I=;
	h=To:Subject:From:Message-Id:Date; b=toAsALhkwr6hnEhJcqhMpGCJLKdVVtZ5glgluuGAx8iuq3zGoqvOVjxcsg9COo7vhabOxJ7qKjSAOI6N9jF+pmv5YWd7SpmCbcW5sDb5lF36egcPK2Yn1oxa5OZ78Yovao7WVPv5ijM+gwZl57a2Is33d+oU/1/fCYHvIQQ4nYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQ92irWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQ92irWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9998C4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728007553;
	bh=1iVg23I6Bbsp/rSGSgjnOiff6fq/niINuZWfe1xfL2I=;
	h=To:Subject:From:Date:From;
	b=dQ92irWG4mbbL04R5hULqb/jjeVNRqh7fplWP6Ql4vtJUDdehK3x6dGVeo97w6bWP
	 oG4UaBUJ9eRRij7iTDZXf9ZVHL/yKjI0UxpxaemvMIwc2JObjYQdtZ/nVVtaFPsKge
	 28Hr3Y69LBm8o0+WhK5F2XkBXP3RyqwD6XA9sjHD0JJHUn6xGqdG99tccnia+vgvhm
	 O5OvEfnBtaJdXs+AbJpCfiBWGiQDkqqupiUvHqQlTCq+YqXmtPjhps+KFCRUOdOcAz
	 W+t1ZbXcqzRuAvR3oxuPEtQeAoJx+FlnaY2ePef7pnNLR0Mo0c3oDy0dlE0vWHFCD7
	 7djZJyaRII7+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A994FCF34DC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800755364.32031.3341862852688766598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79b6f5a2a1eaf3241d0006eff0e7b797d3113fed08393b0ddf530ad50b85486
Date: Fri, 04 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728007553
