Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2288122D4C3
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770689634; cv=none; b=CDFQRssGtXggM2mDTZUNKi96fcKz7ztTEOiflw55nnVrL+AjLG8PdGa/yijYaeBauSBeEIg08LaaFfoeMW2Z66QVySl8lCXLLlRXVosWLazqJ4vI+jmhUF6Z9QN8klbzMgrDRuBy6wxByJHgfIRsmLc8bjwwxAUwJD4eYrCeLOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770689634; c=relaxed/simple;
	bh=vMepMtIac5EkkL8BgPJ3dsPbmjOoCavP8NNAZkF8y7s=;
	h=To:Subject:From:Message-Id:Date; b=n9IWGiVL5/t618wfIGRZH8XwivEjUBpy7pznIMexl3jLqStiCU+wPvGvGiKbxm3l4l2nM6waRFMe/eH8EePhfvrcCgzCE2j0xtWD4KP2R2bsx49YbD/Uh5pUgVgu2SD/sW81ZWeHnIrOlKd/qYoW6t0x/l6wae6ymtlEhC8m7Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OT2fd/0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OT2fd/0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAD0C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770689633;
	bh=vMepMtIac5EkkL8BgPJ3dsPbmjOoCavP8NNAZkF8y7s=;
	h=To:Subject:From:Date:From;
	b=OT2fd/0j2GEQhaggkiIUqsnJZKd52NQYbsVPk+Wn5zUc0X1eH/dguKE79MyYhqRrC
	 80DBiMiqMNSG7TUdisba9xPbYGZWoCV71hehFV40FXjK75O36qSz6qpUC7AtDeFSMA
	 ybYlV0kDnh8Tvr3Rnn9vQLqZGvnCHZjYZXBe/pSuBEkKnOycrg0s2mNKpmp+e93RbK
	 nh1Grcnx/LGy8QVMsVkVPXCXBE9rmM1d/TmLEHvlbwyPvp+0aHdidJlNrOp7tnqMfr
	 v2lvuOfsd7CFJyoRVXPTb28ZHW3fdf4uHXB/zMizUg/aNi34VBpwtWWfp3l8nHeLXV
	 XVrG9Py9E2sDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C06E94625
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068963359.7346.5510704982921988876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4693836e347c4c5db5b896dbca92e0fd38dbc4e6e6ea403cad76e711fec24eba
Date: Tue, 10 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770689633
