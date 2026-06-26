Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80958219E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782435454; cv=none; b=TVSoxjfpiy7vTWyjhfF6Zv55S4H4/V2uCvXwPmJD+3jMB25asK0m3oH6AQnCm6MyFUcyP8xxG1QJ0IEXr1Cf4Uv1y8vL9jVu79CX63MZ5K5vhsi9xNqXHo1oht9BT9rBlHx2pcOrnBLIr6sdjbZcdDg7A9RsVwjAhUxJoZmJ4Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782435454; c=relaxed/simple;
	bh=AOpehELEm+3s1l5wO0Z5P9ltDxA6eKKpmCJQ92wBeH8=;
	h=To:Subject:From:Message-Id:Date; b=fidUHAIHiXk5G1ZE7u6zymZE+rRYLHbXFibhYnYGkWeS2iWagSGtoZOsJXiOivAs5o9k+MSkq2fto5oPyBS8WMMIalRzhNJVjFqQ+XPPaXxRF9ytW9bp2lEGIEQbiffmAULEFjVjQacJCFA2V4quNCx0j3B9RVBOVEdmZeo7BEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRIOQc3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRIOQc3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C0CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782435453;
	bh=AOpehELEm+3s1l5wO0Z5P9ltDxA6eKKpmCJQ92wBeH8=;
	h=To:Subject:From:Date:From;
	b=QRIOQc3wM616nDPr0IWuTvyhs6wOfTVLFSKZ32y2/wTtTyZ9rShHPNBTN8Z5K8MC1
	 sF7UvYxMS7jnta4pbayXqu7613vshdcqmw1aYttE9W+AgHcHFmy6bURXw8Zgv8Vr8I
	 6MqLmC0FVafXje0wn6khm61l9Odfm+ExqiFUNctWZcV9i75rHq+T9zJRxaLYOqKja7
	 GixLTNyd/p+5qprqLeRRduE0+7KeKvo0YVefe5KPOb07e2PH7mfn782U7MVp+xTvyB
	 C4NPkDz3EBTzPCXZoQZjCewwTRYky2mYfs2obvN99uHfhBEckuD/M5viKPyE92oe7H
	 JNdHLrcoufRZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0AECDE00B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243545368.27418.10717278951123975051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7861f5ad88a6fcf2439fd3fab664e404c903694869b7699e9a5a2dba1262bb76
Date: Fri, 26 Jun 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782435453
