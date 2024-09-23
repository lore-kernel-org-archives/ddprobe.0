Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DB6748F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727111754; cv=none; b=CkAxhF0n4FwgRk3gNszPuiPsY/8jL7MOCF+8MZ5MQbg5g8fv9DObe7EMiCDS/ujeLt9HeDf/CmluHAovLRomE8CRcJv+GDAnXAXG9GdwbiK48ea96l+7Yzn5FvyTc4pHLdqT9j/LkYYbUKhmvAquy/WEC47EopaOs+zy7daSLhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727111754; c=relaxed/simple;
	bh=cHdsXclKPDVWhLWukmnGZXJ7uGrqwHsppgusRVQYEsw=;
	h=To:Subject:From:Message-Id:Date; b=uDMaNjGOGLQdO+qL6HCJU138K/aJqJGq7YRo3LoSGR2zmT4Z28izHEsGQ1tkLvxC05whrQMfalcv0et7aIWUXbPZw4WNm1rmMU22KeuSlupJTPnPKKOZHxnDOetkPsKyTUm0HlXNE8ARNVdwbPfYurSvQh28CbbOY4TIgOee0no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmVHgOTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmVHgOTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F59C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727111753;
	bh=cHdsXclKPDVWhLWukmnGZXJ7uGrqwHsppgusRVQYEsw=;
	h=To:Subject:From:Date:From;
	b=bmVHgOTLKiRg2hUwwIVRO34MNNaAxxNcCYU/OjkXN9KLgTEB/ogPKebEdm3hL2D8W
	 VLm6fUYMqEXIngsjlT0idUHOdj6gOuqcM81vdd2+8cfxCl/1Or0qwQnNcwsE/Bnqex
	 hezmiZyUAkBxNhyes4D8E0kQt1tFwAQn0kViSNct+WCAev6V0mBsUTznFYqoykFHCF
	 ISRxiLsvKEOcpf2eGw/2lPkoZSEdLAOJoG9XjBodi7Rk+dNPhclxs7Z6kSYFcPBA2P
	 8nCLsyFORO8VG8dwu3BbL+32s05Mdl1RhXWyxLgqWGhix7lTY4R/O3vOjdl9mAEDMt
	 Na9uilNLF910Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94336CF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711175359.14263.2069282816445475555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a287bb68694396da61baa3bf0303e496673d01483ebdaceee5bd4327b4dec680
Date: Mon, 23 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727111753
