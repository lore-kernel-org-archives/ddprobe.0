Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8066757EA
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763635313; cv=none; b=WIBo0R0Lc9NNK0L0qtUI8RO0Ee2wU5AEstRAa4e2lJ3aR20DB6OvmKmjmem5Ws+Pcz8Ic0ELo1WYIAe4rekoV7XwPInqtVXvYmhJo5XwMgwJN295rQ5MGxIfIwXxotPLhXeJR2MYYs8mpWbygDnEcbTM1lElyO+9kU1t06dbFWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763635313; c=relaxed/simple;
	bh=7b5ZhSmKn/1zrj53QyUZk1q+bHEmOGxT40oVUoHtlpU=;
	h=To:Subject:From:Message-Id:Date; b=P/jbr9nAvZzvSA+D/bbnHiBDCMe0efU171nOY6OEYgeBbNWIC2eWeUbWhUjB1nR5gsVG35ZmH7ex1j6FR6hjgOf6LU16qYMKJpUgOAil+vhsJgC3EFEdakdAWC23ZEOgbjksyvSvdgaIbzaHOKRss1CC3/hqHlnq//r0qQV8cZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ECgLuOSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ECgLuOSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72E0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763635313;
	bh=7b5ZhSmKn/1zrj53QyUZk1q+bHEmOGxT40oVUoHtlpU=;
	h=To:Subject:From:Date:From;
	b=ECgLuOSLRWPKHFhmJjMdQxgEA7PqSzJPrZ3QsKhV6iCdDUKGidUOPaNB5zNzG7p0G
	 IkGQ1x2jsEOoWyuCOnMAMTtazrkti6f8PeHx5EG4TTav0L+7XLHAYka+R/q6Xiu0UA
	 PlcCTQtCpA/E/QXecLOUCaFgZ4x3LztwBuIgCHmOcp4jxUjErVSkowXQtcSdPknJx4
	 g2nqb5wlRDv1WuOmK5u5NhTO2SxtxmmTt4P+6dTifTlf8PxVg+119y7UljryP4HDiy
	 8Lqa2K1kXSoodW/J9bKjr8aYVM8gQ+o2IPSjGR/iBjfNcogVezRNFJQW1LLJ81YIFW
	 837MybdRUr5LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96117CF8841
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 10:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363531360.12600.10793000758610796929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7e06cfe49678f3f29ccc24aee1e08a3ce9e5a023765980ce2cb5d01712f12d9
Date: Thu, 20 Nov 2025 10:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763635313
