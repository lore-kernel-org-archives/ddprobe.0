Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4EA304BAE
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756283994; cv=none; b=Tz+qNdMEKOgFmXdATO2kAKmkgD5dEyTYupIjVOanLNd7T7d+kKuJKDB6lxsCx/jAy44TricYwfBfnfVX4JllPOCMfdZouipqxeNU+nY1slOcYrBElMsHe89qRJvPbfzz9pwtbWSAya9VCEG/n84WeekLkjQ0smSq7E4NfiONstU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756283994; c=relaxed/simple;
	bh=c31ZR8hqnxhpXhyzCT5q8vcsHjHtTBViLtMd3LxbkFM=;
	h=To:Subject:From:Message-Id:Date; b=BDQIOcYRLUn/VeZ5yVNIjI4Y8MYfeAkf3rEM/T3s/QPEm2Q0jiuv/Jj3HM5IKUC40H0uibnWaYiHZmW5ZLP6PdalUNfgtzwGftMpjR6redsefKv37xXZ/tn3Yw1zJdRKf7dFFEPmMbO7DyXT0NWr8f3PPclBAAZLkPrA/KgkHbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mH4YceNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mH4YceNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A157CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756283993;
	bh=c31ZR8hqnxhpXhyzCT5q8vcsHjHtTBViLtMd3LxbkFM=;
	h=To:Subject:From:Date:From;
	b=mH4YceNLwFvn+Z1hwmWNC/JHgMwDEPkmm1084vaO214d0zewx7oTywlYJqL7qOY5w
	 0EQUNdPSARTKPhCGCZOCHFnWR1JoQmIBcbf0W3mfw7N+XWVVLhYD0TeCvoIZwjrrnf
	 yYpLNYXkaSwIcbRFpikwt9SJo/z8Uj6GACl0NruwfPZ29ukDVWCmn0aW/M1RyV3rWo
	 GAHyjwStp9MhTkehGrmyF4N98DqwI+ZOs0GNzh0qdqScLttSlQT5DVzVJ1Zc3sdIEL
	 j2GdNxH/ZuyAYFGwWUDzCpelh/qCtXivkBhGY0fAEHQO0my9fidGY/U4akAQoQbwOp
	 RQRvRZytmVstA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A7CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628399357.11576.12420714189850046395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8c7ddabe6bea6b370c07202bb68dede1035bec84d4dc74ba25559ace89f5a2
Date: Wed, 27 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756283993
