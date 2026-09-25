Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3171E329E5A
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790364634; cv=none; b=K5cQ6ec8IfMyQVt/dz6qmrLYszCODPwi2XFvpDw1e4BczCHgsnfVl1Id1ZQzx47ng5x1VueO5H8w+MwhGrGxX3x2qJ/QSIXO6T90NZAnCC6+f8xez+aSiOI8babyb19qTp3RZ+dtcsER1LwtuNWr7fGbpfMGve7ykjmESacjVz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790364634; c=relaxed/simple;
	bh=a0XHxVHR1AkO7Qi2g4EBPvKTyunwBsf0Z3XFSUasBFg=;
	h=To:Subject:From:Message-Id:Date; b=Xba+bapojVOll8Gux+lgyyUNCsia6oZRxMoQzOSFl6S0Pu4qkJNELZkq7gpE+s0CpBjzVq+lhO5aOu+dHJKxQBfP8IvCRYQ63wnJ0Ino3KgmLbZjo9vDm/iv+ul5e/wlGJyQWAbMtuj4StipUAfzCVQnCyMUZWrS++bDiBsYfik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btlOvQKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btlOvQKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80C3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790364633;
	bh=a0XHxVHR1AkO7Qi2g4EBPvKTyunwBsf0Z3XFSUasBFg=;
	h=To:Subject:From:Date:From;
	b=btlOvQKFCOAFXpGZcmZ4rawxU1UFnH6bmnwVEQOp4Gb0R9QlonvHjI/X05wizy5gZ
	 pcqZeTyfvlyZ/Y5GXjgjuIo/GeulMkp7tI5q7dbmLrO9ytcyK9iZy0cnqInqgpaiQS
	 2jt7SjfULddRPOl1Vf+o4GrX57o+PXYWVPurOK5Cl/OSC9P+91V2e8eI4kCofmizjT
	 opvmPJsxfQG4HaH8jJnL7jRBuyj9yM7bpm8FJNoJlG/6cf4cOqxL2Dl+er48QF3ahc
	 Ql+dVLzdo+PNi0mksxU7pD53TBCMB3cBu+aCJdUyyKPudGUuQkyNa3MFfem52PsTwv
	 Jj5IPd61F/lqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF507C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036463370.31885.9490334512544328179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daeba8b2cedd78400e34cd7e341ea92919026fd7d38780e467fe64694a9eb485
Date: Fri, 25 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790364633
