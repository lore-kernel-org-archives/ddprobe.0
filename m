Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3767A79D2
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747786794; cv=none; b=OrtIW8JsxHWdLfxTcX17oh1fOuO5/7WHYVoT+nBxlUYhL5UUZ23kglUl2t5phKFw8o8MdDJcZblYzMhwERt2mYlIAOYNkXAvH+kJG3W/FKlKigIhpk3liIby4osDQ/TBAOmEdMne33H4seyD29Yt4eWyhYx6xHcHwknV9Wo1TjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747786794; c=relaxed/simple;
	bh=Mkm2Y6Dckfzqfl+v1UzebCOTvwlRhls10gi1j/ohbu4=;
	h=To:Subject:From:Message-Id:Date; b=I7tueoBKESiW3R1TRRs/x52ZRBuC1whFWZo5Yvmiw7oCBU9IX6WFgg+3/cAoGi2J70MMVgxffMQO7yNDnRPpkCFlYzH6gbP2nPzGkYcQqHucJiVkyDgYcNuUXGRfDS4NiwK/KEeyPROSwdIEKrGYx4psvByBIg99uWev/RKpBN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8LLrPKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8LLrPKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4744C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747786793;
	bh=Mkm2Y6Dckfzqfl+v1UzebCOTvwlRhls10gi1j/ohbu4=;
	h=To:Subject:From:Date:From;
	b=G8LLrPKFmyH9BYluNv/nCMICWbF07gmVDLIBm17G5p/PHrvXEEaw0sigghCSibcyP
	 6jjTmrgIIfZnVZ8xKJjQsY5jh0FdFQwuJ5yfaro0eyK67g5PjRKDN46E9tBD0D85rG
	 wCRFNxbmmE2kozA0dyoqZLW7ybVDDy9Qg2UT0ZM+qAv/F3zckwjIFUukA4xYwUc3Cy
	 7x4refCSKqkKFDytajFnxXNahEPlebPK9ZHJQDsc2iL7vh1wlIwqkgaLmOvcJtGZaU
	 +88UnKDqBZWkuxtxhtfQ2aF0tPzWj360nRgwK9cbjAVW88kFjuVimKJ2Z28ezfqB4O
	 VwbAunaAIt4Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B21C54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778679357.3778.5178064279574259354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d618f6b1777a267a1848cf393b24f929e87f90e459cf7a71824609d4be2a053
Date: Wed, 21 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747786793
