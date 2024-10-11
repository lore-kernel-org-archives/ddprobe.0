Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117781D12FA
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728676554; cv=none; b=JwpqaGsZqaVz4olVf9+YuCmpC9IN03QQe9lFP6bnwHWFTnmo37P/hP2+JHnq0ndIdfjZi64leJGQ6i0+YzlscIRondKFiJBwZNFV3ScWU+akExcSyTFurtBQ3jfyolvk6SERKmntJWSQ0m5T33DTofd5FEwLB9DSLrk+S9b8C2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728676554; c=relaxed/simple;
	bh=4mO/zLSpELRUlLp8qyERKBpHAb7jtTR90T/eYmRKVdo=;
	h=To:Subject:From:Message-Id:Date; b=ipIrWBp4qRWAEiaBrGTOvPgnIYKQt9si7fR3P7rtUVg3m7h0T25590QlLTOCtRAUIonUZ5GEP5rBmf+01MRnyxf2BvDCSu4Yffv/1J1LpzVD/BB1XBU9m0xBUlFpd+rUQWm1iXYbUPcWyRU1/+WMnldlIbIhsGHkbjXrTfs+aVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkgc3O/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkgc3O/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15CDC4CECC
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728676553;
	bh=4mO/zLSpELRUlLp8qyERKBpHAb7jtTR90T/eYmRKVdo=;
	h=To:Subject:From:Date:From;
	b=kkgc3O/MboW3O4tnSYJmINt4RbHEooWGqV/y2ofDuPwrSkmBSeBWzza1TG6r0Gm1X
	 WTbTYmbBSxSq6Mpm3C8lh7BZCOZ6HrFF3oHLrPl8mstqMY6exM0rRQdX5iWKKQhaJP
	 LfCXb70oQ64R6xIZ+FNZbd7jpFtpz+vZJj+YyI7BkOBCKHkqF6XpLprzy9kPJmgFzp
	 4yzlwHyPYc4hCjNLPzzvR9OpEZDttVEdciYLN7AEjt4/Uksk3km+l9VpUO7aVDHjvd
	 1LxuetZYCBfCW9OgczhLaog9DBoSc4wsTzH3KCcox+sGDWn8q8paAheuZwLb8BHyL0
	 yuk2/1qs9hTkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F637CF043A
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172867655357.24171.1471193867258800895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 116f35df83990cfdcd1b1d7f3d83e62b2460d1a682264b5357727901cec2bdd5
Date: Fri, 11 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728676553
