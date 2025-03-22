Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CAD18A6C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742685594; cv=none; b=THRapHsVrJ9Oz385SeeJc6pl02yXv/pOsw9Q3kzZTyp+64QKuiM5pJRNmdVzJIR1whNzNhb0Ilb+vLT96ICh/bHsLLZjjUdb3JyGUsTOl9m/wDBerQ3RTvCvGphtffBLiSjuT27bNediEM1nm+OJgY9cWYE6pzEED7/X//rKodw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742685594; c=relaxed/simple;
	bh=gBBY9dqOG3dZ41KUoP1mRhtCW2twRR9D/HaLs+1nk7M=;
	h=To:Subject:From:Message-Id:Date; b=g06Q2uwRYNB5TElIYBMY/d9QqtqCvxH4bZv7ufeAXcb97+GQrvZ4cKRcK983W+PurF9U4KI05VHdsMp70ECb6v7+0YFu5yNiraWex1+J4cXr+INnOh1QjFRaAFR03XMxDSWE6IbYuwwUKWHzqkyUY2BGI1Gm6zWdyA6wkAlAkM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr9d+ofA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr9d+ofA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB59DC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742685593;
	bh=gBBY9dqOG3dZ41KUoP1mRhtCW2twRR9D/HaLs+1nk7M=;
	h=To:Subject:From:Date:From;
	b=Fr9d+ofAZXIewkUcXbBa9f3sz5lSeLZvhJnhRdk1XYclj4OzmLzl/uw1a0RZTOylw
	 9y1xXsEK2z8LStozbj/ciZs+aWsUdI9GDksW6tDZI1F3fegr+3XjCeGqCDDYfCfoAS
	 Wu05QxkkyZzLSlNmnfaxQx+o3ayFUGuUT91R+Z3rxReJPSCQ6rxWF8Y3zPUpyBotXA
	 rZonS7SGAu1m8mmuN0Jtws9byAL8JZe+LucthD1LrNwJavRpxJF+YVWNzm9o0FqsFk
	 3FtqtWAG3LGY2XNcexfieIr4u3jPmytV9IyuiWlNFYAciaVKAyxsLgJrOnSpIL+Tum
	 Xc4ybOAY5RVVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94691C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174268559358.1102.4719700298811277169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68bf0a23b4cfc4a66286f3ea36252aedd4c90fd5437a119f3a5e31dfd127bf4a
Date: Sat, 22 Mar 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742685593
