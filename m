Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630F518DB35
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787115034; cv=none; b=gZfFuMHXxAe7wp7/nxdxO8Y7U9ZfqkH+iRNJLjv/7jRAAW80trarQzGqPvCyXxntwZfFxwe2ZIUJUWSXzTx0LlFrgnbQHQ3ZWQXK8t7e+BEdJqs21jTuGyg9tpb42TzGjmXdZ1dZIsmGUUTfOY6XYju0Vlx0E17uQa7ln5U6cmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787115034; c=relaxed/simple;
	bh=BUgu7D8UKSsjpG6Qs+dKEUGxMAQS1Gm9YiAai2XKoxk=;
	h=To:Subject:From:Message-Id:Date; b=KXWtmSYSnYG3Ap+lDC88TPthNJ4YnqnVrT73Je77EyfCjquzoh0XXyLhmQbrxkk8ZbDmwBzlPuwRWRaJfyhAaYKQ95hfEcDNcI1yUo2my3ACDZO7Y6Dy9y+EW8KsQ7KQPCIl+dc4sl5uhPFPh13Ksrl1gEjDVFzxFvtAwH/bYe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5pqs6M2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5pqs6M2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1210C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787115033;
	bh=BUgu7D8UKSsjpG6Qs+dKEUGxMAQS1Gm9YiAai2XKoxk=;
	h=To:Subject:From:Date:From;
	b=E5pqs6M2sKt0UAnyXHxxG9MIZp3/MkGqtAdVi8mmvyy8E2M7TWS28VhypCo8BQSMm
	 P9uVXsH4t/SmtzOHbilFmUw7aQB+SBUSgvy5nNJIlLj5K9JuPidFx3f8OAzis4NjM3
	 DrNnNOkYcxhv32TBlbxavU+kxufkbzYMji0ZeT0AjA5cyik+4emQxMztcn2AW2OgbQ
	 CRSR2/TYa27UJ41oNX2NdXaLWZ9xKjSr0+v1628q2D2nC5ymgd89NAh+jMskudZJV5
	 FoHb39HddHlMRWY/4ZUi+y59iBnGalHKRYeLEoVWMFiv5psJZMWJrdUYtlsRNOZ1If
	 Vp3LXrTIAdsLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAECC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711503368.25877.7956728669527712904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab03f164176d6efbd1a7e6bf623a66dfd0acfc704662258cfd6c027b1375485f
Date: Wed, 19 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787115033
