Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A71433E7D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783063114; cv=none; b=B/1BeaAL1qZyUVkxcX12N8mxtLaDsREEAK7msJas9BtpBiUKtXh7fUYuZaVynhq4ryU7bDJqxJJ/GBCH4NPxjIBIoUlXqj9opIO5XxabBZCMD4R3y1XBf93sOKzEuf8CEbNn88ukvjixnPq1/UCAtHWbG6Y29r27uPtJfG8wjYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783063114; c=relaxed/simple;
	bh=1x3ll+XMwoVWWBpivSs5jZs7ZKPFRs8udVG1Lx/Mu4I=;
	h=To:Subject:From:Message-Id:Date; b=LX0FvAc22EhcyRZaqGe5bwFX1LfM+ouLv5FmyZkhgyU0auPxhcNzkB0CiY1Lw6j/j18XWgmapuPWJ6X8PUx9BaNIMFi7aCbuJWljicXYtdsH9LZkydcuMZ6W6uAMHPPpjnPz6NgeIgo9lXsumgrfBbrcVBv/CCgGuKd7NXOPpDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVv8Bd/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVv8Bd/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC53FC2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783063113;
	bh=1x3ll+XMwoVWWBpivSs5jZs7ZKPFRs8udVG1Lx/Mu4I=;
	h=To:Subject:From:Date:From;
	b=EVv8Bd/Qpgx/1QZRmFz5O5XHqgiJwzOKC9YrQav4IceJdUiha3cY19lkI/eZRo85r
	 ad5ftY7ISRuLjJXVixSRmZMtkhYT6ZfIvpYYPDtRUnR9bEfmkdpAFPZCi36lIphGmQ
	 dfS6+Dom04BdeHZnTXjUjCy784RDtcCh7RHcjI2oxUFCl2kfYiPGgbHF2nBqlbDuwP
	 66a7iBJ4UnW3ve3T4PwTg7NZT3gZLJ63lhsWFqAV38IUMePWxI0zruwEa/e1PDck96
	 gfzIbICnMTEFJZKhi6M8UZ74t3sqlMRxSfhaQO9fZSu5BZspdogo/BPNd0JqF1fIHf
	 hq0hKmqi+W/Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0E0C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306311368.905.13642561188445630345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d072775cc1286f7cf7b4ac5682758d13b7f92a66a0482c12043c2202765cb409
Date: Fri, 03 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783063113
