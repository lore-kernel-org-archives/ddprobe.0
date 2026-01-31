Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67FA23EAA1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769822633; cv=none; b=jhCc4ExpJ/WOZmDqfg94MCuaImXtbwpAnA4sSGHdtjJjxaVKnZ3y71Hyv8aGFLr9+Q5DxUxoiEmQBlbd4SkuqIkD6KAkqAN7JlWYii6zDVltu/zS98hpaoVKurSHtZnXDDPtH/U1lkkaVMunCJ+RbTyMfmBSJ0hTMF5jvNojyIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769822633; c=relaxed/simple;
	bh=l4ASoXSwEVQBnSzxEPQGlu6gVQLKZWk5dKwTKdDYUmU=;
	h=To:Subject:From:Message-Id:Date; b=GaD6N6z5ApJhrdeL1pmPLIg6nTbuAQD1RPDg36kEG+xltzKXx85sOSBkiidIcFGqZKPsovhH4U/9nC98kj3+ols5QHAFPGwKx63g6tYa3FX4IwLcIojPIwzaskbBSA04AyMAhCU6f786YvBrx7Deyp/d8OnwjoU0dDeOOFFKm1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcnZccB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcnZccB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B28C116C6
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769822633;
	bh=l4ASoXSwEVQBnSzxEPQGlu6gVQLKZWk5dKwTKdDYUmU=;
	h=To:Subject:From:Date:From;
	b=VcnZccB3J5xO4nLYJ4yL+dqIgWP5Jk2oIFGWxBZrTQKKHpBp2DCHjBEJ2VBRgF2Dx
	 /C+FY9ckO7r3DJakUp3rP0B+kKOPnQl33GicOzAnckhilpc4IfjVYxZRLsI1QRGwGQ
	 FqIYFDAnFKLNyiJVY9hruTRE4iZK72mBhd19SxqFyqq3TLH1brIOSF9qMd+thdLTBG
	 qCY2CVy0ZWEQ51EXgffcvWZfyMxht7/Y4OGzmnIiSPDxxpetUW/H4SM5i4uJ5Lua2k
	 ND/xrigeBgdwApzvN2l3kZ+zihKuzwZcuZWxtq5lL1Wg28QDEj/3mFV1rKkOWOa6Vs
	 ym4g93sRMqbJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC4D46C1D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982263359.31036.7294246035933689532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b139f406ba22ea19c6c3026ba0dd82a8f2c2adf5aaabf58ca27feaf574175fb5
Date: Sat, 31 Jan 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769822633
