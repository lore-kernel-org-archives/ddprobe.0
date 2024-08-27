Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A771F943
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724793354; cv=none; b=X0xlZoZkHZ1MiZZ0DUEML5bonbloO+fzJ+z62VJ8AYhpf5J8TJmG1mbTC/2OtpeeqsLITXmNPB4CSK3dORsncg9N510mIUQfvfXdT1j4ogCgABgQK606XXwNTAkOE7EvKBLrLpK20Z5I1LSb6PhGZYnXELcbixC/Dq8d6879x1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724793354; c=relaxed/simple;
	bh=FfqAN1TuTzkQOcUvQyQ+KqiSDm98NlKdLmz0R0XBT/8=;
	h=To:Subject:From:Message-Id:Date; b=ZqUxiVN0kduZh8TijhPxHt+2L7ZJih2TnpHCnftdFkSFODJQJRly17uJccDPZFhVKzUJxFC/ZRjYqGWnPoVVDbaqrvXo+2xoqmfHomgjPLyuec70JaU3s07TPd4LXEA2MjMPFvyfWc5OjBJayqMDb8BcAf+j6vxWN5yrfIexPUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmL8enLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmL8enLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B041AC4FE94
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724793353;
	bh=FfqAN1TuTzkQOcUvQyQ+KqiSDm98NlKdLmz0R0XBT/8=;
	h=To:Subject:From:Date:From;
	b=dmL8enLRGdXjZJusbJOLJMpYFj2sfGv5WYFwS0FLa7DGkYU28BlE8G8Lx+4iCBLxX
	 T1EeyjZ50348DUI3GoTGN+f0MriniOiwGYvZlpU+UfVxVF95NNUwq5dCPrnZqqqBNr
	 JA+icmpz+0CGRjdNzvHQK4qxlKJzTSyaSufWoscqifROdkVcADG3A0IReajDWddiWb
	 kglKkQWV2evklU/vkfAM8K0VivsOzY4BvfSYdC32eb5cmUgeKZNNE1xZBgg47LDmXQ
	 3+9AOolDg9TbvlWJj6tOHI2LGxsw3Z+jCOGDQW2IwZSqSUDesNGNiadG/G433oDjXh
	 MYXKfvDlyBWJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BACC54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479335363.19947.6524265026758723463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621bdc8767760dc8fb978db6ae582322ed00927ecbcfe5429f0611c457f120e1
Date: Tue, 27 Aug 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724793353
