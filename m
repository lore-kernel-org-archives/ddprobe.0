Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9AD1BC46
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770240834; cv=none; b=MSl/N07dQ/K9U/ajCFRKQs4Q4yIbfA/vDgAup86xRYrOGIktZg3mIFMjpiZGieOlPBiaBDKs5pRYEl2BfJtzPD1KveMOkbMpBnerIgevgxkDWislUfaQh0NDKu1KlIT2DX0Oou2ue9CDxTB/0FlH9nzYy42Kbs9RhA90D6xvync=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770240834; c=relaxed/simple;
	bh=0p2i77EWUkfJESKiurzrq5KJzOu1qTjZeO+F8ZNvlEY=;
	h=To:Subject:From:Message-Id:Date; b=kSb/XMq1AUPBHb8Pb0uQqDvjnh5xpU4C/XjasTVDB9pppulBQv/VjXZGuE28piYm8LwvmwWFBIOT+8hLolRkvRnu2+GZnPwADPTe6djTr7McmKKdHq/EE2hDdfX6Qlz4H+X4uim7DXP4lAbs9JdVd48ki+S+bwPDUTILegY7MpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsZyExYL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsZyExYL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7528C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770240833;
	bh=0p2i77EWUkfJESKiurzrq5KJzOu1qTjZeO+F8ZNvlEY=;
	h=To:Subject:From:Date:From;
	b=fsZyExYLPpJMo2tRzspTU46ep9dQ2VRSDAHW0FvwKZSHiERQ7i8fCFlSIhs2Qzn2I
	 POh1J9urQJGRuLq0Eyj1lyZ6Ghn9ap9SWjXbtQXhg2tuz7aEiPAPlP0UZ2YlKqsoun
	 yywkGCyFr+a9SKBEx8jgHWouOsWwxKW8EY7dXFlgmE2+sfulYeLJYO1liq2jqVfd6B
	 fsnN/zSJotfgWUSicwxS9v/Rc/uAKxqiZUsq5mtXrThLR7EvvwG0gjiwlIwWAHgEls
	 95Vud+vD4Xhv02dSsVu2FT0ISXEqDszOxRfsj8DZaDLcyIoRrcN+TMkL5rV5Cjoufm
	 +U7YdFWTpy/kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F37EA7944
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177024083364.23606.11155261551212621760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e181be9e1e3e5ad519876b3d2ef7db625e912cef65f68b853fbe1714473415d1
Date: Wed, 04 Feb 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770240833
