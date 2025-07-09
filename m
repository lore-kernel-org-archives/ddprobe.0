Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171B71A2381
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752026994; cv=none; b=P86uumX7ha25pOd404QjrFB8xRPzQqa1TawJmkkZ2idES5TSOehzp1pLAdTTcgHttYP2gbFHRm15/HZxygKbEeWhJV1WsuQUswxUcojm62edi33xEygaY9wkRBJz6Y2S90lICZcIq0ATQLM1Sy9oYhc84ClZayAbYZm32ChoXbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752026994; c=relaxed/simple;
	bh=LUkMm4uKlxUg/It7DOezVEgWadbpdKclMLgRfuc15iE=;
	h=To:Subject:From:Message-Id:Date; b=D22xyHkxzyeM974OZXjQYPM6hR2djywAjAXBhged1JemhLV++HshtveRtfWLqZ5PGdFpu9Y+7/Xofuhwu3te+kHggBCzCucvlFYp5q2UCi8TJ4zYAgW6Zt9wVahsP8DJha+tnjn071WvcMg6X0kjktoN4cx5myc5fmQQcpHRhYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIV4BrBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIV4BrBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E753C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752026993;
	bh=LUkMm4uKlxUg/It7DOezVEgWadbpdKclMLgRfuc15iE=;
	h=To:Subject:From:Date:From;
	b=FIV4BrBCGUVyE8/mRNs5CN9ACaeBfzMiEZNKlFNt0ZlAVnoMlY4+z0Of6RyU1uO0J
	 j4Hl9hA4XyUj6uXoKU1wkRWPuFRhPa+cgUyrWDVjXtBms+pQfsTOAVxoNmRFuheg9i
	 7qV8Qr+W6Nc2/nPh43B+IO27f53SdVg3fzqDHRStVytkR2nRBUSJ+dhWXYlwZFxK5B
	 weO23qL5KH77xxmWn7u7WNcppWXwiIAv0ES2h1qbQcspJ5Rat7kb5tv9+yiKbzJ/+0
	 PXPiwfwYOUq72LExGdSh2i/Gm9BV0um0VQ9ZZMhXQfTLG+KqPJR484z32n67h/nRQQ
	 k5tsPzxLeEzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F04CC8303C
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202699357.11719.906208093402906637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652acb1e19783f08e722664bea8af5ed3565e8a3807edcd46eab0346ec285451
Date: Wed, 09 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752026993
