Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3670923EA85
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768721634; cv=none; b=tR9oP14TAdNnspMz+maI9ZIEq0PmfgPbz/T6x1FnXTALeAE8y2wtrC2hzCi6DFi9tkvtYzhodn0Nr5GUbLrQgYV45Fl2coP+W81RKzxRmP8Kg+/gDGuKUXNHdLfJbsG05Q79ezyxMaEGEC1SfZWFq8dDWW5TyvPtjX5F7zQXjDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768721634; c=relaxed/simple;
	bh=qABy+Wp2TKPt4isngQ3uq0ozTBHr7ImXfszz1ojT7NI=;
	h=To:Subject:From:Message-Id:Date; b=Uq/d1ouve6KD1qO6sMG49G7yRV8/O8sdgKoNM+kQP6JffXRuO2JNim2s86JPqURBcChbx3sDTxYVmo9Met1FwTp0m0x/v9mxbBIHkb4SjvsHYrmcqwtTc9bB+yVPYmcz/mUNpLoHyYmLEbwAvv7RRcmvspXLJm2zWqN+KqjGpYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBPUkyDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBPUkyDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6081C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768721633;
	bh=qABy+Wp2TKPt4isngQ3uq0ozTBHr7ImXfszz1ojT7NI=;
	h=To:Subject:From:Date:From;
	b=YBPUkyDrYO5gsGyVMMLcukpqb/In9nTCreG3fy+iDQVZgQPuOdILuizEnOVpe8tBn
	 0BPvN237VMFk5FiR3suZ8dEDgFXCHC41aykeKwu3fQpPYgBztpUM7iB9+j2LxQ3w1C
	 pjahJzBGZjojqxWaAQOpjubw2NcRGnr6uBn0ueuS44457QgjiJJkSzZFK9dfSYfh8w
	 lteAlXMikn0Hiksd0/mC1rzYthGCCi1FHQJjZ9rkYPVTHA3QA9QqFyFV47JDTvdL51
	 FEwMHFUYFAfXE5WZ7MFWvrwEgJdP/T0jBD9bTzEYsd7Q1DZYilEFB6l5r4dRG4bhEB
	 PLCGN+Rc4RT2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9532CC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872163357.26832.9174500072579822336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a8fdefaf1edfc614e84bea4dd6cda51e820751df37ced200c8e98f0555c6da
Date: Sun, 18 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768721633
