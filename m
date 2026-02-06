Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE5F376488
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770388434; cv=none; b=j/AR+0fJ7OG5Lsqv2K64Q56K2pE0kxFoJ39u106VThAFtOqMc8C8WtE6I3Hmn90tdksLgmuKnTcz7sVp/RWDNzo8zoKRriuxQLcGS991WQcGmSvuNW/lEQYYblqgoYk4dTTHf1MGaK0ujJQXuyxu1UKLJC88QbMjWUjBNJIH7t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770388434; c=relaxed/simple;
	bh=LesRI98WhgWnTnheqNLAS8seqMaAMfLar7fp+ViCFbw=;
	h=To:Subject:From:Message-Id:Date; b=LopvEOhivu8U0RuZghxUbGK06Ilxm6lAQmvM9eay+s0g74ChsSktyvp8Igvre1kSSGftm+BAn+ayv+lFTVltSF9dvAm60eF7wonq2WqlgJ56KJ22qoU+dOsGtRlPOaNBTpMbBTIwyMs4uDDPvwrwIv1W5zeSCZ8igyPcLZeO9hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYLR8G0S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYLR8G0S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20E9C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770388433;
	bh=LesRI98WhgWnTnheqNLAS8seqMaAMfLar7fp+ViCFbw=;
	h=To:Subject:From:Date:From;
	b=qYLR8G0S7OT3CZhpSKquiVEZbmQEpsLnGINK+/OcCmRYLWxXZBsy2ASnoSm/H62Xe
	 awAGuI/Ska+MUzxdwq/BeiQxKQA4FuWpNv1IEI7juc35eEms//zQse7xH7/g21C19Y
	 vhad+CYUaMwnd16Vv8iGH5DgNJbI6AQoc5XbdswfVhTvAPBaxeaOvjPzG4DyHnEyyw
	 zAi5EtlL7nvlLz3o/mLmBYbqg2P2BemfO7OZjV/l5CmIvrdC43EX7EfI/XJcpUBl/k
	 8OrBOGXyyFm7GGm3kgr6UfIm3LDsrrMUaBvf5GRfDMc1n4sW4Lk3lW4uPWnmR1RxKR
	 j7ziI/IPUHAqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91078EE20AA
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038843358.30052.15495260176351251747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831a851db03cb9df6e001342184f3b1d639e06247ac3dc92df702b49396792ad
Date: Fri, 06 Feb 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770388433
