Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1617610E4
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723784754; cv=none; b=fk6q52TdfpWX4HsgTRhwZYPNNVKXycvcq7AYGehbeYBJjapZrjTt5BnyJ+NMLMKG4+hZTSFmgf5lwvyTrVFZ+1hNWpCIsMr4bwpr53RXddLAdqb7AuK0rHvs1pgcg1SMWGlSPxMEAwrrNgxnRm4GfsoWxYlWjDJXulydbMfpTJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723784754; c=relaxed/simple;
	bh=RWWFBOKe2Isgn2FQjjSOzp5Oz01M0MrgPLsNTJgGm0s=;
	h=To:Subject:From:Message-Id:Date; b=nytwC8b17G8OUQrdg/gcknW5+Qz4S5ggBGIXdVoXExzLvOIQngP73urg10/wxHvCwbUBo7a1F9ZB56AXnWqJUmeTBCTeO1D35AF93bZQoY2VowjHg0A8iNMzM//Lk6nvagetIYAoV1bPwwB2YvA4BIL4YrRFwWtnh/sjela9Uqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcEoHHTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcEoHHTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD643C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723784753;
	bh=RWWFBOKe2Isgn2FQjjSOzp5Oz01M0MrgPLsNTJgGm0s=;
	h=To:Subject:From:Date:From;
	b=jcEoHHTkQfZgp0Q5U2jlsakTxPckBiN+KDSFD1oxNE+kzmX8M/qnSI5UoyDDo9Qy2
	 IUU58CWJ29y+Xrti4R/sUIQ8QggH2Q39e/hKkv6G1V7aqVXt6thnFKrYTd+AFftf6g
	 SvNfD6C9O4L4tEAqbpPVgYk3yQzyHQBpjE4e+3rhYCbncjmPkw9aKCjyFEffTFm/e1
	 lbhBdOIgBJPPev0zyFcJAVZ5eZtEXUXXygPuuriKWKKChRSK1/e+RweFbDiOJqmJsA
	 2mfk2tuN2SqACSutyx6hk7FxQvnMG38rD1GKoIr/7VscIJxKa62c2DyC97PiNJLgA7
	 L4FtSz5+5iyUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A31BC52D7D
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172378475362.8199.12712664878302681821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83be11e5f15100f0b1e5bce405c4a4c395ab08ac0eb0770199008d037a8fb3b5
Date: Fri, 16 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723784753
