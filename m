Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF572D4811
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756943394; cv=none; b=PDsAnqTS/v3TOlFMsWAQ7R/aMsWV7klAqaXW0PWh15Hc0OKQszBpw3K/w6JNJGPBRipF2bEqfA+9NtSeokxmyPsIBOC7DbKINdh7nshcpYC+0sDb5WLHjlH2X11WvePzICB7f4mDsqWqyUfx5FmfVs3lsop8VPKcoG3t3WiL8C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756943394; c=relaxed/simple;
	bh=gT7v6baHSDqQftcLf3YprA+1KoS3j+mkw4CUAaa/pmY=;
	h=To:Subject:From:Message-Id:Date; b=qF8jKhWQ8omCrIwhT7RmxhYqxgiAaMSQuCfvaTIPVr7YIb3HeA/3pxzqPGeZ6B2tO8J2b8rjzPGOG9dpkuaSzqfBKEfCsbuLKE80t1lzm249hnJxVwWnr++LorEnVAstr1Ae9d2hhmjy/aJgkYMKOpToSAcAId3ry+/QCSwe42M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWO97JIn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWO97JIn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC029C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756943393;
	bh=gT7v6baHSDqQftcLf3YprA+1KoS3j+mkw4CUAaa/pmY=;
	h=To:Subject:From:Date:From;
	b=dWO97JIn0wjR+yXBXQuRv8sDkK/JYdGtzYaRxJvXJGIZPHlILwrTQC0hP20a/56mL
	 EVR7IsbnCskJoeAry+j6VraeC8EWcAglAjTrB6s/hnAAp69I/qqBweSWikrWs6Awn0
	 yFWBjsiaip+CBl5s34lmy0t1fUcrYCEieUnDFB2bQuouO/Xm6NlhKCwdwJu112KH5n
	 lQoQ6eF+jtziWgGFItDqmCbk1wpk36V0pwvF/2eZbw6fp1v58dAe6KEUqM6eoXPUCb
	 JqTl8MghTAP/mBTtqlHDU9Qky3Mj84sBRplCcaGJGomRa8LTyz/XpM0RxWRWLsudAL
	 XfnT0eFJPr55g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9062FCA1012
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175694339358.18032.17489453440702676006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f3428ae86cdff80bf08cb653bc6ee0bc0c8eb19b1d699baed33de56274e8724
Date: Wed, 03 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756943393
