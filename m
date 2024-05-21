Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1DE4A09
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716251543; cv=none; b=DgtIRTEWCyCdyWbSy8dQgJEOVneW1D0QKhhyNHt3t0+DcPtGWdguoEuOoTEHWzeLbaz6cI46IAmt1qi6p2Rr5vhhD+sjqfVYTpjYRZkd2UMPz5DXuvLs3pn0gcCOv+UP31JuzMovJZAoL1WpqxyvlBRaFPKIuTaf3qxUShe3I1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716251543; c=relaxed/simple;
	bh=2/eq7c9zgqyeyQSSdZA6auBTPwckqCOz1Z1OYfyTrxA=;
	h=To:Subject:From:Message-Id:Date; b=jxHcUg0wRz/KLUUFwMrKW/sDcP7bPEoqHunTlQbAWk6H082vx6X7lbjPNKojuYgdGCcU5sBBCMxIsxnzMEjC+a4+UVDSOIPlC41oElvbudaQ8lxt3k2xu6yCMmZick8U0cVgoNHGNqNDs86cBIr35UISvzRU5afiPQgbWJpctnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKMBXReN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKMBXReN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01330C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716251543;
	bh=2/eq7c9zgqyeyQSSdZA6auBTPwckqCOz1Z1OYfyTrxA=;
	h=To:Subject:From:Date:From;
	b=TKMBXReNWE77dJIx2ri/ocatiOfTNtBYujs364rpLyNZ1eLArfaClSIR3IkigVYJe
	 u0b75G3TRZnGWFT5rcRZdR8e704t7IdGDSWeB+mp6lRKoNxW4MIVG3m0JprqLthDPb
	 XnaEmBhYyNg7+oAF7AgoG+4pcwvwrzYilv+ag09eibchQXw6LW6ZxNk2iUjuozA5iJ
	 //V9duNdiLNi4QYgUlnmPXiMT6TMl9+NgLBj7DG9nnUDV6welkEvo4b0AG/oYKF4Yn
	 02nBdwNdwhocVUFCuKeezcNlHuc1pXGCGjJ8a1PXKAIyf3AdA1DAFO6GdXNkH+TRFw
	 LMbKbjb8p7JgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBC37C25B77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171625154285.1454.12944230127844365566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb4f927102ca2e511a51d52f31476fabc04f4c082ab4b76743b85d399fe83b5
Date: Tue, 21 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716251542
