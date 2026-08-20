Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E1646D2B2
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787233234; cv=none; b=gJVrTtw+cESmh4KS9O9OOcLpSPyLRVkS046XR2T8IqzgdmABsN159fM6og4UaYf9G3AkILjVKbY/RvMO21uAkRmGOLbsyUoXRzIfEGXFpsv1a5WYyucEE0sM77rXqK0EhS+kWC7ZenqJIg2M8PepNuBRXd8HMEKdSAv0DhqiH10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787233234; c=relaxed/simple;
	bh=L30DOcEFdTVqlVXz3G2OX38l2LIn1W/+YmgLCzw/JCU=;
	h=To:Subject:From:Message-Id:Date; b=KKUS7ieoDf8uABiW8YRZqIbvxixfZQUohmcEO9A/Miiz4XuMexuvZs0V1hcojIjFDGC1a9OBGGzy+wufUeDcYYPfFobKrZH2RWCzsUiFfNXxzQDdkCZ2XH37pee+oJhAJuq/TrVInlm8I8FgL4jjJfUSaASWrMSMMJoDKkC/xqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9L47QPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9L47QPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15A0C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787233233;
	bh=L30DOcEFdTVqlVXz3G2OX38l2LIn1W/+YmgLCzw/JCU=;
	h=To:Subject:From:Date:From;
	b=C9L47QPcGWpyQtTzOsoWU0myZ5s4fUj4eP97sF2AvSn330tgQ4mBOqSt2F4rscR9D
	 gCvmhq2dDu0UT6+9hxZ7CgtMrTKb2js/HvjaWdDYwVBH31OnQgpJ8FMSqzSaQXPf9Q
	 Shz2DNbjGiAGPSmlenQ38z/N5MtQWX43EywStBfi0u2SBUzwDA8rn3CpzDK1C6I+Cq
	 wPgvJjiEp9rHacSwYCcVdB+4AdsFnBTUryP8xSL1OMpcf2IKQw4e6UfVCwt/jl8kwU
	 k25oUVvFuXlq2yqVCWcyytbUmNz4398x//KfRayv81RiFEp1TAnymEEJs8uow7EJGT
	 Pm53RHkI/PGRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA69DC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723323368.19849.10272815515259351419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fb16fca238c42fc3512bbc46992c2a3c2caba2b7d3bba4de6920f047e72671
Date: Thu, 20 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787233233
