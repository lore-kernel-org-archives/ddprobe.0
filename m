Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9650E149DF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782560314; cv=none; b=ohDYeuly7BaKVb5PVWdP1lOb9sdcu7xJ/UDViPdc7Jtq9PKOUujj1t8ve/IP+9l/4tK8cQivb7YXvGYFusgZhoz7yaaGfMorO5URN/2Foj7EnrzKfiDtffGjWMqXarQjS7LRJt3zXxi/zXUfAakwsUuZFpxSDcA4lv8FsCjDkR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782560314; c=relaxed/simple;
	bh=MECOJ1aW5wDS/GirLC+sWL31qbjdBkC13klDj3culhw=;
	h=To:Subject:From:Message-Id:Date; b=pc6gDV2ymEWYwhiXtvH1681xBNQdP0KPhzRwJIiF1gH85DRY6uUXuXYqd7g8pMsIJrC7GTolTNvZXngsAdYTJxxx4dNIJNa/6DoBuNQoN8I5/u8oN1QMfGirMeI4Kp2oV6aEtqBtBKCARCvOxp6V2e6d/me2ndkZwELokv5GeMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMxLEZM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMxLEZM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2405C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782560313;
	bh=MECOJ1aW5wDS/GirLC+sWL31qbjdBkC13klDj3culhw=;
	h=To:Subject:From:Date:From;
	b=GMxLEZM0WEb0D4Yw7+X5OGy5s9wJZLRylTSNO9kuTEZbASSNC2TLGA2y0kSnObogr
	 3gALcTnAAJ+OXeF/fIxSN2cpuakh9G+o3t7W2fyRNtcmhU+FFv5f76XwpbEN1aNBo1
	 06LDnvUjujaTlJtfFSb6EYT8ZNxp97D5QthG7JyUEX5HnORaLEwCJdPUS2HtDNpIRr
	 C+SMtoM5/LJTrB7ji6jX5FGIrQVtffW0x3Y6+/5gs+ZLV17+Av/hpONRPy5/cVjeK6
	 RWiod6cHOMNCZLTnOefznwszD5vzy+G+Od0PVAv6Vu+6UTF5SznFouycjfbRncpnSj
	 25Ydg5CJ5uzow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35ECC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256031369.14917.8342298345892679344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d281ee01ee202fd42d1150f28cd69d0a684d579839ec24f36dbf280f720b56
Date: Sat, 27 Jun 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782560313
