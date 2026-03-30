Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1885B3B0AFD
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774862094; cv=none; b=PXUwv1Bw1bwih1TnLBAIAkxfDWICjGBmPG+OY24IBn372SEHf+buMARl090KJMZ1m6unsT3ERyL5VY9FlSFYAPNs3ajUEcUDHz90ak4dEZe21uVAiyeBx1poC7NOQNgQxrvOWcNJ6yc5xRrWKWb3JguIou0lUE2+J8IGxAxot7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774862094; c=relaxed/simple;
	bh=NScSbxR7mMMHBsq0phbbQ3+bZyqwZZ2v6bGX6vzTuXs=;
	h=To:Subject:From:Message-Id:Date; b=He62xc5eJjy9M+80OIJrT+uu4NXWByCK0s6hNrON1MD1N/bN3K6a/IkS9+gyX5U8pbR8yo2vYZMRBb1W8q411awEtPcxWEOFGVM8G7NPpvTYZJojC4kpEnqaZXMMCeTpcvTA1yUGn83SLaLDQQXzVJBc8Oabh8WxiU8VQbenhN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7CZKnSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7CZKnSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87B3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774862093;
	bh=NScSbxR7mMMHBsq0phbbQ3+bZyqwZZ2v6bGX6vzTuXs=;
	h=To:Subject:From:Date:From;
	b=N7CZKnSw49mPeWancpl1iwUOEFsITv81sGcZlZLXvfGHfcLJTFVsBWMC1ejSwEF9a
	 81tidbqA6ztmzwuGdGwM0lOoe0c0icDQfqw3i3C7mlFFG8EjEC9KOawJ3hm0xWhb/L
	 piJAgnrlcpSkUIWOv+bZ8wUchRKUvfRQ8mCPYnuJQgeD5gjbQvTchPWVJMKhEgWW9S
	 jH9mQ/uG9onscNg8x07ado0t4/Y3vjTTGavNrrwEgj+ky8I4WsYBIqABPlMqtvNE9I
	 +W88YLdcNW1P5L4WnKRVU36lK0m5pKc1LcScwW3OguUZLZb46nTDsEVgzfJFSdGXbu
	 gtxjSFoskUFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9724AFB3CE5
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486209360.14707.13772259088039625620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19a94c155996d4d02372f396995b8bb4e14603f0b4d5fe1bcd4ecc9b09fffbd9
Date: Mon, 30 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774862093
