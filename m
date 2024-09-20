Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1786614A636
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726838154; cv=none; b=VQ+ixNP7PHhxU8VvKo/rzlcjUL6gCqiDJVSzeSti+4+a+bmBeA2cvh87XUtbBBJlUQzaUQZaKoKocYNv9KZYJfoFaSTF9vfgJZZEwa3irQCd3uSTAAQmTxqxBtgJ+ft3I/vMoQvRd+0r5aftmgcpXNHcdxN1FOol0fV8LZh6F1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726838154; c=relaxed/simple;
	bh=GKk/fbQyecFbjnjGl5DQyFtnR04/EEv+uPfQ7+yS0yI=;
	h=To:Subject:From:Message-Id:Date; b=IsDSn18RwMrK7opM2sChn64wYtgb1LV9TPYC+PVtRrXYlutsp9XCDSS/+5MbNH6irGcrrvIdA3NQlRi6z3cLPN3SguHMSoilBIVwQcjQJbRfy7GmYJ8aDVFk2L/MDvxWfpPCsXQN1/u3O/gtf++v3xWXXC8msWtG29/1kFwekKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJB5JAIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJB5JAIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4947C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726838153;
	bh=GKk/fbQyecFbjnjGl5DQyFtnR04/EEv+uPfQ7+yS0yI=;
	h=To:Subject:From:Date:From;
	b=SJB5JAIYgoeQlaI+4lrcZ/DJnEumFgYkGy38Ob3r+It+eZ4JNe6gl6YfFPWf5ZZOa
	 1Wg2LkMdFWO7H2d/wla3z5dsSjg08mjJKaeen8OgEH3O6G05FKXvZUvgWhgaLsGeB2
	 1adBJRe6rZgvw/okx05mWWymb9AVK+DNxK4RAJheO7zomhNrssVFAmkSVAPuYfGsn4
	 pIy7RqMTlVUhDX/HW8dXHL/RVS+zVsUZDPtoP1yRSRo6Axl6yICSHxA2OqkweahKb2
	 ncGVqPzFgHhEcWSj5lCThnpU1DyJA53wCeeroS6ma90awmENgmM08Cl20ifw+tRDe9
	 wTwxhsNesca9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C4C7883E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683815357.4952.14853050609327195779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b85d0d2665c2c5e2b5f3c55176dbd0b5179995037218d3794ceacf25bcc340
Date: Fri, 20 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726838153
