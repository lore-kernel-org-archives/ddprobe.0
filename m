Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0AA1A683E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790394034; cv=none; b=ust4e0XLqrq5mv1B/gYazIFZwxpB8dUwfJ96/5vCUkqCmuyDcPdvIcPNPA+z5U1chtkLm93Wl0h4+74T12B3OvwuD2NUpFo6Zla+r2hz3bN+ks6RZdpda9VrrSwE9j2QC90Z1V3MzCD6SdFKCtqTDIZOpyAweTtPBwtEIM/QYos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790394034; c=relaxed/simple;
	bh=Ae1RUen7LYqCRG336m85QzO3/QdU7iBkaVg8wT7cdZM=;
	h=To:Subject:From:Message-Id:Date; b=X3/fSSQ9ilYIK+qrT1Ba3cZaRG31gKcofI1URDyuq9UtZ+IXOaE9g34/NBayWA73m/abUwtvFpogR4sIJz4nkBfdI/3Q0urzEE/z+tBsHTOORqLCd9Xv+udL02CkFWVn4lW98McF5/x8gaQDLpRWVtgAEHr7BIbQ+GR3TxeGueY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tX22x0qK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tX22x0qK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BCCC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790394033;
	bh=Ae1RUen7LYqCRG336m85QzO3/QdU7iBkaVg8wT7cdZM=;
	h=To:Subject:From:Date:From;
	b=tX22x0qKmc4xbDWJXICTo9thnaJG3858H+sb5GQ4wuNZn4vDv6KDJLHUa6SF97QHO
	 AtrzNfqqBlZqOfDPQLoIm6VHZ6YOqoOrWdvWMhxqXSVFDtxzu20NzY7OsXi9ta6xUD
	 GxJDHHunw22Jqc5m4dPjgk7cYSXRyV3J1Bu1Phzz3gUew8lXbW6sjSA7DrENzMriBv
	 YTUt/i3k5SaJvJvK43Seo8ksAanyJsT1V2INx8zYwTCLZyGf7DUFAmQZHht60YTxWL
	 W8MrlHEKWcKGSydIa9jK3F7sKE50gPB4n+yhn+LYvuKeQULE8EX37HMVsFnX+dJNX8
	 mq6SG2rE69NNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE431C9831E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039403369.12106.943496712079538325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fb45dab4127279fc6907cbdbe7dff6454dd3428896671e5fbd57b3c3327ef5e
Date: Sat, 26 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790394033
