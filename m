Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D84A1E9B3F
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743542994; cv=none; b=I7LsZv+QXerWVxSjpz13VmZ0AtdenzS5EkhAwZUuIu9eNeyxrF6+QfX/+/5t2a2UlLIQ0z+X3mMLVPMPQpPTdxuZB9GPHOMnvggfqRUb26iZUSDwsc9nPwtWv8XytEUTPqsaMkaoBPctN5TSW6X/B2ex2lyWmJw+/c2cRwXGSPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743542994; c=relaxed/simple;
	bh=zQnmyUS0YUGGwsvxRiXdx0f3NOJdsrNMvzjEuSYWjw0=;
	h=To:Subject:From:Message-Id:Date; b=aCeo4vEAtpFBGaLuaBnU2eflK5mRjFVQ8hgMMo6wm6blDHH9ZlfhH4IZ1rwTeTTKbNF4ZNavSu6IvPtyBuSAxNTyaER1yZNcir+F35+ZA2Z/Zh9Sup+GcYpZvqIbAUwwpTebndEuKauScxZlL1kWxFmmp3gP9B3MxZYgqd2wWQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKibpHCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKibpHCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8FE8C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743542993;
	bh=zQnmyUS0YUGGwsvxRiXdx0f3NOJdsrNMvzjEuSYWjw0=;
	h=To:Subject:From:Date:From;
	b=sKibpHCQrKudadhoV8KOnS3bn/zObXu5N0W9IpMN8Pm2YI8Kzrv3vI7KHjHKXbmh9
	 n0Y5lLOliRMUEMlac++/9XMeCgvqPZMJzu0fmFxrMMEjSz5RZAKvjataPkv8mRxnCY
	 t6cbWpa9KFAYlUnAMiiVGrXYKk8DwnUPOFus82XUxctsG7FWjzzqplzoTqxzYRBM94
	 FshFETBhxjQE/vcRYmpH+FEixug/EBK+EJn/GKtPFIEykEAF6vV1rp2U5ED9rk53dH
	 VbPkfDMWAqpbGW2hErEVgh1DOPRYDYAjZaLgUgw4aQULCe9m4x71pxTOPQwu+J+3kt
	 kTJU/Bv7ezBig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA2C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354299368.19621.1755351554893137794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3331d801b7c308ed0b0ddbc04ceebc60e3fb82b3a474efe0bd71c7156d347c77
Date: Tue, 01 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743542993
