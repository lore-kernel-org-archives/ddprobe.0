Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B43A12D1FA
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721301323; cv=none; b=pd0dV4o6QClAmL5HmCLu8K9+FcbAX0YK5r4LJjy972cHjGuYyX8Fi4K7b51ZtQ0JXvLKIViUPQ/zr2E2S+gD6G8w/NxxQVWA6J11hB7YOjCXqxbvHQ96qV6r+/s272BjJc1JQE80PhgrUR1Exysn+LefkIz19cQlZX3ixSEJ5fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721301323; c=relaxed/simple;
	bh=lygSjta3USP3vNKzq6zZN6JiL53N2f/yeGwPG2fQCm0=;
	h=To:Subject:From:Message-Id:Date; b=ua3ydGB6UDfoOvcr4RphXRBmJqBAGwB5i+4Jq2BAstmPQZGotvqabanm3PUeO6ogbrg4+ueA3/j3FUjmlIxP7X3zDxCXCWWE0ZnkP6iyUEsZWFFm4DRVst32n5CaFFvaFTdjjszTpaQGmHB2Xsn7ulrwRWQBOg3AnVgKFd3GBi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGXdAca/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGXdAca/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE44EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721301322;
	bh=lygSjta3USP3vNKzq6zZN6JiL53N2f/yeGwPG2fQCm0=;
	h=To:Subject:From:Date:From;
	b=YGXdAca/VyN7ks4w3vRdBIvAxoZHSM8iEe4Z8UC7tExHwvmmOO8UQdSqFYt+jyrcs
	 xQtTuoTgjWdTlHqFf4Ex6dl/w2vUXvugy7ijsP8BA4CAjlBLDN6oCbXiBy3ArcbtCh
	 s6rt1nACcdB+CNhR679xSNLOTmgdMq2bn71jIKTtyQc6vGEpNc/eVZCdm3bkPqHQ3q
	 WAcKQbzfv0yNNU1EcgB4sqDyBXkf3NQPMjswlQd/LbZDWp4bwllDJRoElkbfj7Nwlg
	 TJhuEY9nmKVeLlJ33Xn/TB2lG/KWOZc0OujoNBCPXuki0ZFvZhr4Y/oDmKvx3aL7gt
	 Z+vwSx2HpbMvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC3B9C3DA60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 11:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172130132282.1324.12081998201989823218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b02dc19e5f5df3fcbd10b86d78496beba6ccb2d48a5b80b71bd28ecfb964e0
Date: Thu, 18 Jul 2024 11:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721301322
