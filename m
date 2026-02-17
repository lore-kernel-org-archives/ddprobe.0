Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143F91C4A20
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771308294; cv=none; b=uogZsr0utggYEFTOAyvxK3bFRrz/OcoYFPeb+GA770HYer59z1mdb3nt7lJpdGbS4mSr0klBjBP6rK7FCwYGQ4KmnKHp7hMFUjSNuwUcWr4neuDh0Jk5///swNg0/lHlFg3fLLzwAHze9tbd0oAveBV+ks8gBkc8tBRgYRJew4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771308294; c=relaxed/simple;
	bh=MDd4dRWmt1irgiYohPvq/1c6laIEJ6K/qLMyZ2FNhSI=;
	h=To:Subject:From:Message-Id:Date; b=Z/kSzM6Ry4SISvdjpSsRCkVgfSJkmHhlno2SeQ5nU+bIB8nkaDIhFHh855LYlxOq7Q69uHacb0NBbZTpJs6D0d3HdJdXc0AaghcpCaGehVPpKt+gBNTpLkRlOUoezICiiC6wMBOIM6XcjfYncfW8puooGxmmMiOazmh/rRck8CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHvXjU1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHvXjU1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A227EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771308293;
	bh=MDd4dRWmt1irgiYohPvq/1c6laIEJ6K/qLMyZ2FNhSI=;
	h=To:Subject:From:Date:From;
	b=eHvXjU1SatnlG0gAYLFAEUDIvJG2hvL6PzbfRqzPFgLd83RATVFfzYucGwCA1q0S4
	 sPC2nSQNdSS/xC7gNThicYlrsXy/oY4En7lzLAQroy9j29iU5VfR4+D45PNrw9/kuF
	 5VVxJ14AmNHNHGbrkmHdJQtQiyOPJNUtWDn7pQ5P1TL6dToBSq/ZVHiTt6eEcp2q4Y
	 ovdStEqTOtKozENxQk7y879NWPIVLHPUHg8STwmm2Gc3d3pDcuHKsW+z6J1HM3Ztne
	 jwbFPNWu64x7s4BAmnoq0oEehS3PRwNKH+GqSRT1cnucCdLsovJvleJlwQyXk/zsZw
	 +SZHO2uuKY7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906EAE83856
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130829358.10915.16746178675003351554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f935d41eea04334aca4512adbb346eb7fabb48091ca8e0076ebe37fc6a62a23a
Date: Tue, 17 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771308293
