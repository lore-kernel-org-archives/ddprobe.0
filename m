Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFFA3A1BA
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729656354; cv=none; b=lahX1xYuWpOOZLCCeeNUJxAAYLeaDKg3ESFDUKASHd7oB9Kcp9NQFr7rWzszhcXhby3YmSKBk90ehvbojP2ZUo0PrQ6A/+1djHN67nSEdWDqBMDrWXJnWCtjcqHUt7J7JVsZK1+bvcmbOh+AFToZ1uSyvdynARd3EuTXQlhHxO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729656354; c=relaxed/simple;
	bh=L33gsxevaZ3Amt0OXDAtfO9HqC1DvQV6p30AGFpnI/8=;
	h=To:Subject:From:Message-Id:Date; b=qIcv+yBM1qF8Q4LvFNWauilnonSx9JDtpXdE8hJjpapYaNfetruRYFFAouhVZasTuHg/I2iojcVWS/LV4+J5kfjnLxf6M5dOI2NxdQPepBvfQJi9RZCyxjE4S/+k8iGf4nqp8GNb9uoW7vpeZDz/8VtSGqRusm8YZpEqHb+3c7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsyxLd8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsyxLd8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDCDC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729656353;
	bh=L33gsxevaZ3Amt0OXDAtfO9HqC1DvQV6p30AGFpnI/8=;
	h=To:Subject:From:Date:From;
	b=OsyxLd8uK9kKXx9oZsmB6Q7FnuSdIinQ20rybfy8q+xhhniLDBMBPfIJhK+TZItOn
	 dJElmdEW6iC3x44NMgmopDGCbo9rOUzcyv7agyhkcwHDhIee3exHzbMPXEmPnK5o3/
	 gau4GCSaSsDmCkIGQbRnGoSgi47nW4cERgCIbpVDrlI4kRgiiFfU1vH/zmWKD67cnw
	 ZzMGS2v11axHEcghCerAgN5Xj19gMMIyJGe+miskpGMDI1oFc6b75FzstVnBvDnXm+
	 LcGHIeFssrkDdMBn7UQA6pey73gl//vpRuYAeZhtpp3tSZ/X4Jg+e4b277SF0NpB0E
	 jiKk8QzzSActQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9747ED2E00A
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172965635361.10495.17216001544230200995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1554b78c587b4eb722b9528794f8270f2b5ac84214d89c403c70c9436fbbfd
Date: Wed, 23 Oct 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729656353
