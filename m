Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B894B04B0
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786209634; cv=none; b=fnMFn5M6/6OqFKF1qVdQbDkZchQFGYy586MlsNpqJ3pY8jPdF0StgQBVDca2oiWu/LlTWq4kP+NfLEsd7Z9qphj5kcwtvoKx9TJMUdFgXU15rF69W/GS8J27Ucn69xmtJD33DfRSmogB+4Qy4CvbXoZEKE2lzKj13yyx7ycarz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786209634; c=relaxed/simple;
	bh=EllwwykGqP/w1JFbFU/1eilkENVqILShUH1E53KFRUk=;
	h=To:Subject:From:Message-Id:Date; b=eW2+qLZRMfgc6manRZbcbTokfqspefL64sxE1H17h5cNiUdAcMMg10KmK65f79nLNbWRF5NMduWcFy8qhg+E40l/5hg1EGiUfuQ0JrzKyRG8ByeaGPkeCj9ctclaZ951tiF6AHTwJagQqpwADOqGvh4EZhtW9XRWDrLemfnzpMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNAF6gl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNAF6gl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA5CBC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786209634;
	bh=EllwwykGqP/w1JFbFU/1eilkENVqILShUH1E53KFRUk=;
	h=To:Subject:From:Date:From;
	b=hNAF6gl7Dv+ZBCeCG0ti9gt7GqK5H6VtBL2moPIxfuJTYcNSDg5BDKmP8nE+PIOmg
	 4lxhZuzLH8GTXK6uIBWxJwL73bwBeTYkAvTTSHgoewjrNQNGcBLZR1yYuqxNbR0KFv
	 wET6Z0UtY86vKrh/EcCEiH2+ZzGIrwphkGuV7BRjqA6xCJivR39fWocFYxGCv5iiIh
	 bPdWUorm3lgzWy9DtRSJo7ANwxorWX5UPA0+cZur04qsbxHQYyW7pMz4SIpQd4hnXV
	 yyYLoKPOlzth3vfJu9HUrY5Ff7OmfL45/iFgU2HCJIqHQ/YFdYGtL3tzf7YRNADUc2
	 JLviEcJrsZwsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3578C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620963375.20835.5415141449079811322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379e92cb2c03047e4114d49a0aa672547c89f08e310e9c34cb40f1fdbbd08828
Date: Sat, 08 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786209633
