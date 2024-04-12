Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519E2225D7
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712962163; cv=none; b=SoqiPT+ul/Yr0ek39h43Rr657Q9tRDyja4nfEXkEp1N5ioZQ9E6bW5bR5XN7JMQvMdhz7ELoBIvFnIEYAz/KzPbKe1ePZzqWtV5EdCmCm85GP1bWnL5HCmF3ePInyBwBMNK4sCaZeoPA6GtLkRY2aa0OuGkjEMMYSHET2JrZ//w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712962163; c=relaxed/simple;
	bh=m1ZKLrZ5Nbf9IYlfJD720uuxbk9PAULrybJPILhIT1o=;
	h=To:Subject:From:Message-Id:Date; b=gud2YoAzHZ147cR43JWRuvuv/U28TdGTDj+zg1I07fndQBkSIzkua5ddfQvWKbRMlCwXWVKl4ccxbyiyRjJMQGwGL4OOfr5YaOyIJevMug8n+aXZ0H+idVx+Y9premiJ/MEb03OegUEySfauNsz+HZ2F/ptbxbHK28UlfbHgGJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWNX7bdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWNX7bdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E211AC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712962162;
	bh=m1ZKLrZ5Nbf9IYlfJD720uuxbk9PAULrybJPILhIT1o=;
	h=To:Subject:From:Date:From;
	b=BWNX7bdUZQSvx294Cb1iAreXxjJBuhuJLMiSbCCeZtZhI8BJ4k+sOnJ2YxT8wGiC3
	 oLwbcmTmwRRXI6cd6BpdclrGr48lAGHZ3DQjao2ZLLyDm2c4eyTZSx5Tczw4ZUMwS2
	 CPMIgEOdlCKd1FJc/jd1H7tvoFkT8Q5p91zDiqBVSUJkgOrVeelnGPc00VZAbA4FaK
	 2ofU/IByis6w8MxfO+F6g7WesXISUk0AWWGF+kfyzYrJtM5o3IEI+msmtXSwbB2Lu9
	 5jXvj78aneUPu0XhbH2caHB7rupLUAmEVXJcBh5iQVaVU7Nkzw4RI9KZCFZ18yEiR9
	 Xq+ATRS8hrljQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5EAC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 22:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296216282.3002.16155979360335891598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b0fffadabc837a0af3903debf29518245351ca2e9a2ed325b480e8eeb09509
Date: Fri, 12 Apr 2024 22:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712962162
