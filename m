Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE504142900
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737035754; cv=none; b=jGzjQOUyaDmlpQBHTwxN4vYPOfXPdZnCJjafADdLbXT/RMUkQJv1A6IZLw9OIqusZp+0Hk0N6vcHB2LZ9W3BLj7k5rBVTxN7C+JLdjU1O0y5I82EBX0BwK9/plvUXx94asm9pGtSAz5GnkEzvkHVonsdfjyUnoWcoNI9ncdLvKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737035754; c=relaxed/simple;
	bh=M0i/bCnnFDwJ2jpUvJcZ3Ayui6ss1cEVkpFmbKzTkgg=;
	h=To:Subject:From:Message-Id:Date; b=mASgkv7MPTFTkdzv6yNT8rsvoKkD83Wr9rEk3+csAXTdnHa6R0lXx4OiqjdIyklxBBn2ssU9F56NjJ7G2BeWDNKiOhbLa7N7p2AXe7ZfuNj24hfhR7oXKz93S3LxUZXiXWN/8DI2GeFKPL1RkSlozWGZd4iJYeE7KDZ5euVLsEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBic1j8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBic1j8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F26BC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737035753;
	bh=M0i/bCnnFDwJ2jpUvJcZ3Ayui6ss1cEVkpFmbKzTkgg=;
	h=To:Subject:From:Date:From;
	b=dBic1j8k0bWlzqougdmQqM3g4dRBHPfoQxiB87Gwsxo0OlZtog7G0Rv3km2rPsAz7
	 gBsTqegVpJhIcouVyXGhGbOmbhkm0ZmOMI3AuSHW6/8E2lsEPxTEnJFRWySQ3/w7DV
	 pl3XRErKIx0rnr9rkhBg1VmIcGGclsqGEJEuIZwKU835VRNkc97SOvidfOzlmeCbzN
	 JUHvmMEYf2nlL0tgXiQFsFDq+NnBuOoupb3pKjlkHXuJT0jLnzOrU8blJwEja/SIGs
	 Akx4Yq3H0iKgVpyGbaxlfLhRXLsYCmWsIXBH+WRXRrrpJX0t0cNSJpQsWCFXbFdGr+
	 FpEevaeW+Oxhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91899C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173703575358.13222.16495813132828073308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd60fc392d469d7967f0303e8717c344dc137ce6dffcf376cb2ffa758362c6e7
Date: Thu, 16 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737035753
