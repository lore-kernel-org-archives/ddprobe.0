Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBE1263C8F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770158634; cv=none; b=mppSfhfeN0X2CJ15bbpfWe+Y3eVWebafm2FBJwIBMao0aYjXI1GJdGmi+6kDYpHUSTj/mRZOypXqO1Dkm77LlpyRFaOKVyMwGQY6yWTUNMvzGtl88XLGvVyb+AH+/evjd84ftHkL0fi3ECeqS3RG8GYlZR6FD+nwICFrpGHR890=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770158634; c=relaxed/simple;
	bh=etC2jG+ckkRZrOgQr6LNxgnqyJaX3LLbRBeo8VumjMs=;
	h=To:Subject:From:Message-Id:Date; b=euvFzrWFR8R9H6n5TkEy3NHgNVoauwutHl0fJhzgCEuALCDCrNfADuhxsMu9YwPB1S2GL+xJu/Bw5QgIC+KiVTaNx/AuFO8VO9rWTMM8JXT6IajkgXoHQrbw3ONQRrGJlpORXb1VXPXvW1MLf69ipHMHNVR2X7piNy1+/mGK96M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fucpzsgq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fucpzsgq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE14C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770158633;
	bh=etC2jG+ckkRZrOgQr6LNxgnqyJaX3LLbRBeo8VumjMs=;
	h=To:Subject:From:Date:From;
	b=fucpzsgqnuyXinlPpH9lTv/YlEObr9TbmzJkfp17jqxIykquAgGh25r3ZS1mVXyyH
	 J5FbjYAfCrjvOUX1yj9IV4PbE7iQ5ewzslp8hclPQ3FDIFsVoiXhjh0dH8T8F+nlmh
	 vZwD1r+6kPudJo7xWxdjpnPDUR7/liUauftxkH41sGwf3OJwczYWvAiR9KgyIsWiOK
	 MOMqKXAuVlf8+WNxlf04O5bRhpE7bETFO5ACaC07xYUbjwgYmwB2Im8g+kC8OG4Ina
	 0dWjFIwBsGdD50xZ4RX0b+eg8S5pYxMqCqnLQBhC1TOlU1cr/Ms2gFch4Nk5JOqZlD
	 C5YyYZNmMvNNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30E4E8B375
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015863359.14143.4970152908347684363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1d3589b3a1aadd3d7090baefee6ecefd0ed71fe9fd07578ab6c6643a944a8c
Date: Tue, 03 Feb 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770158633
