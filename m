Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C77139D
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745282995; cv=none; b=oIEGywDpOslDTFRAofnHD8EcO8gmMEg1hghhx65Npg84uyiPaSyoRZZSq8bo2Z+oMa6dSMjajzI9Vy6p1+JCRypBiZybhSsGHtFUZ64Rb0F49tnfa8Kp65Hh/b5yqJtw12h7gMREHDgu93TlOL7/pBUWugI8LdAVXED0ZVBIp/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745282995; c=relaxed/simple;
	bh=HQwtwNUIV8ArTYwaJ5UvqzJejlxRNneOBdn2vUUVOjU=;
	h=To:Subject:From:Message-Id:Date; b=nOUagFM4yU9yxnaTRJx5jOL3P781Pd8lDFMqySe2TePkqXtABWkHMQKgVs3pCB5q3dOXJ45cH0XYQmfaHycg/b4D+GRjOgTdCWGKbFpkqSboiYh2r5Tc8T6b0D9szC9qDf/2iVgmvFeagud0xldIDxkS1a+GNa87FlKYq/GC8pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm5ZWPeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm5ZWPeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC489C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745282993;
	bh=HQwtwNUIV8ArTYwaJ5UvqzJejlxRNneOBdn2vUUVOjU=;
	h=To:Subject:From:Date:From;
	b=Nm5ZWPeO+NKKmGhTMiyJU1ajFM7L/NQTwVLtlzWR64cxl0RwGTVcWxWHsdm07gK+0
	 oyyXZ/5oTdOy9ogXCFEor7wm7myl2gPIMmvdB3oLA5U7POrEVuPR9gO4YZXe2XS7fm
	 DhLwg+yzZT7VVOS4rcSq07uDNFn7UHZ5Iw2kuQufeMMIoJMFVtAxPpxXrf/7a50ALV
	 uRTcnzrKWOu4eH6/8p+tkf5VQs5kR5p6YBr7lJMvLwbP71SFEBsRvQTYOXVV4Qpa0z
	 OA2HkofpM10gCNsP6wBgFDDhB6TyZGDXYXvKs6+bzTuVmemVlamSgXUwkcYeDXSw7Y
	 haHprBmsuc6UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99901C369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528299358.21869.2039781697951135649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bbbf65cd137564a0bbf7998527d6281dd55fdbdfa564c175ba02bb060a9eda
Date: Tue, 22 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745282993
