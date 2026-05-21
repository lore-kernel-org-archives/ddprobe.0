Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5108E35674C
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779388954; cv=none; b=bNEqVf+p4ocSnWB3px7XNeq3TNkQVAp/5oMu6UEOWIj9KDPG0L0j0SuYQO+aW87nM1mDpbDDLUk5bSGctMxGCVKcrJ+41e81CSf3/2Tz3LXMmkBK6KAMmCQfDms0GbU/DIPixVJiMaWNefpPJxbQEyg1PcMiWew47oIsM1VUmXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779388954; c=relaxed/simple;
	bh=kvPpcp1zMdoBfZY16qP816Oy+UZLR2V1gj/4//Oz9AA=;
	h=To:Subject:From:Message-Id:Date; b=VkWTUU/NeTEf/T2JGcV3qp0bSmDlrH+9oBUADUlWDvVNUUdw23pLXAe+QIZKztRYCcif/47jh+v1cbwRNc/+uFIwvMYOb48Csw0fncui88rAZM59zblhEuqsUuUi80JyucckhsDTfc9nC35aNMP1r9vm5ktdMGhYYft0BniUUtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obdTwuVc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obdTwuVc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46FFC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779388953;
	bh=kvPpcp1zMdoBfZY16qP816Oy+UZLR2V1gj/4//Oz9AA=;
	h=To:Subject:From:Date:From;
	b=obdTwuVc1ShgK8aFEXUn2EMkdh54UiMRgUmdHH5uwFG6LaUx/UiTXRXBF04S4APab
	 yinLd4AQ+cSMqleaZPhwQqL0hn7H0Dz0IdOuOFhzLNt6qpDy5yMxav3SDeJPwwRDkz
	 FMwHc1GORwBIE76UychRAvi88muy8g6QZ1s4fSsiSobl0UpAHGi1CzmxkrzMbWk10B
	 NBqu/5O4UBlNV1q20cqoAVJKvSBu7Fw35eifK7BaIR7d1e1EgLzeQ8Xw2jSdp90bzl
	 xnCMvLQh5xCIyoGc4WwvvUSK8Ctv3GhC6d++DFF8fQHzOsDFvOnPGfQKcJfDlzwsRJ
	 I9Rqg+1rI32fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4DBCD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 18:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938895371.7423.2382217378655391459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39954eeec44a60e75b423d1cd5d64f9d0b706f5b81094cb34f0b28bab09888fa
Date: Thu, 21 May 2026 18:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779388953
