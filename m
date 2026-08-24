Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 982BB373BFE
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787539234; cv=none; b=rXC4sO/FynWEIwth0fKJ8pnuhk8v5Opla8VA4eSp9EeMp/zsY7ceF9cqXHVsQQdwLsPvHoI+swbv9GBxDnN7zi0UGlyzXNSnIBYZpDJP27SeWWiirYftCZWuTWmRgXB4PPrRZCiuC4GEjXju1y50E8OhQnUzOwIF+JidZqwi39Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787539234; c=relaxed/simple;
	bh=NKjtiurZWHEcaq0CwokRI2Hd9vjec68dD9wED0cN5s8=;
	h=To:Subject:From:Message-Id:Date; b=k9cpuc3SfpuMdsMTy71hYtYQ+mypCvjcZO+UidAZWV4lv5ceNa74TR3o808+ex8St+b+K6nmtE9+iU6EHzSHxqT0q3325c6TkRgjtYbtwpUj+hQdc62q9OsZcwTtHic+WvdHUYY6z0XTmtekOZZIG/Xp83Ldpgek+FI/9yGelY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocTSNRp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocTSNRp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE833C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787539233;
	bh=NKjtiurZWHEcaq0CwokRI2Hd9vjec68dD9wED0cN5s8=;
	h=To:Subject:From:Date:From;
	b=ocTSNRp3crar9Z2JIgdNU+msij4BTO1jsDeWowEdHUg2+nm0ryDLJST93X8vH0sIG
	 hJ8x0QNyV1//I2HsoVSKD18n00dkPHFY67OHbq8mdL3yiwQf9A6PpqccwnG21IAMmH
	 nulYMTQLo/iMu92c6aq8xHhLigsv/tpHc4a96t4bnG/IEtQH9KUjRrUEeBNSelKtDr
	 mtDKKsrCAy4DKggu0v+KkCq6z4dz6k8MQJWh393h/zGnGsxq4JuTQpYRcbwxYoNgAz
	 4rOxSZZ17/h5+60SKMwo4+w6yT5qSLaDVR9+wGd+Y7ukWHTCULSGK7Olw/uyQ3iCiO
	 EXvipRAX6IW/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB9EC5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753923369.1630.8410722215712493562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75139b6ce6f2618f5497810fa8cc002ce88521d478bcd0dba213dae46ac00765
Date: Mon, 24 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787539233
