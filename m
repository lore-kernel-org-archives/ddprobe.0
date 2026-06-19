Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AAD2DB788
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781836594; cv=none; b=V9y4YlodfVGOxtI0MHQBoCiJd729vfJrjGRMApk8UlmRXS2swd0PNDXwzVzQ5zKYAMfAc5yMjFFFjBtHDn62Ka/Sh/MmFb4bnwwzxHyA4VyMSg9PRn8j4KAy3a3evFFbGEC+jJSWYfuYMgPNmsYgHJdduPE3UzftwuXB06f77Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781836594; c=relaxed/simple;
	bh=iXpPCVzU7WntRpjMBJ9rYrAiKvWda+m65jGvM0pWcCw=;
	h=To:Subject:From:Message-Id:Date; b=c6wBiWpzZuSwFQYURD1Ap7nF8LXu5dC27gMzNIwAAuSP4MW2a6XBJFRfP2+twn3pplXYHXzU3IbXDZ2PV4AQk05HHmXg+Q6gULH4sEmPtR04lRjYexP8S3sQAmLAulGQsXqi2supZiUqL4ooQ9Y50hNAssFqodc8Mg42wElujXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDWWVbyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDWWVbyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE99AC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781836593;
	bh=iXpPCVzU7WntRpjMBJ9rYrAiKvWda+m65jGvM0pWcCw=;
	h=To:Subject:From:Date:From;
	b=bDWWVbybKuJOlgdvipsPzIiWSknhKjko6F81/vqap8cW+jrcSnNpg+z1fTYHn356i
	 a8mU6de3eiJ25yikgnZQEnMPP6JCCL1gX5/cPNbOfw9aP8U8ihuvKfe0tH18/tlipm
	 eWBFe2Krd3FPFET+B2mFTLLOZhWNURo8wVq0DFSv+qGdsgm8ZaY1z4MQzV+5ryxmDF
	 MfIacUDioKCzW21iP1fFZ6h/DkrxaYBGnRL70FeXhNxvNcO23jKbFbPD5Rw1E9o+g/
	 rmiN/EwtbtGLaMSrd3pD4g8oUi5UkWg5O9iFbiPjmhLtu4lV6gxC0OcqJqs8ZiUoJp
	 BsnbivZMMjO/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF99CCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183659376.14161.17273640955987984187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031710321404fbb069339449e0c78edc4e6df3d2ff1fc9656dfaec2bd7fb9dcc
Date: Fri, 19 Jun 2026 02:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781836593
