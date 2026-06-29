Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7B5404BFF
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782739714; cv=none; b=lrUw8/t4iJxM4iocY/Y40lcSw+nW73fefi9Lf1+nr78owceslBTH4wNkqLrK08b3ucDBl58zfqKG779BM/ff/DHVQgtkvsUIE6Gh+ijcJXIoPD8ZIPN071rrwY+5UdrUdSFay98wGnNpcC/K2lGWJGmak5X1qn1Qy9JqgUnqpxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782739714; c=relaxed/simple;
	bh=JbmAY6GMI7KyJrrU3rkOecMbjRaxR8ZA6NkZT6Zhgy8=;
	h=To:Subject:From:Message-Id:Date; b=TVAjBfB7nuxkKTvJSNMOmehH8kQQc2pEuOn+WjEW5l9LVJ1gNd97FDwbgj/OwBOs7p6JUuTToeo5jxt4C+/oTSEkKLrIv3dna5NnHcHHsIMd0lo0FUvxfUqXB0JI7N/tYGRlv/NecM1cpI3lPR+6z8544JxoVKbGun1nW5WqJhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzZM+WTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzZM+WTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F50C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782739713;
	bh=JbmAY6GMI7KyJrrU3rkOecMbjRaxR8ZA6NkZT6Zhgy8=;
	h=To:Subject:From:Date:From;
	b=qzZM+WTps9abarVaaQXUMdvlhmWKXZuk4HIL6FlsyL+j2MSf1wjULwCBKUicC1ps2
	 tYTWKsoQmHYcq/Ui8WqKaJ4UTioAe76IR3uwTW+pdYhWlimhqpobXqjsEC2UjphdnT
	 nhfObv8H+4VY4KM5ITuJM94YcIesINd90/PPKVBg4wkpiKblumkvhMAa+Iqdx7Q8FC
	 DyI1f9MviJvVsLSZr1x1VK6pA7Qy9ImuXF25zrDSbZGaWHvbUAic/HMgUiWyzQBAlZ
	 IhoS+EbiMF7kxt4kR7P4RaGg4MYt0YazNZ3nxiofbsx6oIBvKqnBihFX6hRq9aYwzI
	 7Y1Mn5OPv3gVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34D6C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273971378.31126.13864528960792990062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b5e1bd4d905bfd352cda20d5d42e25a7dbd0f0f5b010cd25b1493479b36280
Date: Mon, 29 Jun 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782739713
