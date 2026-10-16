Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3AD379EF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792168234; cv=none; b=CRvOea66TBdEz4rpjDM99XSezUNhzTTCKclciw/z0F2P2aC4yseej/VVbe88X/tHzSia+TtMoyfVurrngrzF9/U65mZZgYeFmJlIlirf7ASIOLxr/tORPC3nbCbUkQLjCi0rvEj/MD0S+Y+zpjiXzE7hgOpau+VkkOlZhRM9PNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792168234; c=relaxed/simple;
	bh=oiDKn/GKKD0vSOPBjT9amsF2QsINfd3xx7CxDkDtqAg=;
	h=To:Subject:From:Message-Id:Date; b=FknJMUyEJj90UL9XPYtY3DVy0I3mLZrMMh6KBDpQAUyWQebX3/AuKSqr4EBXL9MhcoVeuca523GtxvVr6khVufoBZXPPW2mE0ms7rMEZELHCNzGC3ZFYEe+7NBfG3s9I8OaUGYtagmli3pOMlHYqsMPDUbX3WoDVv43u+mZIO3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIJ9tSRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIJ9tSRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1614C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792168233;
	bh=oiDKn/GKKD0vSOPBjT9amsF2QsINfd3xx7CxDkDtqAg=;
	h=To:Subject:From:Date:From;
	b=gIJ9tSRGiZ4dUr5sdEXY0oJ0Jm0Y/9Jm80rYCKGTk58/6TRBLt5sLqoIDCqCfdMwO
	 JRgmb4bVzYK5x/uUKKSe5Lx0ZhrWys9G8j6w33ENhYw1eEqTbarJTLoFJufKjz6rAT
	 Eqm8vf8wRQTRMQ6MMZGt3Uha6sEh1TzFTy435uiL3Y+p7iqfl6J+ZT1dtYzcHBZ/qL
	 W89MELrFWKnbNqaTz8wR+KYT5jotVB+C7/LThRFINi1A8rM/2pwm9e9fyi37pb/3tt
	 qgRX+okMNDLv8c1FYX132+BgBqKQexXwaCEnhmdWtjXKgRNryFGUhCJak5Y/ofZFRt
	 UWz1Vj60+EtIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA80FCCA46C
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216823368.22607.18143164382581319097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5771d80ca629151d7548938ff5d45338984103a4a25ae48137a5e3e5bdc9fb8c
Date: Fri, 16 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792168233
