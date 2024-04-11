Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6900E3FE54
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712878163; cv=none; b=p3cmy0mFDM/UWaSRi4l+2sBbDED4yJrH/jzyXJ7YGt3YXjEwoLQsglHkGG2PJacUDb6X0N0QAAOpYxdgGLEHcqFbjWcMs4VC12W6VJrl7fmzBQtMGGsazc91IHTLexoT89zSV1B3400sOOyQ3rHgd0InwhFmPI6D1mIdBCgoKGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712878163; c=relaxed/simple;
	bh=E0Azp2Nxa0SnUweSiptLSabEVRL/0sekMz9c/KKzMNc=;
	h=To:Subject:From:Message-Id:Date; b=OSuREqe5uo7LuBWmU9DXxmoYLSKhxtW7qyLFKkE3CGae+BpMn/p4YyfGU1zSkFK0yOUUiFfS2TAHX3jvENdCfCt2nehCsSdISDC7mUD/RdaTBfOj8qt0IpKlxYBZNLniExPDo4TOP9u0CyvuC5cQmLMTlGCEqDQT+l5IzrFxXAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXS10ab3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXS10ab3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89B9C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712878162;
	bh=E0Azp2Nxa0SnUweSiptLSabEVRL/0sekMz9c/KKzMNc=;
	h=To:Subject:From:Date:From;
	b=cXS10ab3xWsG9H8BiwyxSnkC9ru1xAj0ePgTbqJI/N2lDscjyFoadKCC5aJluDd4i
	 vSW03uQrNwmAtwqKVyVg+XfBw13zafoqiPIf5NT5hPZ3kppjpxQxJYmsFE+BFX53MU
	 ARlBK19ZBA2CbOuj1f7XFWfluXeT6eTp2AvC7p+LT09JDsrMTqqpWYayRSDxM/7ZJX
	 HR3ZJyBKHiIHvLJ6QTROHgRCzv5hsraNmRsY0VmCXZp9Y111L4NR7/0k3jDTz3id0d
	 85Fc0iLP+WwjLpkLIyvPREXIamFGTDecN3/3ZNOeM1v4h+nHPlyywNHjwXj3ZKaZAu
	 9gG1FXB5hTS7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3FCC4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171287816276.18681.246749226961569829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb943fec2a5ce369020bd08cdc8bfb3331f74aa83f65647b126135346f8ff5f9
Date: Thu, 11 Apr 2024 23:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712878162
