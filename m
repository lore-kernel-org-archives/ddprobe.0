Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF76134BF
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715941943; cv=none; b=saO7VQxoV3vqkN2vNsiXCdkpvjIOHeRQ4YAaU1nb4+BmALxd29/NCjDD2oztUtptyaJY5r0yaUJd3WmODMhUQkJ6w4VE7QaWNu+JEHCksriUDAXXxMWcCh6B+4itYt3Zcx+an0bNhnz91qhsejSYDrpOK7+rnN+S5woG2RfEUV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715941943; c=relaxed/simple;
	bh=Rk41nj8CP02vrm76Do3WZ/m3C6A4zM1W9yMn2ciAk1k=;
	h=To:Subject:From:Message-Id:Date; b=LZefb/gBWLHAhWpFAH23r73WUAABKjDNi7pS7r4t1dHocOKi8yy1kG/rehfE3x+N7meBluGzqBbOvwpYIljR26vIIabzrmgYr9M+gHE4NG9nq5tFmE81OJaxDOU+nDDMvIk7IaEC0ildKT2UdxVbLb4dyYvvOXOhnUS1nlFc9SY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SINowiHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SINowiHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9864C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715941942;
	bh=Rk41nj8CP02vrm76Do3WZ/m3C6A4zM1W9yMn2ciAk1k=;
	h=To:Subject:From:Date:From;
	b=SINowiHHLXIuAxGz6xbmmJo25tHc5j4lweJBzYkF+NR+jGfSuzjLEeLoh+z67SYjo
	 1J6pFN9+hYa2FsFncPjc2d6StlzLM2URe5fREtmPP5tb/aiWlbI5mbjtjxheCdmB0D
	 c1u4Yw97hgF1fcs0KSfrie2moOJBaL172SEZGWdmHgyn9PiCx0QEa9PV48PQ7IMIKI
	 euDcDYajq9UFOOgzOts1qTIM9XNe+TtpdRW1b5QaFDQWW2E8zb/D6gFNBrSMssFfAW
	 xmjCEOduinkO1xQrBZe02g4dQjrpqOcAYxqFHmdKBUaVK5+q5tlzkh8VBLh5Gru/u6
	 P02KttSbSovlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AF7C25B78
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171594194279.31089.4573524474259452393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f58d7627498356f9ea9efdc077aeb44120072750edfc9cc2e5187118bbc9ce4
Date: Fri, 17 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715941942
