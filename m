Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2A63262BE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753405793; cv=none; b=muaJS+NSZkXKz7xIh54/BnVzczW4SwMifTN8PUzjsMamLkqZIgPiWZpEk72us09D75Un6mUZdvDpOdjeBOr57BUc2SUHrzasabKqKAzLpBMFMvLrVlAtnAHj2itp8rp8PKsb52gauScSEb6bLsNB0AcT1/ZsbExMc5CWvfhtjwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753405793; c=relaxed/simple;
	bh=ZFpXeo734xq64mbwsMa0rOGzamgJo77WQUs4zLEn/+M=;
	h=To:Subject:From:Message-Id:Date; b=PzRwRupBVIEfMtrcb3EULa5NrHaYQmr3jIJ3ZZdMbhknz1hHIKOGSGOMNEQDI+7Sh/l2LY5xvPmMMqHbM3cNMoZL9oY7Isl7XxNXlerPV5DE1j53ecCzCfZ10+GG/kumv+nEFeetcxi8YrWZhQRUSP93MLXs6vu4nxXvJVjcQBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+VBaF38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+VBaF38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4579C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753405793;
	bh=ZFpXeo734xq64mbwsMa0rOGzamgJo77WQUs4zLEn/+M=;
	h=To:Subject:From:Date:From;
	b=t+VBaF38u9dwMjAhiklv1bx9rP8BxWNy3KFFUjLqTEmi/DgkwZf5EM4YGqG8XeGdc
	 OJw8U8JjFDux/3HATHc3NNia0zM447bXG6z3R7FMtTxmUcHKs/6AJ/qNdEQ/9R5i52
	 /hA8jb5DiWLDenWYPYD+hIlM/ImyitRKntvBysNA8PRVczBYHsGoA9VylOWPDFz3QD
	 Lnz4lG9LZ7uuyikdS6icV+mtQRJndy5G36dpi60BPVuuQM3uz5cmHEtvcWTk5FqGvw
	 UY0BC5bI8FmOStwy2WJ2NVZ4VVquKtZh4PB6JEL43vUj1VSzvB8u2mc2ytdL6NQ2vC
	 1j/D2Kte3XIpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CBCC87FCC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175340579358.5411.15967076545202967652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 040cac580342271503983d6c4ad7f77b57cee93ab386778e99e08fec657c9f4f
Date: Fri, 25 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753405793
