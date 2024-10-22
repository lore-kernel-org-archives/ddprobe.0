Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB5033DF
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729564555; cv=none; b=QAgvnAMiPAdoDB3Vjjk/S6F0qVOMJFvcK1kGA9M1qavZAz0c0gNt3vumxUetEJSuPf9cf93/nSARsY14ZPxJo7jSFQs8JHuNQt1Xz6EanXNGaNZUMehd4/0LCCetaQeC+ow9Es+kRTrqQ74DjMknkohPYI/HmqHfyGIdWlexWL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729564555; c=relaxed/simple;
	bh=cjuAsFIYu2XicWfFFsnWLA/lPAcRfOKtQDUNlUFp+kw=;
	h=To:Subject:From:Message-Id:Date; b=Wjy/KwnoEaLiAJIPu2hk2ljYXiZG3s5/BubaVieP2SZmGi3WdgxkOlR6tBKmP5Im0EqVqxSb7AT0oew+3s0zKBkAgkM59fai47X4BGR+20Req8U32Sr9D5p3l9+QBTj82vxQczj4mKuS0SyidsweG6FHkDUE4KnOscxD6UA73zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuUZ3n6I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuUZ3n6I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA69C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729564554;
	bh=cjuAsFIYu2XicWfFFsnWLA/lPAcRfOKtQDUNlUFp+kw=;
	h=To:Subject:From:Date:From;
	b=tuUZ3n6IeNEjtO4BeUXlbtadhyKHBY2KkNYJsfu/SKT6F6ikzQSe11+Hrc4ek7k6S
	 RW96mxaht6UJfXl+nxBi/A9t44pCB5L+CRnSBrapI8L8i1rGtQmp2ecN6ikLXudCTK
	 8MbkGMOgbb8MeYdvenhaHzTGvX5OWzrKa0a2p0FgFFoaUYddILNzfNXxL/BjUs0fj+
	 IJR7R2MBdMzg/dViFXawtYFafIAebYMhzU+WKhA4SDDW6UNcGejoe+k1J5A6Q4EykY
	 aWWncc9G5YSoo52jHX3ye8NUISfbvXa+jyniIMzXAUN+QmwgvGQLAg8srPWyKzHI2r
	 TSVvIe2DtwtmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9504FD1712C
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956455360.6481.14116860408697491527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4be7dba88150488a25c1071714f3fb95075afa92c4a7d08430320c222289e8
Date: Tue, 22 Oct 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729564553
