Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA4E9461
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720158323; cv=none; b=b+YbDfm6dAyxgaOtMZgk8V7Hg5NPPyILswPGesy7s3Ye3umDTnsZbfoE5z2OSHwROvgzK3ViOsItAhcmdfmCo8Pqd4HrCdnO2V7WCQ+AP+u2GooO5FqJypMmUNTgTNqXrMdrqeXhlbYQ1k+0TFmWmKCxYyw5Rb+Qikb+6axGcyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720158323; c=relaxed/simple;
	bh=qhvXwWEj/w3+uU3M/YzCQatTRqLWnpdrweVRMy/87bs=;
	h=To:Subject:From:Message-Id:Date; b=AkPqaZe+AMI2tPNK+TV3S/x3nADI1bXsYBx9aZin56Hq7J2HmUgSWLQdX8o6FpTlz0h0wK40EMRkW+4PVCmwSqC3kiVG/C4Jd4jrcDTSjFmtbz5+Dvt53Bjm9eYcW1lCCCjKroiG43SdesjrVSfr1dJQeLTO9iGhR0BTrSdE3As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEDJKvqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEDJKvqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B91C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720158322;
	bh=qhvXwWEj/w3+uU3M/YzCQatTRqLWnpdrweVRMy/87bs=;
	h=To:Subject:From:Date:From;
	b=XEDJKvqhCN9HwqEKZXwx5Dgj2ZxImhDnjWqBaNbauAn2VXSE86+h+24rOLjyYTAcE
	 q5j2COKvSRvqdNck0InZoGmaJrCjNICJeaPvvyicGsqdMYSjS/rQe+jyDBq9rfidNN
	 TYCMncrRrSVrNoYBXo9ybK0b9B+YIAGVlchX9fwkUoyqzi3tliWoH2c8JdSmd13JLZ
	 Xv7kxhTGV0Fxh7e2vTWV5Pr/DKWTnhoRQZjN94XpGQ6KVtxB46gW1wosqnWXItWBSn
	 6KiZTcxQb3P9jrSxPHbm4TQNryJl7VYY1B85LZXRwAuaSKs7D9GZW4pIpzMhP+u3e4
	 ejydSrIZZ2sHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4257C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015832276.30690.15180490890994501084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69e560d7e23324e8ce7b9856c20155e03db4dc093be34bc82892c10fcc5ba4c
Date: Fri, 05 Jul 2024 05:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720158322
