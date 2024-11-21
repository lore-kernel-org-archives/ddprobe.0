Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1D813F43B
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732205154; cv=none; b=KvS9e2VWdvs6QHAtSwMYLq4JfNcccEq1fbhwJjiv6f9EAMsbczQbY2VnH//ioUw0gFOEDYi5FQNSO1JA48a0HwQdHGAKVP4QgQZeMOTgnVtKvsmLCJEOKtYn0kkzYnvsTkWt7Uh2mmhE0tNWH6gW2quHU+f5r4lQY4uSMhiDJY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732205154; c=relaxed/simple;
	bh=6tj8ArGWEb3CbgybdchhernZB0QMSsF8IOweaewB5+4=;
	h=To:Subject:From:Message-Id:Date; b=VfojM1KYXDktslumWWzry795OHlCcTs0o1XQMM1F9McDqIf4hM/FHo4xgL4rgiFF16/8sJkEBcivSCTKrCcKCGas4WH00MJ/GlCyWsBdItlweV0Ru8UcSrwihXNMg2hcD1VHwnJ9eAotqk5O7aN8X8+IVfdhRpRJoBhIKOlRYu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFZThLVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFZThLVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD581C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732205153;
	bh=6tj8ArGWEb3CbgybdchhernZB0QMSsF8IOweaewB5+4=;
	h=To:Subject:From:Date:From;
	b=ZFZThLVzlhuhamr3BVZbRJApAlbMSFB4+k2aru2Ek5r82yBrJrYeU6ZG2KKiQlGS+
	 hySQ36S/f6ZKlKpGxZlxAqL+gjxSOzfCMxePuJzJw1t5a2H24AtuoUsKbYFsNuJlKJ
	 Nb9/mP+QFiM/m3V5qe7KYU0acbuHCq7Hi592XPY/aZGWPZT5kEH4fTrKov2eLEYir2
	 fSGpyfNxdcpVWtkoGRCE1sAQf+4lxGgQkExfmYscO27xtzfaWR+nfNwJQcRykLHvKt
	 1cPYh9VZ0KPxH3RXc8ECoXUDWhkEXk5wrHV7Tyt0yGUCL2jUlIJDcTps1+b3AwO9Ar
	 2LHgwZFWaLL0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0F4D78784
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173220515362.29111.11308511649044468888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be24d4f1fff990360626654dc5f644535298c7956ad056d557786c456442c2c
Date: Thu, 21 Nov 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732205153
