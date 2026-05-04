Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAFD3DFC85
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777910854; cv=none; b=jnq9YJeu0phffhNw0I+K12+Nw+cxXcEeMGjkkUf3IMIZyOsB9++cPgqZgf6Rpb/e/2k5Q2Dv/SaOWWneDqNAebWl6jZnLay1qmOb8ZKtMQ4z3gtoLQOcZcgPOdLjziaQhLBmeK5PyzGgldaUb3mi630frqg0+Wu5h1YiqW7B+SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777910854; c=relaxed/simple;
	bh=UWPcuSZVusRmtp3y0V0J+FB1Nz5Oukb1KT2SjeVPP3w=;
	h=To:Subject:From:Message-Id:Date; b=W0nTdb+v0UJq5wVXGYrzxDyfPsuZAE6XyPO1+3z8a8QpIJs91T2xNw6BRUi97K+37F+J/XmyHqOrLHJSA9DIWGegCx2/RJAmlM3S78IVXyjhTemDv6HthciN1FD7OBSEf40gXLig454PN6j9oWkTs2g4onRe6KOsUO3QQgdvZAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clmbLURy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clmbLURy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B7CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777910853;
	bh=UWPcuSZVusRmtp3y0V0J+FB1Nz5Oukb1KT2SjeVPP3w=;
	h=To:Subject:From:Date:From;
	b=clmbLURypcegv8wwfoOkIkVmHEV+WGevnMc+RQYrb0SR00sc2kMe7aZ37F14pVo21
	 U8MpJyolZXaa5ASuMGj9vwff2zBJ52ls9FtgiySgQnSs1JKOZqAyf92TcLgJKyuD4X
	 AA8otmxuLBxARxPdnBo6LsQtArtGfjluQssSMHpcQP0bRSlGqFdZUf7LFwKtDFAUEA
	 jlhK0MGoFu9rl/DNlTJb4sDIcXlZUcXiojG4NFj0ab6ZlRwhacuqoHv1q6DQEY6gX4
	 +4yaDFQI3R/tt7hfb7HzlBpOUjjsPrnGV/NEVFuDxhBMSu7WLCy7zmsmWpl723UEI7
	 96881ZTYWeBbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C98CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791085368.30859.2443388583823444085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d487266766b33ff8df9ef48fe14f3bed12c993b24c8ec03efa75e2ee6791838
Date: Mon, 04 May 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777910853
