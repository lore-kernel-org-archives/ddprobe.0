Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0083E33FE
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733238354; cv=none; b=iLOkRIvDBhhoBX6rvMI8IUf+xhiV3qBNnWyKIKyxPEPzBSbv6TAKnpDH2dAl0sV3GSGlC3u7girwvu4JJS8NxfURL0Hq3WQCeo+Gv1tzYXp/B6ZP2w8pt+64fad1GtZ1tBtD/VPFF6xuORF9jQSrf8+LXUnZoBLyXxzs6dZszww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733238354; c=relaxed/simple;
	bh=lbz/UzEhzBKIELRflbu+lcQCKvUj9pSue9KklkF7zuw=;
	h=To:Subject:From:Message-Id:Date; b=HEDRszn6s5voKWL3errTps8s8AepN9MqK+fBR4dHKKTyo93Wb42hI7eKK5UAzi0ZS+G04Mer0oX1bRluV6inBJ7OJcOnjf1zOG75Alopc9uNlBF94HCmsdiwmXhzr/oAo99TKStIkyY/EB5XkuI7pi3nOvcTfHT5OAAwyKHqYsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjB32/Iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjB32/Iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87B6C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733238353;
	bh=lbz/UzEhzBKIELRflbu+lcQCKvUj9pSue9KklkF7zuw=;
	h=To:Subject:From:Date:From;
	b=MjB32/IwFgJgJCBPllS2twvsEWpQTnxSbEsLmc8mjZpt0P+Xtt6TVFYSYoBI3mwkL
	 PJNkag8lqtYo34+VYLZCH6aBdQGCMlOXUimKZfCHTToJzQO/hM5qL6UrJiHdflsip1
	 zdJevpm2ud2a160w6e/FGUK7JLHp3+0+pnz57cBz5wxJwfIvm5ZZyzehx7MoTRCDzz
	 hz3Tf1nBxs/5CIqTHLPUBiHMXSV0n+NOMCc9Vr1fgDfJA9NeE88zzSSqdbjaG2ECx4
	 ZtSgBGT+06jxjilqnG4xCYZiqrslJTd1sJM4foZW6lOWymHZLaBawXsCQWe95Cwyaw
	 16GzbR/Q2g3Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6219E64AB8
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173323835365.23277.9143761907667735640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6745f978f2baca69f1ecceda3ce66390cb48980147502bc0c7a56d0824f01b
Date: Tue, 03 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733238353
