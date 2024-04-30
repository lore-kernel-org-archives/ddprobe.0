Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323F614A89
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 05:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714453343; cv=none; b=K6CNy68BMyd0A1cbzOUYpRxCXCdzd1e+naBkVovtXPB1cpAf2BzvsC9SAlIx7oeKbyJRmS6Js4BnHKw7KO//oYzERb9oC8oOpgoWrSrYRsta+fi6EbTmtZfWyJPYpUGcjJxGL7GzrpNwRdcFx5xGJO+cR8Aus/C/qWMvZPzqkxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714453343; c=relaxed/simple;
	bh=4Ce/Ka5nyuTPTuN9+yAAXBLPwdULmTCOEkQ5jsTHz9c=;
	h=To:Subject:From:Message-Id:Date; b=bTOFqmkEpzghk3kM3eH3+QCIdFAwVVjXfjxMmakWqTBR1KiMQKnQiGEfxTKvvF01ZmZg6yj1g66FCAAJYwKlfJ2gfTJEOfdgCOG3ZkN6SNZ3A+NtFYo88DPeCaK/TIUzvKlM3cSDbzw7GioM9U0m/N48DYsiNqnXbkSmWqDBZJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBAyRb5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBAyRb5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA24EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 05:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714453342;
	bh=4Ce/Ka5nyuTPTuN9+yAAXBLPwdULmTCOEkQ5jsTHz9c=;
	h=To:Subject:From:Date:From;
	b=oBAyRb5myQY+Ov52byCHjwvCq7NErtjrYBOLs3tfl0GLsbxxXfpr51WxkNxeH2eLx
	 nh4IigTLPQv4saXtxkdSkOpWXrAPAXt4DXNtoONxP2xU5WaG6r+yuQZYWynAENcRk/
	 SStbH1Q+RxPaxfeijCjbRaLcsSUEXos0jYecidKnkk0I7UTmJyW1JZxfBrwwLR1uGS
	 TJKYXTqeWcGPeNaTsr3NP/ES5+y2tokUZJGcYhIVyHROyQoE6HplY/cgb6JbcWEmsQ
	 ewC14LVCkhX0TMbvmu2Ux626YpIIFfsRTJm5Mbqe+/5HTl/gzmEKCE4ZEXumzUpBB1
	 NgrUlKonhg+vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9F8C10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 05:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171445334277.8256.2771612974970851311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e21ae7145c0c012bf9566feee21d486c24624d9dbcb4e45f027962e38c388ee
Date: Tue, 30 Apr 2024 05:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714453342
