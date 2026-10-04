Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D182773F7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791157834; cv=none; b=FifBiQ3L77saOg+T0Wu94XMkSToRa3JSO18ZYXZNNBywIstqrPFyvTqnlsXLOc1dw9CdWlaNANsu+3iDzy4NN9V45ViZyPdpQZhvmqejS/2zPvR4Gzl+Ljx+KxKFOTVyeyuhYuszrBIQjFi8ujGjf3RbWt7jFBsVlJGPtTdOPxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791157834; c=relaxed/simple;
	bh=78lOhglnjZYq5KwgUSthMNJVAK/o2fEXzNnBiuKY3Jw=;
	h=To:Subject:From:Message-Id:Date; b=oiGXCT81Bl/RSYmVbHk2SJWgE89j4DCLtfw9Sz2NC4l/fNqkIzraIXLSlpH72zKrWLzPgJSMYKsmT3dtKUtJUxGdlyCa4A6pzF2GyGNej9glKrwjpB6SURvixczjez96QaFebRBjZ2Pf4q7xnKhPCWqD7emE1gav7qutEzMQqBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjlFYCYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjlFYCYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4779C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791157833;
	bh=78lOhglnjZYq5KwgUSthMNJVAK/o2fEXzNnBiuKY3Jw=;
	h=To:Subject:From:Date:From;
	b=LjlFYCYm7nodTMxdNgJilBRSTIwHTgonc0q8SJdSCvQXYv1L+6EeCu1/nwoiGYDvJ
	 iq61KpjB0qYh/NDq2MnsetFdTNauTT6Zpo0G9Y1kuFqwCDSH85kPMnprqj8wMXoOMX
	 +W8JDRt90Dmwc7ZlaG29AopZ/LfzZJnGxvaMgJGvggsev+GQ8fESMk0+A/2ogLm9br
	 HN8akGeYpGOKHHZfirXIqIxq9qjpKcRixHvJSkzlHJxqXNL9EWs8ch139kYkIhC3Y2
	 dcmLQlPhV1GEQ019i9qaPr4Wg877A3FrfPtVHgaqo9knmRcW1bVIseaEMUf32/5f+9
	 UygCXFirw3iBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD6ACA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115783368.18535.13390790220882370082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407ad6d940bb5e91b68c9092bf7534289b5426579a3bdfb22670901b0dc84c61
Date: Sun, 04 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791157833
