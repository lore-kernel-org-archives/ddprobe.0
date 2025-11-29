Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A570221D9E
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764450774; cv=none; b=sJ7bFGBN9FrXezmFfhyBI5qcXEC0ovS8DN4qcpy8zSz3+tr3y5mUos20o4xxSfBbGd4C/kH8NBjomuE2+YboWI1UcNviaNU+fv9NKrlFSI1kEFsfLuGRa5LVVkUx8Nk/ht+cpR8D4ImrXu5meegjGbWhp413rjWscH//3e7bZUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764450774; c=relaxed/simple;
	bh=23qt0g2C9yJJ+ZCvISKEtliXWGHOJZLS0BwUncTkElM=;
	h=To:Subject:From:Message-Id:Date; b=A50iVCwYaiBsaw3G/Se6fP2e6Kg55STo1z5icTN/0YQF+HFfIcDrfZ2sc0QTLDEfzqrlHg8tC9n+vCK61LgysXSX3rK8RhBOWUCfpq+JVdmYWpMV5AB2zar5AAj9f6/6PkmGW6qK69GAxKpY56K4hAOG+HXyXNRG2wsbLkQP0V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnhxSwlK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnhxSwlK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B501CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764450773;
	bh=23qt0g2C9yJJ+ZCvISKEtliXWGHOJZLS0BwUncTkElM=;
	h=To:Subject:From:Date:From;
	b=FnhxSwlKdbt9QY73hJNZXGpO3fYhRcK6WfpYl8e5WiaWu294OYYeoyO3h1Fi6Kmnh
	 I/0h2IgyNb+azxBNH1DNXtuzO5UyErghTSQTkwinfvKY8OYm+uJXvgcHcbJ+o7YHYc
	 r8r36qhRgoSAKp3Ir5OkwdSWQ2LhQp1BO8u7iPA3fjyBoCWB7GBp7C68hOrLTiEgf2
	 1QUV4ZzN6gmJNsOl534cBSDviXgldBFeccHFoPTdD1+RU541hYdY6xgCDGJNblE4/w
	 qafz3I8joAtIzsz1+RhtVd0mD19R1viIRN3fddzJTUQxa1vdiEZl4SSSD0mHB2iflp
	 OyRwQIi740h2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC7DD116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445077364.20902.7431729380048263250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a951decbea47003cc23403f43eac46509de426a8c98ecb73c44e5ebae70d6c8
Date: Sat, 29 Nov 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764450773
