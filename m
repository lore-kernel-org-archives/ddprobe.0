Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16ECC292918
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757313595; cv=none; b=bVnq7JoH9d/sjt5AntLq+7e/Grhp1rJsSvm2LPi1+16WaNsjU3od3iPDmLTgMoskjQs3E2YTAe2730BndNeX2nQZOjFO6i/Ys2FFAUEE9TECeG1yfsXF/32pdJQhHyynCg7G/T7fQZrxWTbyOSQKcwjpEfwPtmWeMRdahMw/fkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757313595; c=relaxed/simple;
	bh=fACJDzP17pdxupkKffrUptQ06IKrrqArNzlVOru24pc=;
	h=To:Subject:From:Message-Id:Date; b=YoLEQWsmeAH51A7NBnZhXpTI6HetJZ87znn+hzcynXvix20W1NM8lqF/8ttvbbdlUBzYyOnk6iAJEUAPQeF0vOzfieGGQRLH4sv7y0m8KBiu50lq4AOhvRk/WePOhwX6szK9TO9fC76nlzImKfVkUQOXoOvKdLCU0vm0Nd2GDVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7IocSZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7IocSZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D508C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757313593;
	bh=fACJDzP17pdxupkKffrUptQ06IKrrqArNzlVOru24pc=;
	h=To:Subject:From:Date:From;
	b=J7IocSZ7u4ZWAH63tpz2c4mZ43sdHWwPaZCYGMruGUOvkid7/er2goQkek71dOeTt
	 /dzs2i6cQtLYfKLKpfjtgM15qyEuOHci4o/aZeTpkgcxldkAbi5YSQvMGPmeqMWGW9
	 l90ewRzwQEHsrLXO/IOtE1ncHTV50GaWGMjcfcWX2gvpTd/wTvpR8z7XdpsvpGSbHe
	 QWMNPxwUi8EDMun/0Q+zZHv0L5uTrGD6cMHDVP1lVH06NMMiZcGpabFdfN6xqAp3qw
	 V7PyxQVgEvjyIscIGYCNfk/gNPwNdzg0vJdZ4kaggktL16Zwj6/nn9F6YiCo9Kta6u
	 LL9e0m+fUF27g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA8CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731359358.11546.18025988899548824016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e195b9b4a106eb04a93c5fea6c7028d9eeca10a5e7dcded392d3f4e66b16c37
Date: Mon, 08 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757313593
