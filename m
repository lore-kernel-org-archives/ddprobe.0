Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF8A3596A
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748063394; cv=none; b=fJ3ZuLvq68KOfohVgr1OsKqvVTG/qhdsEItwvKLxoVO/FJwddR6NKB56LfxsylOgT89QW8JvJ3MCz/QXTll629BzZ2af1sEN4Llxa2O74863ZnaP95g93RvodNJSr7l0UfdMPZT84pObgFKtDMHxNBA2MPY6+JXXlNOEGTjJxWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748063394; c=relaxed/simple;
	bh=3tkV7RjeheEYsvO/esKCstixQ98/wZaAoD6eMt9qnh8=;
	h=To:Subject:From:Message-Id:Date; b=Spjego+itwAc3ZDtZmtKpaZrdE/heMFCTA/Yz297xHrDEa/tPXTcI8c3MqCvMD30NvyRgI7Gd7daFCJW7yYzFHxGVvpcB7+4/zank3f+hqYZ8m2U6lvlufSvrt/QcJ8X1w8d6CU14cgAtIwdrPlCo3rj4+6yYCK7UOrAb3ltFEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jo/HiJUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jo/HiJUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C27C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748063393;
	bh=3tkV7RjeheEYsvO/esKCstixQ98/wZaAoD6eMt9qnh8=;
	h=To:Subject:From:Date:From;
	b=jo/HiJUciTJUoP9FvYRU0yuaMa0he25+NfQOcsobJIx7A8Ojah3/3h7LHuCSXoq/i
	 QrwdIoCDU6jswgQA6HJTtkVXyyGqq1BkJ4hs0JO4bSJZyIHNUgaMvsRwNZbBTX1n5r
	 s4DqtA6j0Z0XNzvgC6YpDGUy/KKf9TA6oPQR74bDhn2oMVcrjnTFDzZhD9rGuFqU/S
	 GYvLej+ZLAS06aUVGAKBiZq+efi0Q9rHI4i4s0wIlnWXYS9W8YZUZbl5xxt/tcyupI
	 gH69Y3yw+ScruDQtZDWE6LyzBxQFq0cIREFAz6vvqEmSjED0d5Uywk7l2iT41CEp/M
	 5qvBnec0dRPYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9038BC54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806339358.28562.6239979780143629934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e70838d8ef08cdbf70e12733ed0f4488b53b2fa9719a3fb15d6e29a129418c9
Date: Sat, 24 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748063393
