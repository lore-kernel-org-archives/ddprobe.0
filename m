Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8357441A
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711874297; cv=none; b=YramlkCtS///+ARcagON3fLyi5piIxOpBSOxscZ1ERvS/MYk0DIUz9ygk0STPgSKSVO9UaDu/EdhQMDi2Yp2+CFoN+6grzfCXrg0Mf7S/QHGElqLlfFKCCPFRyXkucn+lc9kRmbKOMobtprisiBK3a3Kz2Z6VkI1om6AR4RcF7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711874297; c=relaxed/simple;
	bh=vr+dqNnx00xxVBjiCK4x3lndUQ4syDUTpvawf92jw58=;
	h=To:Subject:From:Message-Id:Date; b=ED2e3FibParGeO9GBwFqTssNOVg2653avoMTBZuRWEcukGIMpuE58/DD1rEoWGlP6pREAhPB9mBlWgVmzCGc87ZaNkCZWutzPaIxmkVCnbo8JnJjY18OcuK45fKd/jT7hz885gNXDPME07yMhxMAwbpsNlW4oFEdYDFjbgc2vNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOBYx7E+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOBYx7E+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F98C433F1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711874296;
	bh=vr+dqNnx00xxVBjiCK4x3lndUQ4syDUTpvawf92jw58=;
	h=To:Subject:From:Date:From;
	b=SOBYx7E+Ja4OYA/5tVQzvMvd0LORBJ8+wyjGGoCTqfyT/5tE39VjOcPvj0FSloRrG
	 gewNMWd999PRxsYQC4/UwwV+HlV+30n6v0HqBmVLJufIAQCcxoZv3uzpWVSZh2hkoL
	 z7prtWJhmOv85UzfseuiWsrkxMbA9z0MSnKisgu4EndX6yUJ270HGaUG7G3rTkBTlT
	 dlPKg/PbdFXAQRDkOOa+zuxXIAAh59+WrK6rMYFnFwM6MCmx51qcOSKcWZMjJyHGzh
	 Aha+xx2YQNQnYBszp1bteagij6GpYiUgk176EhPaDki1ppResrfYgMrBj7+wq+cN2x
	 T2m7qd/Knm9qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60065CD1288
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171187429638.23316.6434874721293532256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125cd17a90831549905cd73813a9a9ecaed9d13f543d25abc2e7536163daea81
Date: Sun, 31 Mar 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711874296
