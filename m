Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2A335E952
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774089894; cv=none; b=Cc4IQuJfYFguUy0YjehKMP3FO4KmfzFgVtE1CYMEwRyNcr8dAybmur2ketfjfv3oS0uhHnz8DvUaGnGhBKK2/R9MzdGz90rnPhpHNgbgYokMKyqJl8jstvQkPu+jRj6Ppu0gujJ7PQe95YCumaq5+BUGRYOS0I+GoDga5SRJZgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774089894; c=relaxed/simple;
	bh=0INRC/8dmGq/gCwqZkK1MZzCbJzWMhxj2lDNa/iE+Yc=;
	h=To:Subject:From:Message-Id:Date; b=Y+FiMjyBSQ5o9z/VUtk3WpQLewmKmVNAFIYfuOV3cL/omXYA+r/ZX/A949raXcZp6U42NKY0G6sL8GujYv0I3C9ZOFwyZemCvbUmeNHIk/hogNVr/7J6ONvQJYaeqS2dJwJCm1pfLWCMiTwRqWM0dJivxsbPTeOeSKdwiE9RSaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Znx99APe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Znx99APe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C556C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774089893;
	bh=0INRC/8dmGq/gCwqZkK1MZzCbJzWMhxj2lDNa/iE+Yc=;
	h=To:Subject:From:Date:From;
	b=Znx99APeHm6cTdN5dh6iAaHDpzqeFSpSfLDpluINEkvI5Rc9w5AIASeaZyQWRUMKG
	 /wjlrignsFC2wNtgvV+KJ45Qvbaq0a48F7kPLFX9yfGSNdImE/68WTL5MuHfeJTWsa
	 q0aHiH/5TLfL/Y+vqkoW0tb7ARXhV8ikZ8BgMAEfL9IjidRGoNAg8cxp+uttzNVYLy
	 75wqUM/8U+CyJUhAissQnrezsAqR/qZBXCFiSDFWdqMGt4nXKkfsU788WV6L8XKOua
	 D2yQhM7IFACbob986TWpFCmbElqzty6Rv6uCVuJYuSz1fSYKhKbdytFGeX2zuPUK7n
	 aThKLqKYNCjcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB31094463
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408989357.17808.7598682694599599114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ba004db414e7453017fa9ecb6f401b17e0308c5452af26bcce37b84574f698
Date: Sat, 21 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774089893
