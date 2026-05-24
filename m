Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E56339182A
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779619354; cv=none; b=A1uiZXp5jzMPmMrDZwLctp3gsAxi9EoLDwWIDUAuZt8BIw0/x0ENqkyGrZZt3/xd5zu8vO8w/YCxftS1LHOnSAzdW2dvsuM4hxT5IXJNmZ4RMD/1SxCpxArxdi6jXjMfiQnsBInTPoDm7YXqfkC1ipv/eXfdyVcpIhRNHvY04F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779619354; c=relaxed/simple;
	bh=tpySYY+2w+UZEbHb3miGz6Ill0/wI5j4wrhA+Z8e/W8=;
	h=To:Subject:From:Message-Id:Date; b=gsGnLs4C9Lo2clkVhdczwTk0O70cuOxfhln0Js1w/g7Mv4OHHZmkiy1mHqpocmvQU/rvcdwsooGjdzuYbeNDQjrdgNKTrZkMNRN5RxziB357osic1NDERtigN00R5wIupRXqlsK/dx9FYk5AwmvyZvBBCECzPrKEQ23PklgiEhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WT2DNoEi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WT2DNoEi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C874DC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779619353;
	bh=tpySYY+2w+UZEbHb3miGz6Ill0/wI5j4wrhA+Z8e/W8=;
	h=To:Subject:From:Date:From;
	b=WT2DNoEi689v8t6v2lO2+JEWNpDSj0wep11YNon24qyYnaSmq7skGrr9VG+mUk7PM
	 N/mema3jxY9E2Qd+VcaJZGQb7mCBFRWNWJ4bghG8CUgC3P1XBglHVZRrXZH2XjRG5E
	 f3BCXlNKI5BlEHnhGMtr3d6/Po71B9Jdnqeq38zDQXRUFIVpFE0w8cKFNX1uY+MDVo
	 RlxcITiRIJRKCnVFGlOvC5SQxbgQrnOcNT2/9soWn1II9djnmDGrfkJhNFojF8K2wx
	 TNIzst6A2ub2Au2qiHQ7NLrR3xIgfdTdCm4woV8Phj8rhftr/5YTKhdaGL7xdU/j/r
	 HRsdT6XZnYljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAD2CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 10:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177961935368.13943.467763863528986071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b54c426ccfe1c97845fc98167c4a5307f8f1d8a154c015ebceed9f8dcc5e16
Date: Sun, 24 May 2026 10:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779619353
