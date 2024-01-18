Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79731EB36
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705620497; cv=none; b=qycq/v6luNwFytzMAjJbjGmXLCKmEARkBYR9QjnbKhqKRKTJI5dMsYMZXsXF1cjF8mDn5RTO41njOZ1aja48neyuFqGbSYmUntSeQF2BwAt0WHsn+xeMVDzQo5uayHac26SVP0REwzVPeihiP4cRRQUe+/GzKIzHZHHzSecW9vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705620497; c=relaxed/simple;
	bh=U+SRM8YL85cbfRuroEDieGe0HMRIs5bevDoQ4s6lypc=;
	h=To:Subject:From:Message-Id:Date; b=t/NaZ/uRH7pGKnuGyZHBO9wHdiHcYT98JxZbfzOebShU18JcuAmdHZGTeEHKlWRrj2VW/tBRiiU+/C9Nrf0GrQdxpg6793Jn+9TPGHqQzIiunPmxuXyIoSohvBL1rLGZL8bYgsz3Sh8g6VmYFJaosSWualVM1xsMERqOywXlpc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7mCoyAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7mCoyAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A49C433F1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705620496;
	bh=U+SRM8YL85cbfRuroEDieGe0HMRIs5bevDoQ4s6lypc=;
	h=To:Subject:From:Date:From;
	b=t7mCoyAkZoeM1DqJut5ftiJETbCKnDxSDeUSGzG+ELYQe8QIKvKmebhSY0WvFdnxm
	 H9ar6qbiGSQgaecfFcgl/ClM97ZAdL/xxxSLaGVVoZvu7pWxYOD+qJHXPLgji+6ykF
	 E7MtroBnO/mzgngI9fwZl88MjZWOUmVjAmPqlbNjSQRC3W8Owe0Yb0/+3UrtuWQIj8
	 fOLZ+7zy90RhEcdlptOJGKg1yZokAmDc02PMPA78xJm6PgT2xZNFivi84irrIxV02s
	 NCJtERlI513srdLvwOaeKd5aTB+lY+or2Dde+o6In0gFT9XqlmO8wayLcufHvKD4UC
	 HhqzCDv1ekWgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608FAC47422
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170562049637.2696.14129128757736985751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13a2ce08329fb99db9df677fed2f742d5b8b80ae923677aa54de392c147f739
Date: Thu, 18 Jan 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705620496
