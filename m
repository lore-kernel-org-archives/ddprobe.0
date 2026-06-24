Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667FC279917
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782302854; cv=none; b=P7W3gJSI4XzK+3xLmxnXH6lixKdRbBHJ9vpVTUPZtxkarVTYsrji3TRuwR54TG0jBARKNZ+XIP9u2Va8zmJTucX4MErnDXcSq0MhPJJOvB9ur+I6217Yfd6llNvm3FG5xtdjGMN9qMPhDsSfXVrH5rXVJiSEZ7HQsDgxSc0OjnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782302854; c=relaxed/simple;
	bh=8vb4GtARMMDZMAj2plqjMu+s9LJtLn0QBlrEjtDLyk8=;
	h=To:Subject:From:Message-Id:Date; b=quzOySRtLPJoiV1p2np66uvQ012xqboXBm2jthM1apLmSZoTLTNNociC1JaqRJWnjV5PofMbAmy5+Y96odUr7YoJt7vNlyK7/gc8PumBu+NsZlTOXZeCsKGvyoZ9aqPriJT+kEX5xM6HZVoN+eJGPKSrcJ1YiJ6yM2fEsNEzzCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/1hl67q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/1hl67q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1A33C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782302854;
	bh=8vb4GtARMMDZMAj2plqjMu+s9LJtLn0QBlrEjtDLyk8=;
	h=To:Subject:From:Date:From;
	b=H/1hl67qovtkq+Ihbef0xowgMmrUA6adoWOZHC3sgbYRT21HsrgugSA+spmyRA//q
	 Jva2t+fpdXafsOv3CSb8zlfXJMVQBojroeku/0a3hTjOFGnquSDQ3KeGZIhQjzA345
	 2W0EcMt1CIy0Jr2utwSTcVow8LLNObBJOFK43B0LqM5EV2biQyYReu+B3CyFNHY5Pl
	 XLuhofuXmDbB0Fmt9e3iOidSCALSnB+mS+R1MVt4MmJ+9xX6ZXW+MPts7irlwZPBHh
	 h4Ec2bfP6uu9gXmo8d2NmZUUkP+lyam4YCcBPyTxENwz3m/BmHxDT+t/sa3Y2CEaMQ
	 WBlgKfw7nvz+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C74CDB471
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230285372.11469.175493603109877901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55564c716b14dcc668fa6ff1f5520585658cb6f23c24ff46fef76d2d2a6b2cfa
Date: Wed, 24 Jun 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782302853
