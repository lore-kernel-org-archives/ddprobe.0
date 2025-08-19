Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9DA38B
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755584394; cv=none; b=lr2Y5PTBiOjBLOsjwKiwA1V3VY48Efd48oTsjRZ7IY1ji5ES5AFwOAlNt0C0/UhLqxdEenQ1pM0ujFFy+thIxN8UC6j2LuT/cVGqwOknwQbHxA1lGrxrLIbxrO0pGfUZAyO+hnbNdwsIEO5OxuX7UD17TIPdT776BJwk8eIOavs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755584394; c=relaxed/simple;
	bh=7JhS/mIJkOJpG/v5p+ouFCOnSnmddyxX0u0B40iH/wM=;
	h=To:Subject:From:Message-Id:Date; b=iPUWA+3t+m8GXZBmM1TR3ZwNPkHwTBXgg80MPk5jFCxSpVxWyXK/gMqEFY7ya66YLx38hYDYSXgRo/DeRRhwsLC1OhmSelJv2BCGhlIGoM4PgUstVTv8O3AXL2hk/3iqkKK98l0YdQ5pa3MjNxhWY2DK2+IddWZZljzhSftNFHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iL7dGaEg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iL7dGaEg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C79DC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755584393;
	bh=7JhS/mIJkOJpG/v5p+ouFCOnSnmddyxX0u0B40iH/wM=;
	h=To:Subject:From:Date:From;
	b=iL7dGaEgT7O6LMUsbUfM1JDevO7Fp370qRMPYI/4Wt5nMyOtbTc7NrmR5xVh1y/TC
	 5TSSlsXQmyIL3TQ9+Tcom6/NX87KJZbMS9CDYp2B3Z8/YrzSvSQV8fE6KbjCTSdLOz
	 U02r7B7nqsj0j3ez26QCbXM5Yb6vPc9DvgHEtgUIDG7c+HKcGZeC6kDmWcUVQhn7gX
	 x4sjLXeDz0IfCgMLEknL3/k3d5aBrWfO+nFLrhwtfAdahQjI04vBATUdKWLRxAHmth
	 YmAlNcml3JTUWJLnj5IBh+kRTTIBgMy9HxDIC3ulpznBpRBvUwNmaSzFufX7/fkgh3
	 KL2ZA4ZJtmg7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3ACA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558439357.14501.11969324909358219046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8ae3c54d26c572ed87209662f2dfcb55e3c5a18b84cfab680504a0c9bfd26d
Date: Tue, 19 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755584393
