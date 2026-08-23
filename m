Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDD249362C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787463634; cv=none; b=W4d+uaWTuKykEthaMrDL22Nr9ErE83pVrltXk/mIOSsiGRFHyaeWLoZ/aZ3QGPL8WGRyGJnvEg4Q0KEIWlbopiMBwPNIJRtWl7t1tzRcbgEPXuNhTHnJtuwslR0Oa9VG4ytWOKk9MPGzMfBBywPc2+7uTawAg/8ccng+wbiA5TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787463634; c=relaxed/simple;
	bh=K0yYzbC8O2B6UX75I4vYoJt/yQSAqZv503c4fk0t+bQ=;
	h=To:Subject:From:Message-Id:Date; b=bDfmrzzYK4w6LNXZrWCRjyRhP3Bf5m5jCoKXtUrGNaDVHHb0yXLNwXC7/Z5pCWtZ9OgIZrX2mjVxsH6LbXaHcoFVOYRAnYycr3arWFZFA5RczTf5tez5XmYx0xd1RwckPmNDUQ6A91FLRWUm4BMcdCSV2aijblIIELw8k50CNYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnV15E+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnV15E+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D788EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787463633;
	bh=K0yYzbC8O2B6UX75I4vYoJt/yQSAqZv503c4fk0t+bQ=;
	h=To:Subject:From:Date:From;
	b=JnV15E+FIDvhHD2zZajpa8ke5hF3z1zZURHLP2DN2RqKaLUEfLAAVHXRYSGH/eT9m
	 f9qP7QuXI+05H1KSn3+v50QQIXMO2pAquVV3c1nXRCcS0XTq2QEjHpRjrJ0rlX1UKI
	 JP/Ckew4Tu7GD7f40F3TvdKtxeGfDN3M30q9p2+1Nyidx9YADk31zt9iI7mqCKpaJG
	 +WsdJ7czq9oQyVYSiWpS+pDJOBl/AlvBnCVj1KyxRZ1svAVjgKoIXxAOLxkDJOKCWp
	 zHGyITSn5eFVbkQCB/MjD8pWr67mheSO8P9W+1/ccsFB8x+ouhh86zM6Wqk3ra7jjD
	 KsWYGx0blfxaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0BFC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746363368.20639.12413463014224546368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7707d1a92c5a557a08d2507787c0c1f70a2a0207a80ea389baa30ac5523ddc2b
Date: Sun, 23 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787463633
