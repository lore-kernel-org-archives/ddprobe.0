Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8A9175A91
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785724234; cv=none; b=jzVTxf1nMbYzypj3ebe0wBIMox9h1m6I70hQu988YqFCOmmPJ90e6OzmmAOgD1qnjqCzL7LRsIvcjGMkVJLefYBbNrH4bnoEIcUskIPsOjXIOPMc5xQI5Y2bgCKdB5WYepbfdnQI42RnxteGEO+TfbB1xK0BO+ghkKRrMAY96UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785724234; c=relaxed/simple;
	bh=ArmF1g0+iJ0tkcBsZQLCdaW66hWACzarI9nBGXSHh3I=;
	h=To:Subject:From:Message-Id:Date; b=MpWLYACIT5E2TY2cKzkv3IM56Hk1J45SiFi1BMRi7sR3kFwKNBUlBMgO85XEyLP0EF9jpPqmSIHgUXO2uCB4RYQQoufflLS434n7viS1oj4VhzlnkcQpD1h4z9lxmfbpt237+dE2Kcf1mWPkRtp6QQ1VInlrw627t390UXVZ46I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGl9aATA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGl9aATA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54A4C2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785724233;
	bh=ArmF1g0+iJ0tkcBsZQLCdaW66hWACzarI9nBGXSHh3I=;
	h=To:Subject:From:Date:From;
	b=WGl9aATA4HXJwkCjWRL3Qm8oHOJfhvHn8JIkRj/Qm6PqspHHOzZeqf7KA8T3mhjFB
	 puARdaSg/h+dYZK77Xn8Dg2ULCCLeZrBRmHk7xC8CPWhux+wejINgAkBA2AynCCl8C
	 WlIcoVPI1/5t0WuZpppASi49aSc9B5aHEUvriGQ+1gGnsThIYYOfuGsIRKbxH3bkiE
	 c2h1GjiD6UALUyOvP4e+Z5iBtL2ZqpWBIAQ4AzaUej9h26WtOBiARxleEyJLYpRVL9
	 PczshzygKZPiNrIPZ/H3nNyJwzniL2rj15E6n9FGAwIMHKLrfhP+1VEZFwRhG2e+m+
	 xSGA4dEsHfYNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2705C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572423369.16359.4395877286733933556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0ec82afbcc5c97dc91c512b84e80587986b89db56b56d32758bbf2dab66e58
Date: Mon, 03 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785724233
