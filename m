Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4454C38947F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777796854; cv=none; b=Qux3YA9qWcyiT/w0Mc6eCuZrBrVZB7LSuC2XpLQ6UBh/fkZzGoKej7kOV2d6aImJq49VAev3v51u64rZqhcLdGBGZDZLSZG0TlWN5q65DM0RrmQKbuwilSxttG2I+hC6TVTOhvNSBV+YTHKeypd/ixZIXEGZVEVTeFmRO/i5NN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777796854; c=relaxed/simple;
	bh=E8IlUhtczd9y6WqYzCu4LSoZsOBF/JU2N/4vGha0OMg=;
	h=To:Subject:From:Message-Id:Date; b=BQ4H3zTHqIBrbiO6qz470XKyuXjsrir+oqr1HF/9OeY5LYL+UQgGsNU6ifNJAIqrvyiZboYo89BasxNSlNhyhGiBVrC/dL2Ooy+vz59rdvHIg+Xi+K+wFpYYYWtfIZWH7Q+8OuygCDygYBaw8KQiTdWr9VJ9QG4cxOj84KlqG4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQS2M0LY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQS2M0LY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2154C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777796853;
	bh=E8IlUhtczd9y6WqYzCu4LSoZsOBF/JU2N/4vGha0OMg=;
	h=To:Subject:From:Date:From;
	b=TQS2M0LY0rH6vNM+GoG0zOSzBI91gUF5KxqrKgsKEDXp8DLPV19VVq0xOold8CFKg
	 y5Q7pHc8OffWw2PU0Es8DFgjes0jmRFop5JN64zLi6jlHMXtU6HYA6SUeT6rjBhHWC
	 Eqi8o+V9uyDaIfq1/fI4nofe1e9AJtO7UZFL2CI6B+xmnjGHPTki8plpn6GMk8x7GD
	 3hhUoE85FV8RML+/TCl+6ziohV+jPEQmuu17REHliDs51oSKwAKYRydesOPfRpOZBq
	 FtipS9T41DY3HvjfW7Y2m0LfOjZ7eLJEStYHk7zyNT2QOSNLWAn/qrj1mqgpdFBkmd
	 X1tg2R2KhpM8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF4CFF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779685368.30325.1556177985720628217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a54e4c3d1aa64f71f720d613399ea8054a5b95f228437e691569df57e5efb17
Date: Sun, 03 May 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777796853
