Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5954326E718
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781496994; cv=none; b=ZPgIXVpQfLVh3rf+d+ernq1io9bB+8QxybLfu8L9ZtHfe4rb9m320c2mzwGFF8r1FQScG01ZB0DDg9OCBV1AbaCQ5hjRwcghYAzywQw4SGC62pw8Kcyud12xKI3WW810a9FvHihHOvA99OQdJpraygv9pjQpJLNXrt5KM1nEVg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781496994; c=relaxed/simple;
	bh=tL0zyR2eIxTQm2b1BvuXBFDK+o86VPrM6QjSpETNr3I=;
	h=To:Subject:From:Message-Id:Date; b=DbjzGJ+J69Q6X6Abn3g2WjGddJrspqDQzuBULzluPKaiKj3sU17GNMszox4O4hyz54XySpk+jeEni4tpiR54tnmZ0YnK9DcGMA3zxbiKkn6aRKRQHH3PtLEnjT38ZzidQ590RSHkEwSM+8zaBjCJ7XWhhCgH6/Bxkvz/96hvLtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqci3pnE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqci3pnE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14A7C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781496993;
	bh=tL0zyR2eIxTQm2b1BvuXBFDK+o86VPrM6QjSpETNr3I=;
	h=To:Subject:From:Date:From;
	b=sqci3pnEFeqyyR5g14m/y7QMaadE1rImNhEvHZPtDTZ7DFwH8QuhUOP8C+tQfTXfw
	 eXzi6zdzeJ5KSsWrBWICRacchZrSyTGGCuE8cQcbgsPH2KB+tJG0SAccdB7kR0qeu9
	 bFb6EJ2iS5M52bMI5SWR9abQX+WULiXmFyRo7GliIW9xhYoIs3QP17nRDkvV/tGgp7
	 7ILo+9E0QyyScMm1wkq4oM2qAyUXjkXsIMcQA6aSdoq7lql7a0A9eocfjeEKxOggDk
	 GEflNuP7X/5rHqIMBjQUewPQZYn43olK+ho9RU5vmoZXk0bj4ZgcbgKEQ0OcU6vuxB
	 4Qk+z9vzxkC+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B84CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149699378.17800.7107157938120458730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720484a7b2f24ff7f94e0f79cb842cedb1f60b5103022f9ec0254e05ef4c919c
Date: Mon, 15 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781496993
