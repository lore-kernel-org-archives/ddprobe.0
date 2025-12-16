Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190EE1684BE
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765917834; cv=none; b=KTbpgX+uGOCA/ChYhE2Pk5sb0kcAwe8zQqVYbhH1gQTO7Bn8KQJsJ41utyoa2bLLsjYTupEBBYeBt5LB464f2ehX6FkoU+w2p+/GbAAuokfw6rcZf4o9m4aRlNXW2DniurMpXCXGsZxB4xUUaaeo+8J9Wj3RBxt63sotZVf04rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765917834; c=relaxed/simple;
	bh=yOnCYxvzeYTZvPQpJpX3iTWUnGoMRE/pAcqN58gNIV8=;
	h=To:Subject:From:Message-Id:Date; b=jenqMK8GX+kN4L+072bZGnBb8zMSDzA68l5FKZRo2HZu8hCM71ajMuNgkUbio27ocFtu6Sy+qv5liv2Qd9xwtETQdmKq4OHcKGieyOBxt5G3BLec9GdEblk6xWCtEuidB/c13OZS4L386a6ali4xRNHR3LkvfYM6nVzMAD0aS7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpiWh002; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpiWh002"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE33C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765917833;
	bh=yOnCYxvzeYTZvPQpJpX3iTWUnGoMRE/pAcqN58gNIV8=;
	h=To:Subject:From:Date:From;
	b=YpiWh002cka2ufSNieFPQ3X0ztQk5675vz6ERk0QRUPs+/zPvi/viDtQP0pB5VQB7
	 u+8kG/2KzcTmyb+nQW2wMgereO476JHKFXgWJF/c5lo1pVPo8b0HVD9SfJXyv7qobG
	 NIcnS0tuCLXH/N8NqNUAOqAn6Sq5GmYJxv5K3lCTfPtbXvglZf6TJlqPTFkaL8w9PJ
	 ayAz9yaF4Ak43LZJNEAFqP09PqKJ+hqxH+o1lV5GN5L8jCqawxitz1UrUjfuTRUvYL
	 k3p4xZvxdzJmHQc2dYC07PcChfccarZNw8T+cDyJxs8JiJRNjk3wu310PO1L73LRA4
	 hTbvFj6yBw3cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B38D637AB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591783359.21971.2488364156254907846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8005761b71946ee73570b49592878be92fae4bf64e7207911df6e0da3897cd29
Date: Tue, 16 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765917833
