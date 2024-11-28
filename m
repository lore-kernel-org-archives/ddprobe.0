Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FA0142E9F
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732822554; cv=none; b=pd7u07SKD3UwaLrH83qi5OkMxVxEeaxnYv5otmzfar4ZNL114X321T5uCY9cZu2f/cxkF+0LV4Gh1hR8BZRaKVMS6J2qerAGCZp0w/VIZsjRcLOZp6tbPhibfOGW4k14AQYKFQAu2eEcEPW09O4SwMiKt+o9gPOdwo8DmDiLaNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732822554; c=relaxed/simple;
	bh=Jhs0IdiDGKfCzWGzDAeaQ4A6QttqhlZGr2S5MQUnQAc=;
	h=To:Subject:From:Message-Id:Date; b=QEWcAsoitdPSgiPK8KMEsLU+0SjXF5Hj+/3AzfgihUOaCa4DaGHKpFWSJcT2MXMnRZ/uaAWMDw1nTFYx1b3nmTrqEooC3y68KVakyPe64mi17ZC6a9gP8ag7s2jGcVNnGZz7/X4a4bSHVY/eGoUv9u74f1ussJEpsKxcEzLXcLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wh7NcgtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wh7NcgtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC966C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732822553;
	bh=Jhs0IdiDGKfCzWGzDAeaQ4A6QttqhlZGr2S5MQUnQAc=;
	h=To:Subject:From:Date:From;
	b=Wh7NcgtD3hF2gEGigzt2b7h1GZ8wcDCVHeEKkw455xJ2s5ehtM3PWYF5nzvyMd4x2
	 6qYVB4m0ZfrwGSXGK5KtQYQl/qdy6hZQJd53tZPZR6IVVMOkQY6blbwtiz0woVXiB9
	 C+NXNG2w82kV9HCPHn7icX9WJr7fbtaRQRChHNvJrOw7K00KLNXuUQZcQ4xxYbuE8C
	 BAIhUi1WQnVagI+rbchNtxihUdMNvP8edNoYA0Z+LkM6r0K/TsxPVckoQlHJyeLOTC
	 EEYnemGDB1tN7xwULQlnhLPkzciwm/mQBmdsaeX6Pm0AX7oCau42m8ZSYTMExW45s3
	 Kxr4i9Wqr6kDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC5D70DED
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282255358.31744.3195840972300200588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2afae54b2bf0a5cf66bf1c2f5fd10fa165f434c4c70bf717c100e7705acdef
Date: Thu, 28 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732822553
