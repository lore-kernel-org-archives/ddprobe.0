Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A801FC0E7
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735924554; cv=none; b=h92WRLlvTAX1r68SRSzfU3e79UYHdHZzn2R1f2OCjkfcdQQukz5Sn6yO3sGSPZ0oDbEhyDqAo3WRGv4OlNH1tsVRqjqD268Amw2okrL3DofDFQnBcqufCqaRVPB0EIoDNbHhcAjsYvyvdgi4AhViRfOAjJNwpcgwsgak3vFx/P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735924554; c=relaxed/simple;
	bh=uZRhwmJ19o3K9UibvqQg0y99PZOQGKNR6KXdkyrN/Ok=;
	h=To:Subject:From:Message-Id:Date; b=Tu4mFXHl7g/z4UmlL4ztScsNynETF0H73ybI0uAKANX/dn9J+xPMun+tGYAgGdvXU40d1Weg0mLozKwQkNiMDv9YkrI9DVSY9rrwQ9g+n+rCZUOOad7A7iCK2daElCYayyyVMHf95i21GPTRxp5OV3ZQWDW6fNciEgZIGb2BQaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDgDXT6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDgDXT6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8347C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735924553;
	bh=uZRhwmJ19o3K9UibvqQg0y99PZOQGKNR6KXdkyrN/Ok=;
	h=To:Subject:From:Date:From;
	b=FDgDXT6N2ZsqQxemzyv569SXoU3lbEiC3kkQztohla6OBBR7j+nSF4xedqfdpGM9h
	 t1q+2JwXVFpQ3QceGBwj6JrInfAUwl2ooUcdjHwUhLoJwLUG8U2/jso4wYz76sRr0E
	 RSRxIXqblc3ymS+A+B89mzpynCE6Jz82EIzDeawSDnKNhGbeK/b+w5pb0906iwnJr0
	 p6cfCmXKu+7js3lbsWq1HXRhf+UgYiHzKjBAsITpc3+JcsND1gd+ABjhMOA1ZsaxvY
	 bVBVYOsNOxp+erATyeLKHJuEPdfTl4ViBwNOR6nwISvZ2y1e7hcJGrus5LTpQrtk80
	 RUNsG9xzZIrbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC8CE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592455359.661.4038210745645534271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e980199d879557e56053ac1231bfb34e75f9f54edccd39fcb1a52c502d5ddce
Date: Fri, 03 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735924553
