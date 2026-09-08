Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6165C3E410A
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788898234; cv=none; b=V7GT6T56AvY+E9FyPk9YkUdPegNFBdSKPAOSSLetRWPv5wPmCosnEZSiDfL+04t37MtPXNaa/pLi5o5yLe6EOXvgaNpqcqXHpt4rad4qbyqXZp0vGw9Wb1sGgTL+sudAGklUJxQFH9JI3uurixSTbGuZgaLj54AQIJo0yoK4xtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788898234; c=relaxed/simple;
	bh=lW8ej5rhlXFJrKJrxZ7DSZl02xO4CjRvkLRrg1ylIYo=;
	h=To:Subject:From:Message-Id:Date; b=pwXcJtuo2xVPpKniC9xZXXctvpMLbOBy13aaqnctrTAsU2ATUU+fhbxlUZ09ClTgwi55OPKdsmvNw8DfWWH7jJT7w3wqdbRKWplhrbVm3SPcOLBeKe7NgUWcCaj0U/DTEhshPLU6agvbVIUxWhy49CJITp9hA+ScO/IQAdrAtEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+UB54ZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+UB54ZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3726C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788898233;
	bh=lW8ej5rhlXFJrKJrxZ7DSZl02xO4CjRvkLRrg1ylIYo=;
	h=To:Subject:From:Date:From;
	b=C+UB54ZRLZn08jEmc825zz5AyNrJtQ/3GKpsI9KLqMGM0tceooeNg9YSNbq3noome
	 mTq+oi/bKfnjAwYiqlmMxle4B+cFgwrL5t6QS1uYaz1qiLm4p9QL0taDk8U1ty7ux/
	 LqHe2+/BG0ZuI3UTcCFD0ARAxaQY96bfETwMPeF3odL3FuilLFtNVA6nnTO58ch9Ib
	 12ERXeRPGtzHseXP3uUEQ38vv/r5HVPqMBpFfxaF4Jkk2DaZD0xkUhpthnTpEoou/f
	 biPGziVcbM5S2xYc9NG+kPNFKtyLogi3jmxIoii8ApSTijeADP4FSfdjOHBys853Nf
	 TzaMCf7wW6nrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB552C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178889823369.18283.12610862360245668505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d4b8bdc7e92c32ad8d524ba14d8577fb5f28b7ac76d93bf02ccb70f9296422
Date: Tue, 08 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788898233
