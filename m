Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9A279CF
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748612994; cv=none; b=VQBKwIAMSnUg5D8d9MCm9lF5JXCH1xRegKjDL42Soxgrn+yPYuXfRG4h4IWycOx+J6mDytONGvCnZYiDs77fcHu9rDKowZwa7dvaFfJ3k0PgYgKJclqW6/CNYSbWnupMaQw/D6SLaztO76u/3RC22xaMKFo82mc4IhsLFdqWVyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748612994; c=relaxed/simple;
	bh=SeTcsPq14U5NY32dnbf5ok6zhgvGq9erSuA90HaVDr8=;
	h=To:Subject:From:Message-Id:Date; b=szsi6MmtD7PzQ1aC4hOShrKPbmojhrktWGK0fnM54itH6UHhV3FWyytrs4qSF/ebTUz+fblU6X55KVk6SoP1kVtTJ3V6XZbW0wOZ5kzHw/5UlI5u+3LaYovd9fQlng76C3vlMstv3VBp6BHqe1WfGEQfScPlnH6vV8RkWdjq0+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVGp5LIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVGp5LIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1154C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748612993;
	bh=SeTcsPq14U5NY32dnbf5ok6zhgvGq9erSuA90HaVDr8=;
	h=To:Subject:From:Date:From;
	b=eVGp5LIYp4b4c/feadjYhTxla/ATfP4HO2+xTDY/X481nRjGiLeaUEpFa1G1rLWgD
	 nQJOK0aM7SlS7pSg85bGwLGBl6JzNNxLcRvXA/yizg1GfNBjwwLxLOD/eUnGtDav2a
	 VzEDa0aPVweis1Tpbyhjhdyxv0enF0R1UZMsFXtMQNzoGKrywY3lgRL1/XJwxq+hFa
	 aQQvcUa9KRBIxEgI94mR8CV134g03B8FGn9KpFOrwspruJMxcSyjLMzf5iK4jqPMuM
	 ZiSeLc+WGYJ8/RkSSx4MRhLPgCIihNSV6+LnnFD9U/RZQIqsaFkYcW/AbOZXMuY25K
	 nvABddHdrnOJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE05C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861299357.26947.15145543554173893859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b8870e3613f5b7c3485b78fad1aceb77fc3ed2fb58ca800f007cc4baeff661
Date: Fri, 30 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748612993
