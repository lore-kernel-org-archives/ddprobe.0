Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A72FC0A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767840234; cv=none; b=t6/CP3Jjy0To/FlL+s8fke/pjWaZEdYNmGaSNr2GR0OP/TeeNX+gxjlCiGUBC3DPmYeGPZldcUjP0JcTJaDX4N0oAggMISRIvEiXc8btS2PZYACxNc6kj9MNZGaItYd7U2IPDWywiAV+ToJb4u4BSiiq5qXDRQTI0mSy0Gt5Lm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767840234; c=relaxed/simple;
	bh=SlJeHtZE95DhEJ+lWxpVURQhSzJPANdMkDJVgLimOVY=;
	h=To:Subject:From:Message-Id:Date; b=q/iG/hAKCnnqCHHNtHPXgAiHbH/aShWl/sdWG4hUfyrMRmMpbfTSlwA7Rm5aUd3QjTa5DAG9iG9+J+eLpW/tsiLszh+701XFGufjlX+DeHpnOuE3Yr5k5xNch9oJrcf+LlOGMJeWQPbdCrF8qtpYzqz/6rGKp4Z/ZDFY1DaxY38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbwM6Phm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbwM6Phm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD92BC19422
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767840233;
	bh=SlJeHtZE95DhEJ+lWxpVURQhSzJPANdMkDJVgLimOVY=;
	h=To:Subject:From:Date:From;
	b=sbwM6PhmKHqEf6VaPLf+BmsfJmt/RQJPofy4IrJP+3ntPeJkngpArWAi1Vzo/z5xm
	 p1Ev+OIf8TtUNRCIOk+BmfiDTzZdTWEQ7q7VGoe1j5eLK6fEzYKlFGNaN1yAxF+ZIw
	 Eh78KC/7eOHEbUDuIg7hKs29wSTtSYmfKY3TjcZ7qw33p0J3U5T3OdKMwlbj/iYL96
	 Vlc3xruY+cm7gLM5bQeYF8AEdpLjDFHz3tzt/1vJ6Ujr4JXishc3tMfhMJ+ne4Kz4Q
	 yIkZWEr5oi4DLGl9flhGT2k+30hpOBBPtrCwyg6J+EAY1JlfHKxiHnS04M+kcx/7AG
	 ivux8w02UTnxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0CED14893
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784023362.32261.7517832767845769394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb0863f198eebd2bd8bcb9917c0b1ed54c110f47fd8e0916a3f2f8f0a1cb368
Date: Thu, 08 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767840233
