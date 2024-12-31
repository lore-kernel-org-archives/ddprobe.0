Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AD918893C
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735637154; cv=none; b=bxAdhISDQbEDZR0m79crBT7n7RKKanozzIGZEXU9NQ+hCU5U071mtgox0TGvIRM43dpTqBJAPJ3Ufjgy7U8oEUz/dxxSh0v+CyDZCjcURfODmimdmbkSY+CZwwEaUrtFB6HUf1q3WASeIO/q2CC53JO8WstFk01NXDvDTMMqMTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735637154; c=relaxed/simple;
	bh=8MLRQ2EHdjqYi33hPwEobCjJeUKDGIoPsnMkjiU1vrE=;
	h=To:Subject:From:Message-Id:Date; b=saAJKxn+xOzQXopXlWlX7ap0btAV3E6TeA0LMq8L+fW7z8CSXH01s5MNlr4Yqfmvj+/E9HwP2YZoGgLYnlYuQKOPH+NqBi0El6dHqu0+kspTFIPlci1MJStc42ntFEHhwcyYr9scSmd8I2yrvg2R3qafC9YgYjy7bzrLa1x3hs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm0oAqHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm0oAqHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF77DC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735637153;
	bh=8MLRQ2EHdjqYi33hPwEobCjJeUKDGIoPsnMkjiU1vrE=;
	h=To:Subject:From:Date:From;
	b=Lm0oAqHu5PZnWLRWGE1qY5sbYfi5/eaWaecDrUgXzeai3UHL8Pol8b1i4aPnXLI8C
	 qOOuluIo79Rq/RWcHLQ02hc0wPkV+RX8G550tpdKz1+7GOG/FHe2hl3joF7qdMte25
	 yf26rAUUN6UNnSLKBLE18LsjaRrK3gfFCeZUtI5wDtwUiPEsbstdAWXaaUp40QnCn0
	 MAAVnSPvApGZWD7YHDpMcjxZRq+ms6a6Z87gaoLlvA3CYifMTJl+E0+NWp5GyukY5v
	 lA5nrD/Czr3PuuLdP+wiCo1R+ntAN2F+2k26yGyyBx4gIpsd5ONSUA96wbDdXRZ7+Y
	 bXZmaQwA6SQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC35E77188
	for <ddprobe@lists.linux.dev>; Tue, 31 Dec 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173563715361.12714.12843057170721832763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48437381b53a69bb518aaba33381746a50886578ed0aea6195d856b32c377321
Date: Tue, 31 Dec 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735637153
