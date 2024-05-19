Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A5C23AC2B
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 09:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716112343; cv=none; b=mCyWZSj5IhMuQ5j8Sss2+KRsp+FLIeBYDYeLYB/bRS1heyqLRWwBvL9W+NcTpWUhxFO3DLIWhBIhLNhv+fw+QlRYOAU0JxnA21lY/55Gmhg2xv6uhmHezJ259IocFpxeE8WiA8ZeYhkZWPjlX0jUWgYLGVvsl3yN2uX8Z6lhwr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716112343; c=relaxed/simple;
	bh=9D9jv+47SOB9hWoH15+dv8oPPJ8oHJERV+jzmPBVwRM=;
	h=To:Subject:From:Message-Id:Date; b=ENixX1gw9NRvrE5PqOidVeiA+OK6TnS2EkHo8Fl3n9SlZLOLjE9R1BexHiwaHaCxgBuengBECV/htMOYEDv2fPQMo7Zeirk2nrSCUeH4oEl3P+a1Tkf3N0WHe/XvB02ikZSp9fupd4pJt0LHrykAXGiXkRcXB5gLyG/0YY4woQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJzzXcrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJzzXcrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96FDC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716112342;
	bh=9D9jv+47SOB9hWoH15+dv8oPPJ8oHJERV+jzmPBVwRM=;
	h=To:Subject:From:Date:From;
	b=kJzzXcrQkJozGff+MdhpTTVCcHDLkTzKB4DRqo2e2xJkF1p66kjm2P3ZAE642Urh2
	 v0Mvqvx8vrXCwTE14It0xfE2BEQ6+/Je/ejDsZ8wPOccQZSpqES/ckuCsSPqhlHKci
	 wFSu3fIDU8Kx7gxD/Gu/vlYYRUm2KYLzvo3vhAuEWaU1/+3aodMEq7YNb4LBgOUY0G
	 JyJIDOu7aH9ElcLB9T0ZFP6IO3MM22u3S7rVFp7HvLKzImHQwYiTWmQAmPQgTALsYW
	 6XQ4Fo3QZ5oOpuZlDlJZvbMmDsAt5aF5o3LkhfPlK956fdHASjjbLOPLi72z/VccUd
	 mscJD43k/ZMIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D7FC25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 09:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171611234277.15319.8506500812205188385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d20504f67aada42485550a2f56429f2552f0d997ce7bb506927e3bb76e0871
Date: Sun, 19 May 2024 09:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716112342
