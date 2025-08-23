Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49778393DD8
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755987595; cv=none; b=dOoy1Z1pX4CeWDrQ9GzevCrzZnXaT5Sj07CAl2NlcINRt4CfNE2tcYtHzdt3wGWNYaWV/11M5U1r6IotJKoj6hPM+e86MqFRanrA49ydhjVBkw6pgXxPPzH9ENcfXxj/0oQo9zAX134JevB4Hta4LVsLfUxofJOa4647jopVW5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755987595; c=relaxed/simple;
	bh=tN8Cc9t9HsizaczjpF1oLtQ8McegZk7s7bpVgd7n0AA=;
	h=To:Subject:From:Message-Id:Date; b=hnWcIWWRwixmRKvoidBVFMKK+6GgEV7/T0yOZiqdrDgUuQS2jghSfWC4eDhGxR1wi8moR3CVhtizpt5wCp6jjFJ+zqTaPBfmMtIiT/7w/kQVIIXSt48DDrmLe8xVGiF56MBkOd1omMThnRErIqFS7zppwzjpV1H4PgG18HCDFw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdwJZcKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdwJZcKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F330C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755987593;
	bh=tN8Cc9t9HsizaczjpF1oLtQ8McegZk7s7bpVgd7n0AA=;
	h=To:Subject:From:Date:From;
	b=OdwJZcKR5TWytkQZ4ssnVDA+1KLfn8qCrl+rbgW1hY+cK9WDo1aovT1sk1j8erUgM
	 Xa5l3DhekJdxgE1NSPypTR8beNzuI6rGKNT38VDUrzyuM61x5pkNShDEMhselidZGW
	 zh/Wwl4Swtoho6zToBBKGZqWCBR9jJP7p2NWdE5+jU2tX61IkyDHdMskRc0/1SKc9m
	 1ePEWDg+krNcN8+bAF1aIuBdNNZ7NYo1RkC+Lf872DdshPa+V1Xso2tHQhwjxJRhZ0
	 D1P7MXx+DoenRG+JwlugjpY4rZ3vS58yCEdeKvYOp6B/sLojvyOkDYH23KCAsbUF6S
	 O1IEzDQfACzig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C7CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598759358.6968.10036426435352096851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f58c0f8aceb37f81e5e2b46e040ae606bd89219d967cd8186ea5099897b062
Date: Sat, 23 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755987593
