Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F75A35CBD7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790179234; cv=none; b=ug8hoemre34iKr02YG4eV4d5mU8xVqpm7o9KNvpew0d/Q6UqQ56y64c2Yz9Pt6hrTjUYi/yVJl8vIwNn/GctULRxiZG0w357zf8psJGYv7Zs2K8u5WmaiYB2qUssWg30UISmEibxIBrBmft7kOpbYS3LSbT0WXpwKP+WDwBnwrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790179234; c=relaxed/simple;
	bh=ziRE7IM1S6Qh2LUYHQttXwwGk7c0KTrtj6KOg8XdjmY=;
	h=To:Subject:From:Message-Id:Date; b=p+lA6bFUo8HWCo+GPMC6ZG+KHg+sKjjYQf17UgwAnegkWhUQpQiIFvTqInpDBL+VJ3rkQmruTOrqh3gGKycadJuXh3d5VMkuKWTFccV5wY8Et/rXmPDFvAWegB7TgQA0cNlosdP2r+Te8wceLv8mfQtJ1OFOgHlPwUtYTvcsNTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2C/Tsrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2C/Tsrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DD4C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790179233;
	bh=ziRE7IM1S6Qh2LUYHQttXwwGk7c0KTrtj6KOg8XdjmY=;
	h=To:Subject:From:Date:From;
	b=d2C/TsrvHzjm1pJyrdwTbD8KSO8HMbZL0/s9HDlcp0JrWmc8+LR/jtXStraowUchR
	 c4igMBNXdT17wSYJsgFluyresDOeXRaLqqz8VgQxOsoLRQ4zDFCbNtdbAeobZULyen
	 I//i7KsSshehK5Kj1TQTZCvNZGJF7/6A0gezo8NFziMlH/dSEmmtwCAZxBUXDCO3IR
	 miV6OSOmVLJJ7625UEyWN5N+p8/E5lcdaLHjRAsMJiuq/YSueGwy7yRBpPa/t/mWE+
	 WOxplesVC7hJvJXRTP3rVvwcqFz1sTlZNLuNxz30MsrW8hct6k5/CcLeydbS02LLI/
	 zidq+acmmI1Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC9FC9830E
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017923370.15360.14663841665475711574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0eac8990645742ecae36e041a56a87a6cfe3a654e9f671ec4d1fc6f758b98d
Date: Wed, 23 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790179233
