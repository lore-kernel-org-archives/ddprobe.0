Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6D48BF8
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716255143; cv=none; b=VrsqU+VfBp9p2CCJe6O4ySVyw+I25MF7lrpkGHGpfWLmLSIVf9kFa65zEM8gAkDUoXqlmbYwA+/MTDc9YnX6ZAMwiFUlciHKCDqFsY5pr5xMbvE/kh6Y8wDAImzCMHYMdy/LADX+13Xu5WJpCiVa9B7URT9tHcfo4xkZA8WNDZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716255143; c=relaxed/simple;
	bh=iCR1zfssS2SgzQ6ouS9ycP3PnMkPfV26/A8+SiOAFHE=;
	h=To:Subject:From:Message-Id:Date; b=IdxswUmhUxRNj2JtDsbwBjQTFthS/haFk5UMuGmV5+pF/lnl6iy7eMS7wT3mxuRHXJXkJtFg5z5lvohx4jYATDVZ5dYD3J8rISrKYShWZ9JPF+Ssgxcbp8v5wJrEuDOxIr5MzTWCJEuM8x91BI5hWEU4agO/hJf1qFfMiN1WwmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BB8pWClA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BB8pWClA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3570C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716255142;
	bh=iCR1zfssS2SgzQ6ouS9ycP3PnMkPfV26/A8+SiOAFHE=;
	h=To:Subject:From:Date:From;
	b=BB8pWClAiVMtyCcvDRjMBGfbu48Zp7Lm2PE2UueXM8mygn2aKlpCYyw69ANjvQ/LZ
	 Bzww61/jh33lB8Y1c6jO86v3mVXNjDNO0unfAfJcdwXRYnrZhO8MMgYOr4l1xKWY9C
	 YhoAI4Z7PexTHkFJPyam2jl97oXx8h9n0jJcZ2jLIoiO35oe/mcZ9vNlRgqwWtAXwn
	 WKwgWLXvDBLmvBGt4MgVAUmVsm9AYX4jYMK1kYgO5FNM4PRkGXDPNIeGOmNj4B6qQQ
	 YpgkCiktVBu98GV54rVSJZCvBy/tqTwdE/w0SeTaJx3jmJIBnzJZY9Z2sSKp4f66AN
	 vRgPeMn6nUYmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD703C25B79
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171625514276.6486.14566406580661123353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150ecdefa26145568e464051bf17fc7a4f224f547a85dc66db90ec56e503af60
Date: Tue, 21 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716255142
