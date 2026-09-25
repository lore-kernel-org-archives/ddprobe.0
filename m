Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657AF2F3C37
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790362234; cv=none; b=Do08o2O6vwJ/lOFFL2UzG5F3dtuRb5BQO0FDG0zem5HoAKNcRYi5aNNiyDydgc71z3JFediRRbV8mNySgCU9nRustAtAf2RbuOGCQkGRrJeXquEwYCo8rTHq4B1wyCr+gCMwfThe2EJPQoduXxFlkborica1P31HN1y7O5WD21k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790362234; c=relaxed/simple;
	bh=OYDIViZcYRwjqYMcz0r/luJiilmPc5kqfh+hSp1MYag=;
	h=To:Subject:From:Message-Id:Date; b=ZvquhBTJ5P4OSb1qi6aCS71JWtpWvBgXVhLEwxIl8lfr83V/XY9GvigB5irJ/yaCRZ1x/H5qb1KO42p9EmluqlLnPnMULsTs56+vXZQRjLh4aQwavexRfEj7K5/7jtMAiYCZsSH6suHGvo+9gdULCZ0xcj40v9NTmn9dj4/Iy1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyN/hT+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyN/hT+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E71F5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790362233;
	bh=OYDIViZcYRwjqYMcz0r/luJiilmPc5kqfh+hSp1MYag=;
	h=To:Subject:From:Date:From;
	b=eyN/hT+Ej7p/Tq0aiolTeFx5L1HiwABDTD0fNEBD57PXcwni+E38RI1ZJlWfsSzHW
	 IW6kjlGtUpC1fjFMzHd8KL0ixLOKWx41ZPBKb9XvByEVzUf2PXMt871rtaLmJA1+C2
	 mow41yT4hap5hi1JA2nZc86/fE2aMwE6hzHbOHD2/sitbofGjWCwTmKfhIVqvV4flv
	 bG7Y7y9E1+YkW+OtdY25M6xq+11BThVniD1vEEUZJQ3CRQes0EVKz/AwNDWQ3WqR0y
	 a6svO8BXj+V3LhSgHSMIQZ5ULYZbsxnuimeHjHcnRZbx9NbziUjQxgk5EvNGKPqd4D
	 Qgsy5DgtdA5Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF5CC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036223374.13038.15865185796368084263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a916c64b34d042ba9aab19bf86a4d44ea98e16c3357060e5ebd5d5cebc3b170
Date: Fri, 25 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790362233
