Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F5808F49
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781845594; cv=none; b=N/v4sUOc7JLmX7RNcZ+uri9lcYQRsKobq2TUpcCloE/e86w/f3rGSkaWBrkXX0R5/TgCEmbCn8fB3yEe7KwmeGIK0lChvrJ9yqTeU5Auu6SXwatOROHOqpglUgbXL7rwabfWbtrcaT65AwAO+NqY4dcs/aQ0LLxi64kEWjGCTAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781845594; c=relaxed/simple;
	bh=74eSlB5WmpubWdrZLGp07rPW1Ijvh9K4Fw75lPFHX9w=;
	h=To:Subject:From:Message-Id:Date; b=fHGSGynw6v92FMXOv4TYCczkbqx4/6TfZIWptOC9a5yR8Qy8Z6kVqCLCEEvWSsThTVqnFaof68SckzJz2vhUWhgeVRJLWvG616uo3sUZjUj4HYBHhifJSbpEh2uhqGuB52SP79L0avYaj22W+YZUbKsuq/tj1WfmOOhGlRbgvTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwsJ7GDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwsJ7GDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB3FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781845593;
	bh=74eSlB5WmpubWdrZLGp07rPW1Ijvh9K4Fw75lPFHX9w=;
	h=To:Subject:From:Date:From;
	b=dwsJ7GDTFU/CiT22Zdo7D/pDHpkToWeQ4mt44bfgjz2UOqcipLiyWHdKDcHoBtr01
	 zNPT4tsV+zoZhHRSzEuoieNG9F9Fzh8ayL2xWoOWIkkVIdiZPYpqSWAxHigU+o4VFv
	 YlgvKf299uNzInyJ/mRPkjuH5pGp2jDEbV04LZXrQYny8S4yr/sn3pyjPrv3lqzcGg
	 c5/AkEqr8v8rH9QgK4ExzjhUZIXmFBwaDjAzd+vxpOqT/uo8aici+PzVJML/LFiC+3
	 RsAy3Mv9s3a/QFsT6sbQ21sicli/V4Ul2nLFXmxXDawCJ29lbfxMrYK5A57I7jQ/wq
	 BLQTzJids3bWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E3FCD98E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184559369.15858.728234524165203541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7499ecd4375f6ec83b78620072473cd62c00821bb9c9d588dd98ecd22966f58d
Date: Fri, 19 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781845593
