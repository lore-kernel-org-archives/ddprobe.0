Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5258B577E22
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790097634; cv=none; b=d4pVobp/nOz3N2Hl4zAVDgE1TwXNtVRVyL5L5dbYMwjyHoZ2mLzVpTDokT6vWMlrGM7kFDqkJcr5Yeum17sbIXEjhe5hOEQsYYbF9KBL4+7tjyrxttzH4va9iPh3d0fpfdUAaOx9Ne0MK9SxXvnRBUO9IxyQACtVFyMYDGYa8Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790097634; c=relaxed/simple;
	bh=YcjI6uu3s1Jx2fq+DucDf8kEua0pWke6dEEMZjZ/7ZM=;
	h=To:Subject:From:Message-Id:Date; b=mGbqJj/gEGB8LFCMCyhPkHs+BXBkgtkOlpa3GHrEEipU78DE99BtibDa6QUknhd2Bmd2h0D9pCwuQ0spHPB0j0+wqq+itDAQQvxonr5QDKPJ3kqx+KiTBulSEHmkiNyIi8MQtM8eEMtftMgLviet0scZzJkfcbNMSi4V6duU7ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0CQZZTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0CQZZTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7C4C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790097633;
	bh=YcjI6uu3s1Jx2fq+DucDf8kEua0pWke6dEEMZjZ/7ZM=;
	h=To:Subject:From:Date:From;
	b=l0CQZZTmCvlrCZCU+zfpCfHF9BmkRgyxLJ3jnwtMUjko+GBuuUSk81W8rpQ2KeSmc
	 3JNfql6zOSr3foBxLbBy04cs0ojGdX1ASjkPL5dnF73kcKtBZZ9S86ZVa9T3XgslfY
	 xO5jejaxaiz723dnD2HBSbDsnrkq8v1UbQD8LkcpKpfTQBQPaXcUtRQD6PChVgf43A
	 Iiu92654EgXIxDw/hkNDv1a/qfxGeuZwPl3qDFUWchPY/WNk/GOk89MXWMsAIGuPyN
	 gzz3FS6h2hWeL8GgRY1ix+f/YDDDsLT7dyhfhiX/ZvPVS93ucz4zQpLoT5dnEP9/yT
	 j29KIkGvYvHDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B188CC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009763371.21699.10671567050719176415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760c5ed1961118b6904864551ab3e4a71761b344926c76eeb4a47bdeba4231e0
Date: Tue, 22 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790097633
