Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2749730AD15
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779903154; cv=none; b=sZAVrXlzeRc7WhtA5gQBSRcHfBGwRPM6t5J7su48ap+6ygvbVL8aSyYnAAG5aYIYpB9F7Jue9d74fioHctPstdi5CJAn1l7Zwhvyo+U5gkSUp32tcH3M2Hv478QSdMLUiqJNBL9dbOFXLIWNcP0dgjdLa6tb8wj+M4Oyh0cwwbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779903154; c=relaxed/simple;
	bh=6Bfdwt0bsRoB5aQns/D6ZURArFTdFp9MqsVx6n9+Xhk=;
	h=To:Subject:From:Message-Id:Date; b=tZ4C7GsMW/xuTi03o4fEWRiU8qsLw1tjvvanaMQC/bAYRKY5IoqkHqMOwtM78t32HDKmqsTInA+l/HEr2EgQuhRZTK8wg/mAYMV4qVN4jE12le5TmEpzA/NEYCMkR7xdceLRXSSx2OnTATBQu/1muqzs3eybvR38U8TyTfrpyj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XS88EcJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XS88EcJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5496C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779903153;
	bh=6Bfdwt0bsRoB5aQns/D6ZURArFTdFp9MqsVx6n9+Xhk=;
	h=To:Subject:From:Date:From;
	b=XS88EcJt4dF1uierbqGB4rsdfK5w+gZ5sHJxyM5SYPN2U+RfYw7Qib3mHehZwI3aT
	 KQxoyLAs8FQLH9VMXuK5duN+CuG941hZNDhkoMQF2lqZZ6t/FYpPaXKnJA6Zop8Ibb
	 buglqNTw4hB0RT3iPk4Oq7azBSunH5j6d6zh+gycURaXHvtr0ZSU8/6m361W3kTBCu
	 iX6sEHHngLT4dZNhJcmL4sEhOYgXwrFCKLHCGMNMae3P+uVO78UOeWGIfTBnjXT14L
	 dgCnQPj2uq/VOJJGZ4KcwSYEJyYf7iHqPXkAjP7OtH9Zzgww8PjTbCQbxad4542Dix
	 CK3x5shUi49uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6E4CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 17:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177990315369.11654.3155880664095923582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1922823bc877de0fc068acf8212e84bfca8d4df4d43efe4fdc13e1d83b2e7143
Date: Wed, 27 May 2026 17:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779903153
