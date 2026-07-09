Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AB44343EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783613914; cv=none; b=cP68fO1UyqcuyouYqQGrLAHQnAZ35gafHFQkTE7GZsftdBe6B6VDnAhnhst5+luYeFMIJsrzSdlquxuuQnthOtt0FPlfoirlOJiNi8qoD+6B3yr8QiCuseNkpKcBHdlIakdV7ooOR0lYMZnd3TVfi/iYZ2FzOrCKFj+DyS0qkHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783613914; c=relaxed/simple;
	bh=xVJKAvl/1Ss1hnzzKnfsH4at7Me0TCvc5stqrGmu+xY=;
	h=To:Subject:From:Message-Id:Date; b=cOSnf7WlkmXjYyHc8khZlTrQL4A4CgJioylhobdwOMoOITdvk+ssSdogAvrSwSOW38hZ9qOkftT5bzeYcIAzEMI1NxCKsLwN/rSGR+ZT0exwg9Dkqr1IsztRhYMDnZVk62tBJwkISl+NM4eI2wtiqOaNHwBhZODmPdB8IM0G+oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxpjfI7u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxpjfI7u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA95BC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783613913;
	bh=xVJKAvl/1Ss1hnzzKnfsH4at7Me0TCvc5stqrGmu+xY=;
	h=To:Subject:From:Date:From;
	b=TxpjfI7uAJyh3ljDkj4b6Okae1ThDAZycnRXrxC3ql5Kch0GWqIt/ikpViA6lbF5G
	 sQTfcpfyo5vqJPDCJW4ZrD8krFREAYVyu7+VPOPudrm61BiLcqIPuXUeU2cS+tFcxG
	 ZI5+q3Mc/LsBuap264PmfyQuOtW3CvSwXuf1duz71XWiOadp6HXfM6RBIBDJRiuqWi
	 ImmrYU01Sxw7yRt7mGRBwjxQ7lby8Vwx/3eXI5P2EnBE+3h7Zz3/4Ys9tWecmBo3mK
	 h0mHsOKz/WyjcPID6swVxYIrCOk7FD0PT7LLtb/brnkOrFXlN92xkOur7MMUABrT1t
	 LvcWwRPSB70HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8455C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361391368.13513.11464555624841739337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460ee481cb842c1088bfa492480a1a716806ba8f35e657338c319fdadf36d044
Date: Thu, 09 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783613913
