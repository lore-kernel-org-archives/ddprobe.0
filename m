Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22318230BEC
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757813994; cv=none; b=fihx1F92Cyao5G10ZggMoc7mRDX2GErXDUW/+8pwavsz7OYJQQn7qL5pnJMYDwkp2N9uPVbDu+x1Isc0At6tV1nNgQ8WCrR5bISseXT1W9aoKVN800H1TbU8H7oKUEPjFeN++mrUDSTRbU9UeHIVysEiv3lz85YnEzAjtd+fmqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757813994; c=relaxed/simple;
	bh=tI71498K5ocOlZ4VsQclGfCs5u2sWBUgeeytTwui4w0=;
	h=To:Subject:From:Message-Id:Date; b=bfl7M8W4wmUMzxEUBDg1ydnznHEoeZkPrA2oYlTEsIS+6+gzn8eg4s0Wrwuq/5BaPgZNuePT1foZStiDiTGxWxUfwYtAT8VgQUedbMLu6tbmlLRMkVF6GtYcS7v6ZQwC0duOBYojlodZM3oB811T3dCrocUFRH8B+qrICOgktRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8rYYYDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8rYYYDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06A7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757813993;
	bh=tI71498K5ocOlZ4VsQclGfCs5u2sWBUgeeytTwui4w0=;
	h=To:Subject:From:Date:From;
	b=b8rYYYDKxCOKKyH8b/t9xlN82k3iTFw/3oqxTZ8m2igHZs6Z8O1hpKyt/e3ssneQc
	 2gauWiehyYlLPHs62JxWKLo+hKB57snkqQkTpbD9fpakgaKikZ0ao9f4rEG1Ivljpo
	 k86r1qvhT8f6LJjSJvDjyt+Dr1t47HpKXFQ2fBkgPsAQ+AI4LTTgZiintQUiOwaVcS
	 XAUgjqjKQ4iBR7rI7GM7aCzlAIdw8nh53NDBdyRezXaztzBLJauKfI9QXseI0I3jLu
	 2jBNIZQ95+HyeHTs7J2IDAnxIR/ZNEBFkIl51/5zRefRAHLqGlZXankIwOYG0p6iSE
	 Pawq9h3jdLx6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E587CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781399357.21959.13473425839987278945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ef929bec760defdfe221c71271fdb71b9a652ed5130d91ab31e04c627b5243
Date: Sun, 14 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757813993
