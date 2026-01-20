Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250654418EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768918434; cv=none; b=ER14nObuQwyIyy6KBtaKo6C+5VOiR8ez+Rb10ENPwx0mT+d3xSDHLr0IbDAv7mSJy3+IMtIL4RDvSaB0C4LL7PYASEDVtnvCBt99totFZq123UfbJ86/FpTp+gsBup6OwsFVkir5DWM/eqHzCjESO8Uzc9lh2N/2bcyLe9q9c0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768918434; c=relaxed/simple;
	bh=AD0Wyx3UgEfD2dDnqJrS48R/Q66zfQrwGGI/uAWo5e4=;
	h=To:Subject:From:Message-Id:Date; b=Sh3WYrDXgSei+G/cthxafqEJ87O/RPztrtxIwhOJwAp98Rf0Xh6stmYNQ+DTVNMIBw24BVx9D1K0vTPr+oQWDHQbRrzbhmtRN08UqahNcn7lvjmmQNAifyT/ie04UfD2X9A5djuhBelxL9tG7H1daQs8RSWCISARWM8OkNuOnns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVvXgxat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVvXgxat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FEBC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768918433;
	bh=AD0Wyx3UgEfD2dDnqJrS48R/Q66zfQrwGGI/uAWo5e4=;
	h=To:Subject:From:Date:From;
	b=dVvXgxatSOUGUVOEU2K0eXIUI5PP1P/F1LP3xlfQdcbMlw0HOLm4ZpoJGSMt1mhOv
	 pDiX/5Aq8ihzobCbqgeIGRcZ4HFLq2tA0Qw+OTxjzCfQX5WJ86jkTckgEEY5rM6Os4
	 fFxiBakUHchiBMs0lL0cM6thfzN6YxVsE881vg3Zj+zgy+QDKtCLB5Du8uXgivhgIO
	 MYhwYZdsCw+4tyolRWNOHTReTn7brVPtLZb8S/mr9BzPABVK9h8fRoPeVwDTwikl3U
	 D4v+dy4eICqVDRLBrxgSOM/lsTSHf5XjTa0z6bMbdsArTGXKqGLHwwD0sVHCLMLGEN
	 Pcc4+FWgKfpbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BEBD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891843358.5366.7362223235819890154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e64f6ea316735e7741b7886d9d6ebf4f38e5bb2c50345e8c544be1324791c83e
Date: Tue, 20 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768918433
