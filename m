Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F55635B62F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790396434; cv=none; b=OcI6hjG+Z6zjAKEoSxvL/Yi9mrCLwhQGZUE0J6YSS/eH3jGyqK5rYwp9aYR6vqGB17dj5qCqP8HEbXEFwKwr5RJZpaJXrzpYzQMliHHUq1Peuh3Bkxiryykla3VI2iDpjj/DQsqIOjupc9vYIQDOuJrDfNlI9FcWo0555EtrhgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790396434; c=relaxed/simple;
	bh=e4UFcCdzcgT0pQzcorejKC62i745XpOWEZ8Bh6mxO6g=;
	h=To:Subject:From:Message-Id:Date; b=OqgOo1nTNRI8ofi4CAoqF4RLr4YImz/zkWDJQl1mUeq++CgE6Xi1o1YkiBANC3PtTZJH6GAz28syAZfo2w4v66r7SCFPaXmf7b/ChcVHHYuvBTxTldEY3htXPVFwE4pPEDrqR8CrqjRtZQxUXfBRmPDHiJmSgyipQF43cdYrBGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtPs+CTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtPs+CTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF113C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790396433;
	bh=e4UFcCdzcgT0pQzcorejKC62i745XpOWEZ8Bh6mxO6g=;
	h=To:Subject:From:Date:From;
	b=OtPs+CTYSZ5KorQkRPaOdr9wOil3lfiQm4eBCgD8K7bQl9gmFc/0hk4eq8WzzyCkg
	 nWEpMIAV2cV3hxRmeVtsOOh25iFXVKiKv8ObwPHJsQsfcXKNbJ6aYeNdfRhb5dFChM
	 V6Qx1hMrlCU7Bx/X5Iunyhb1kHH2xyqRTanx9YSigg5krRzQh1Udaz49MEZAezRc6R
	 U98BBpHgu+06kvm4ty7xUTfVzWrdZEvNQ8u2p9Pe4v74BzbZAwth2E9OP5SQ9CwqF8
	 txwF1T4EaHk2ts2Ca0c2EUqS4zuqt4ZftGXeDxRWuztvl3LVR+jdoCdsTiwGFnsI4L
	 9waY0FvfIlPsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D8BC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039643371.14679.4327887401750513272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585529a55e4545e9a6953808b4485c53ff0372f6dfbdda369646d36d8cf746b9
Date: Sat, 26 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790396433
