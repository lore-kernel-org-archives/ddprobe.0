Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3C62066DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786905034; cv=none; b=rCHcWE0wQtA4CeKbKa4yPFXzHuAw937PqsuruRw/7/BW+4v1skDvd1Dtw155hei77MCcF8874bFtIfHa7pRy6/bl9rrvObdMY1tQsCWwePf24tBAVMMJxmn6TsVk7IPGj9QEJY0Kvarvy5hCqHAnSLTxnVUBYYhDgXIThAqKK0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786905034; c=relaxed/simple;
	bh=HUtqA6CgmR+Ze/t8WjYCQcDQ41cvX/UeKEbxj4OM5fg=;
	h=To:Subject:From:Message-Id:Date; b=kDNstVDdVk+VSzHQNjykLqwlLwDjDD5wSBs9yYv3pDNsHc2JnpWlUz43s39TPtgtanKn1ym7VXatqL2bsL8e/wD5wgORvB6i8rOMcS/+74hVjD/XYYeKXnEetv+JkiXk7cE0ccPfwAwedJADFRfnGvKcCMCZA8rVaTNpA8wGIbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+Lu6b83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+Lu6b83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A9EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786905033;
	bh=HUtqA6CgmR+Ze/t8WjYCQcDQ41cvX/UeKEbxj4OM5fg=;
	h=To:Subject:From:Date:From;
	b=c+Lu6b83bm3ThdgQuoTr3OscnDshmXxfbE7B+4MnySmpWeFLvfsix35uKgUeKe6X0
	 reqangLJVUKHUli3Pxu0++pBhYjH8Az2LpaRNUFEjFpUISVhBoqNsVzpfTwrtbo3zF
	 C3z1mERmImilBzWIx9RzuwcMu3T9xj8igGQKIQ4fgw3bG6CTBNK7I2fgjY5ACprM5I
	 8t6gfREJGF33UJ/jA0wmpmH62W987e0fyH0mZpdP+RDJ5PR3/cxgYbGnl8Q+BjMdi1
	 d8cVF0WJ7srpiAkNYgfcc6BrRrpkk6TefDsM2BlOSlQmAXl29/3rLyvg1Pf2SjMV/c
	 ctisD6B7d5UiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1911C5DF6D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690503369.18031.3822773721038157531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e50fadf8e94e19718b937a8f6666797544bd7cfc2af52616ec50b0f92dc99bb1
Date: Sun, 16 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786905033
