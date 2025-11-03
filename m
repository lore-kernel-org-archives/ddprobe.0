Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C9723741
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762148394; cv=none; b=Ga2U7aY7pcdm1Hu/fRCGXwW9JFLicD7JqREoUvlFE2nMnOnfmQtzPS+Y79AeRRvCK5v+GN0LkxZ5JPOTkbxZoXeZHug0Tw620mprD0AgT7dVFtbcCcIudEnMlB4lPjl44o3xu2TgdWoHnAsWEyUVfePN/ix5VRwGbPaI37eHR5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762148394; c=relaxed/simple;
	bh=EFnFfQ7nIEOUEeHsGoTlLfI4wF/dS2alyxzpUobD/ag=;
	h=To:Subject:From:Message-Id:Date; b=Ht8eYk0dgRE8bhpdpwK9lWHVedeGvzOyVB0S9s1uXbrF93BJnC7znku1Ofrqt4IZZbzBVJZd6ciA/VVJzhdorcwlnjUWOZlf13qXPpE3o3C7EgxRg0d1H9dhhGLdjHbhFXrbDqxpJzuesKY+5djPjB5kjEqZoQf39SH40ki9Um4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZM4Z0KYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZM4Z0KYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0DBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762148393;
	bh=EFnFfQ7nIEOUEeHsGoTlLfI4wF/dS2alyxzpUobD/ag=;
	h=To:Subject:From:Date:From;
	b=ZM4Z0KYYDf12dfQQCAEhoasT15c3HPKWXtyRi9a7RBNehHKgjFQtc6S2/jpJiaHkF
	 Q4DADKXsf7bAEEkQlXp2oer+DHkcAz80FocD76Sv0mgQW45SeWZmHyW/fxaqlVMH5o
	 AmdKUSOpM0PZRUOv4HOi94k9mKLrYRe9JyYLhm9+EziwvFsGe/OpFCBCHGfg2chhkz
	 xfxLz9/GROhZIxAr/Z3TUq1Ipqg9pSZSx17MixOjDhdY19pnD5R1XDrvSACGadTT0M
	 X092wPLyhDIWMDke+YmH6qghIPzIQO4gPqfoDzzhEqB5uFRbBLRCZXE+qI+gAeQklf
	 PusCgZvJGefOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955B5CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176214839360.6316.13287840080034584709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdda8db41d3c84872f875feda387111f390d173adfd1768f95caba983a85acea
Date: Mon, 03 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762148393
