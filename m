Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EFE2FD7C4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755116994; cv=none; b=lmh8vSshSCwkLU/JldocQmX7S9y5QuiWvSH9yMnsWr3voKD34R4wcRZbexx19wmTVzOtXnpz0XyQaSlpX2FWaNfDQULJO4vRiaFnydzCwxaUtdh7neN5LD3N3kIIU7IeLZPguL7ZthCnUNtYi4WiQZ4B32VFxUYP9x7InruHrBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755116994; c=relaxed/simple;
	bh=3asoY5HvZlC0QS+rTgiRbkr06yzfGICUAejTPhVeH8c=;
	h=To:Subject:From:Message-Id:Date; b=CyXHJAU8DBF3GqhJ+Qeomy03b8Yb26fXVx9btOnzohLdRMhrStTQl742aD6r3ie53/TBcYhyPC32ql2tRVOfFGreOjTZM5vCFTwI6V2MTpe7/rsj3F3SmTxZQHovvoSQ+XtGUINsWyfiBCVsLYuwtDUyk2lYPEpPsFSRJvA6Lv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6wtG6lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6wtG6lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1700C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755116993;
	bh=3asoY5HvZlC0QS+rTgiRbkr06yzfGICUAejTPhVeH8c=;
	h=To:Subject:From:Date:From;
	b=l6wtG6ljnGuQP0z0tPbknWwpeK4T+geEZQGlvvLGYVsJMsm7zN/bb52xXjW+AVRXV
	 iko/oVlVBlJZQOVRnRxeOCr0AKZoCFTeZ7/LzIxlXotPoB7+KlRpM66Kf2JGFQ7WMF
	 Hp3sv7v0HEQeeNH/lNVWtowZC/cF/ltqprrJCvQBAl0JjSB4ZMWvI3wZJQ0UrJd/ft
	 CdhU1yT9s7AY0MWRXtwq7nUnyn2mvXB7qp/8Q0TOxLvV7q+vL7auasvdGmN/MbRf2I
	 t/edFUXq8HYDKnUtUYyEb/Nn9xJb0qdb3xeosGD9YAtzEEQ63t6FMQ0o9PYd47uwqE
	 kraImrgwEHCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901FFCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175511699358.14076.9200691019970884602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557e234ebe8569ec99ea002966ddbfe81b90718dfeb9b214eeb38a2a6ecd1554
Date: Wed, 13 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755116993
