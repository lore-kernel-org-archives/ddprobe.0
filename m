Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210AE270EC1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782830914; cv=none; b=i1XntRqoZoezgQL1ZmYqcG2zfivtFWPwBwEikX4ZlpidTTJLVqTb9bf1Du7bo3zD2WRB1NUgYakGoQTEitw7JNeSwFAOAuW33ttCOYMeJVaSD9nA5VmFY/T9EE9PTzPB1VvJzEnQzsZsOgKABZy9aPEaeQaTX5a6ELR1HiZeoHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782830914; c=relaxed/simple;
	bh=YuA43b7yrL7KChHI1V515OYpKn0EOO4Hd3LQHgvyeaM=;
	h=To:Subject:From:Message-Id:Date; b=fkzK1wzE66uV0s0hiFOnzbtu9iKgEgwFfnyNFNBhZ/kY7/Kvfyb3SPPs5qxhxbyQa0kLrPfHF4e/uSBa6MCSx5zZzkyMM4oSjTTDtymf1SQDiB8nydEtDwUgXDohLTQll2VBTQlbt318VOOY/jsnQy6ND1XHlTj81xIROOhgkJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjpAQKhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjpAQKhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3406C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782830913;
	bh=YuA43b7yrL7KChHI1V515OYpKn0EOO4Hd3LQHgvyeaM=;
	h=To:Subject:From:Date:From;
	b=IjpAQKhVpNqTwwkikmMknBni7cVGxt6Z9rppCQR74hp9qA/Xdd705bLjnzlA7Z9XL
	 RsjalZpyplLUMMnGsXsZYVg7Ahu1MZhCyZj2Eb33GkdutfG0OUrCo5N57oQaomHQhr
	 E8c4Yqgm3IIip/3qADAP5O1EFj4jMLErc88SROyC4vneYvyXVtdNVMmy8tUOgUZT7s
	 PBe27/2JDoVCNcwzyN7MNs4p+NtrKDx2/YO+poUC4zUJmLnUns5wsJbHTeq+WTnjAd
	 hBtZJt4Znqj52FEMAN8vccQ36j6I5xQyQz5Az4tCCK+vzM40z107YrYMZwJTxB07zV
	 7lDX6v3CK73GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98F1C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283091368.7835.9100758199062466367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743af35e7a00e72e6f50c4faffd7b6067de90df82fdb5ddfa4931311158ae1d0
Date: Tue, 30 Jun 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782830913
