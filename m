Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA761E525
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711745897; cv=none; b=aB8qQvQAkyxJVvE1iWp5a5EFcoXLPDoV8kKXc4qIj0RKja6k451zv0Tx59j6Afl1e+eIzs8z3V7fUiHPO2f34iZof5vm/v7x3fDzKdBFqWLMTB8sTcIW0COzOFQd6QlGuyq5OP5AqCC2c7CWFRXHyIOCn+cQ7DCXDefAyKa4ETc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711745897; c=relaxed/simple;
	bh=nIOToiI9azjUGNPgpbXh6aw069i4updWqqqTKXeaOsA=;
	h=To:Subject:From:Message-Id:Date; b=BrtpgUMfCna4h/YjDAEU7zt7HYzf9StKohexFAvSAcK0CxgrjDeRMY/TH3fn70QxrVg8aTr0lV3qimiZvSlxh1jUhfrkT+Uib2vnpKmRU6EgaumSMYi8qkrimZD7dMFcJcqea5TsvtITEehFIDPGsNYokGrKgW0aDUrpMiM1HxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm736pUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm736pUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7258EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711745896;
	bh=nIOToiI9azjUGNPgpbXh6aw069i4updWqqqTKXeaOsA=;
	h=To:Subject:From:Date:From;
	b=Lm736pUcMJEMcqsiUcXMJaPsxAtaqY8R7vzGl0ejSICoj9u2PxJGwsYpkHAPJb9p4
	 ssM5ZsAUv0OU7w1JrNItbumfEtbAl2Ef3ySi41QjQHfx4NdXVaKC9sf41m+H5bw/zU
	 evBnZW5BUcjyOYm3cWIfpE8BJS3nexAWj96PcwUllPsyvuNm/urmzK6caH2WIppgEM
	 6AsIHCEd4yXPH8o0y3HxEX8jnaFlykNtLlnHlrMBmi/Kl9qt7G5ZMcyi56T4keAkAF
	 wGPwtEGBClkoFy375qritDMOM7b21xzakvI+SYX8qi9oDSOl2Ll0rFGv0Fy3p8jwIj
	 t2kZTFLmRyDwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CC0CD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171174589638.10157.12765169013375060037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1284fe2ba0ae17518dd3567981c0f2c58d3a74bdb85cd1ee8be05715e9485773
Date: Fri, 29 Mar 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711745896
