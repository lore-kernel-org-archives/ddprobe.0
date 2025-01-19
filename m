Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669262F29
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737261354; cv=none; b=SNohindgbjTUBa4l4ofPRhnDwiy5fzWnmDOtyb8P43RLliCobldjY92GWrAULog+1HgVK/9iuX5IlmtMe//B/VjjWjknGqhx36Y71gBXkxs2Zx8QXH1WTWXf6iIm37pM69YaVitGSbp9ujjQILYMyYeDP9sMjmfvgw9bekasRe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737261354; c=relaxed/simple;
	bh=JHzcNgHGosEehe7Dm4l3Uzp27QrbxdfdVoBi4avZw7A=;
	h=To:Subject:From:Message-Id:Date; b=urqXdXcaPTa/OWTHQqO3ildWmlvKWZ776FFtgEvNOdHGQrAleyDiCMyKRtYzpE4hUXGWWVPODSXrhEukwj+v8EMHMx665HSnxbmlg2T30+7KgIMsMjFA1iig1KY/Bd5hiZlPWTPamJ7nfXyPYRr7Mk4A9nWW9YKolF6Izj8J9V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgDz1oys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgDz1oys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1B1C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737261353;
	bh=JHzcNgHGosEehe7Dm4l3Uzp27QrbxdfdVoBi4avZw7A=;
	h=To:Subject:From:Date:From;
	b=YgDz1oysH5kSvLPGn9rmcmfodbcgc3sseT78MQO9Y9ZXqs7pDR1ZRQmAWUCOAOYAZ
	 GZp63XQwRMALFbsGQrQt5ih0tmpQlDswSIH09ys0rzcMTJqhiiCwsgnAJxwKryt1bj
	 VOOghxiex8EEkkN0iQtrCPx/1cZEBcmsFOJsvU7NnYeXDQhRamEkHFtm5oKCz916sA
	 HAgwTXU7WBo4hUe+mBuheRcxY63B4rzY8geYJ/XahwIA+TCpUrYMjd7w+9EAl+E807
	 RkW/wruZuUWowOJ4WcHYRdsVhz+b+a1lyUb36Vbw8vONz9VKJ8dKovngg3JjQ6Ntxa
	 gwtjrZpRl1b+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9B1C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726135360.16089.3693200540127832221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e4111ed985298178f2b064ad4325ea75b95a96610860db078735721eb98297
Date: Sun, 19 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737261353
