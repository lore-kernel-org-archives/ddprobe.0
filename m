Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F183FB059
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772473494; cv=none; b=MEtsnSM54p/r/sqKikhaO+hD8MtEZwf2XA9tt8ZmkpEd+kKZ1JRWOHHN3av1WpVmCSEozXqqWyBw83G8WYJlBseHxiOi062dGu5yELSS4ZnSbuy7RuCmM3eSJk6LgwXHIm1z5WIW1wicbB5Z5fj/ViZCz7SrmPadt6XTAutClMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772473494; c=relaxed/simple;
	bh=dn8GotpYxRuQ0I8WHWulrFRW/jMO0CP2+6//DyE2Lps=;
	h=To:Subject:From:Message-Id:Date; b=jQmx5mD2Wd94zzWkoort3kwID2KSSCKnIosR1cCNrQvJlW3E1PeY5e63YIYMS0ORWNiN0bGL5O5KStjQba74yBsbn3AOqHOxVDotP0cOk4Uxk3Sn+DGF/AN4nxKieponLAFRNTQ1jzTbdOjwHL+hynGE5DzWRBAx5d4HcRuc2zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReIPKVMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReIPKVMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C70C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772473493;
	bh=dn8GotpYxRuQ0I8WHWulrFRW/jMO0CP2+6//DyE2Lps=;
	h=To:Subject:From:Date:From;
	b=ReIPKVMUtxqJHHy9GyFU43mssI8sNS1SL96WzDIMDcSJkR4BB5aQa/v46t+UItqbo
	 2e4E41t64jZ6fdMoc4ZhjnS3XhQyd7nwIcb0+z5bR3zWKYyMOvLWKY7forzHWlq9vq
	 vTq0zrnCapSFLuuX1AKCt9OioOdbxG8htRANI3PwmrCjEJUeXlB8kHdO3JIgXL6PMt
	 JVMTAVeuN49bByChPnAwokKdt08oHuMuopHpK1vVCtQaWMwndTBHxjvlt8rYH11QzC
	 WXKo5bY7tMD6B5VP1iZjMJ9rB9NgjrSuvpP6wkVp/26RBvhwAyf8b+CtyDrn1riorv
	 xBwcLdow/l/og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F4DEB3627
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247349377.5637.9626500918278736611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded5ace813f635440b5bf9b3de458ed44c9630ab33b3ce6eeaced711cc5a2313
Date: Mon, 02 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772473493
