Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF88C34E760
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761068993; cv=none; b=S1omjO9Xm1HXTLhQB6Hwwlnw/ObQgmx3G1so/p3PI/6rpoUBUUQbdiKQZRzawqHIeBJlvGNYDkZQkD8JYaUhTUr4ALaXlevjsDyin+mtYo8a227T68wYkc32VR7YVrm18iFCyRgK4dFgj1qArqre0oOD6hrPHhB1FsYhQrYuWZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761068993; c=relaxed/simple;
	bh=lBoVdwmqiG2bpuKrfsDMBMhpGDLt5lNbHaV4h3opic8=;
	h=To:Subject:From:Message-Id:Date; b=X1juN+blgXuy+zl+jTYiGGbDCMupmI0uzY08Os8yG2mp1k82TZN+sC9Q146Rnuy5HAyZDYszUDyhp9v5gEoSN1CLa6NtKiIro4i+cUXkXq6G/ZCATdLGnAVy1o0YCWMtCGISNefsHf+tDEzyAAFG85Fpkgp1ACCj/HVyutUT2Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6+FWz9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6+FWz9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F3C113D0
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761068993;
	bh=lBoVdwmqiG2bpuKrfsDMBMhpGDLt5lNbHaV4h3opic8=;
	h=To:Subject:From:Date:From;
	b=L6+FWz9mlE3qulZG1LC91O8NPciD2b1Wx9+SbTXH3dTydmVWsCl2KCWtBLJFV1kvZ
	 /ktPG8saB6ORhwD0OH6fWozHn65ltBU36Chw9yAQ6UEr235bUQjlo3gTV3Tw+r9Dri
	 aIJuJyh0sLXS0n5UvcvJcvItDIVda8YXGfsfV6nb6mbEohk5Sruiry3FbEumc7sIAC
	 dLKQrCigJzsxBY6BMqQHWLuSfoAqRRV5g6MQXc23iArKSK+KLkjc04iQnWdgNM/u6x
	 iE3KZ/eWPVyKbA37goLit9pwcvyks+05aLigc+hClSUl1N2DsyHrIa1rALjYeIU832
	 q+PJNngFSHdxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926FACCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106899358.6189.10967389196119257578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41a0f36db984bd575e39290ebfff3458742a8bc93500097569d7ba7acfb7aae7
Date: Tue, 21 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761068993
