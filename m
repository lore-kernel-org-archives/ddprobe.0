Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4E2242D87
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757647794; cv=none; b=cx8fd2sIn2IsmxVzDBqchve9Vu53cZ4rNbHwQCsczwaTpWQuj8cUXAsapMZtq+MgjZ/a0XFv8Yi9tofzvviGZGPOh5+hxqnDEbiHBvIm44RmNKhG/hzBvSXINCCc7a9kGZJubM8d1HycqZ5dSdsrUYkFSjdlapTZfZPn+lty5VM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757647794; c=relaxed/simple;
	bh=xDvvkFUiyqh2br2ydgT/pyoPhtJMuVfNLHZajJv5vLw=;
	h=To:Subject:From:Message-Id:Date; b=UUB4UeRxP/jYyt+R24ZZPkiUsWml4PtERVkgGHurGnyT5tFQ82gf0AsNgvg8WvOOj1IbAkfeSh0pG0ORkww6UPbp/qoeTepA4qpw6Cjcp9WHMwbKp8Hmam+G5OR+J9mfRdZ0XeRwkC9EX+A6vPgxMt1fdtRNP5j+xltKQWQr2+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXMTLIyG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXMTLIyG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEE6C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757647793;
	bh=xDvvkFUiyqh2br2ydgT/pyoPhtJMuVfNLHZajJv5vLw=;
	h=To:Subject:From:Date:From;
	b=kXMTLIyGdZB+jcW+2wiYnELsdjx724E8MChLrdS/Jp4bxdcvBG0I6+XWVnewQ6kP0
	 LlJIHXvEflZtQby6svIyzSjfAiQoXYsPbvItUQmPyC2+g/CTwIxs36anX+9W8g30yj
	 qdGkVK5eDna6C7GKyalzCZj3crhJGe6SF0GycmeItLRWGz2DkrBu/OBTnM4+nU+EbY
	 ktV8HgF/+JgTR5D171hPcObygA+PaZHcLhJ2fwgDyICKU5BCRXY4oNBDAr97+sIPGS
	 dBPV2nkjS1/qfHi/hlRFzvL4YGacUqvdITo8HYEA2tenBP2YPNPd4VksknB5ahq1Yr
	 ETcQUPpwMu6Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980A1CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764779361.29791.10475733992850888794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f69ee0d59d4c1a93d4d562ecf79948616be4e5fb9e83312580be89f4060e2c9
Date: Fri, 12 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757647793
