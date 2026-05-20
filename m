Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FB526E6E1
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779245434; cv=none; b=auarOT8YolfKfDIbYwrqXaP664kzXh9wLxY3mRDQuR4xnDox5MMWpKBOPn7Xv+HmCFK5E/iOQrWaJrn8XFxU4TQynXsathrok8rcPoff/OTVu51lDOorkfJtNjT3ewfUBPAO98+FrO83jR4ktAwW5ln3/+gVxX338I5BnQ5/L3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779245434; c=relaxed/simple;
	bh=NJW6RcfnHo2JI8U+kNtm8yPR2MmgJXShNA0LEpyuA1s=;
	h=To:Subject:From:Message-Id:Date; b=HywaUR1Es7fvnfMRZsbgk9CaDg4sBJEMuUUgQtm5ezTSaNuglpJ7rvGdlZ7lifKvk8hxwIHtDYCe1Xd4MXMys1abpTXimyhTiC9Mby/Ttz3YAagnjZtOC6D1i3Bv8raxHVK6GNZQOcu6Er98i9Iu9umFRhU1Kg4SbYPlKGngo04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+RCl9R3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+RCl9R3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27D5C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779245433;
	bh=NJW6RcfnHo2JI8U+kNtm8yPR2MmgJXShNA0LEpyuA1s=;
	h=To:Subject:From:Date:From;
	b=h+RCl9R3GwrWHo5fTO4/j74hyy3b8sDogQgIky/cbEG+Tsu77VWR3hmMjlxfuUzGz
	 btWwszB/PAH9SHaO7Sj4yO3K3TPAinwPRY7UhZ95E9NBk9ZKFS/n1IJM/TmFXYWK/y
	 piuv8EvqYGzJwsbtpwV4G79tC1RNmheHeVoZF0D35cZL97fAw7pmtjIHW+pwIfVoSk
	 CIRcPETQHjOmtZWsO2XVmTaHFIOcqlbgiwRsvAxq6qS0WK9Aa1b8dhiFucRvSWrNWx
	 /E2H/e9/t2gVWJ2rvORluKedPA5KHgxlF28EBAuA4FHf6FEWnWX27LVFB7litB+EXX
	 0U5jNeOdalBWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA932CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924543368.18704.13297865505558306131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80bb4961e6eee00ce6d71322adad440a2b3d6923b24c4f42b7ca7aaa2a698bb
Date: Wed, 20 May 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779245433
