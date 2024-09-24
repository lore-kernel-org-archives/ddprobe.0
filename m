Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0E51DFFB
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727199353; cv=none; b=LkVYuA7upsMj5XYzbTGfBG+66zp6vdsCrnCzXaVQF5nIpod/G8x1ttKmy1ibhomMl56037DsxBX56BEqlwWux+wptq6qX8O/Pea5wwrk8rhyFbXmINR9m7xoPcYjPql/GmS1tdZeK7a217f8PDZIT2utQROC2hPWcOelc1X59YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727199353; c=relaxed/simple;
	bh=j/WUqKx9zZOlLOkA6llA3NvVElaTakuuHfHbsD3eSnQ=;
	h=To:Subject:From:Message-Id:Date; b=r+jL3bauzkMc7ZibjM6Fx1MliSX9T8pPKvqyazTiu/HHsj42D0o0cBJwI4HU9FZPVRiHy4H6g9vl1KarCNFa90JsYGlg1ysE3SzK7YgvBemDCsCPvnm2kJVtc1JOzRokoPXnq1Vr3lXB89p0o5bR0Qm9gfEmlpy05PUDP7xmkHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9plR25A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9plR25A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40FDC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727199353;
	bh=j/WUqKx9zZOlLOkA6llA3NvVElaTakuuHfHbsD3eSnQ=;
	h=To:Subject:From:Date:From;
	b=Y9plR25A6BjImbL7KMgjDKQ6eDiUDKywWYR7rD26wLGq4332ztkmMutsROydE68LP
	 JnhWMJ2Czmm1qHo53CybJAhgbCcF5oKR4qjsjscCSlcTH0rmoyJGtmIOTB2uXwR31S
	 oTPlPPZ4uBGiK/Fh/eOSnzCxbrofBUoJ3q5U0EsEBVSiCzIe1ywznjYyqebGsFiADU
	 w0W47v0PSsd2j6nU4NaRxgeskL29Ycp9DQgexCdrmUFEBfU3B2J/sOAExSEFxP7U+S
	 A1687V0VD9UXsdrrhMcT9KTP3ZV9F89dusRy5b3e7Guu7iwiLMLTUrY0wdYrViWUvn
	 9DhMGVzSYsB5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9115ACF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719935358.9771.17518377708661752827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c381d575b33bb82f1ca87a26abef9afcc594630a7d9ccf0feb055d1da8ce7a2
Date: Tue, 24 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727199353
