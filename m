Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B13C3AF666
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792274434; cv=none; b=lxXVPNOB+ev1L1k9Mcco4KSyDf7ZI4sx5LJmTeKIdwZl70p33exEtT/TTHzdSpldV3wW9lSaBetS0dqcfeAepQcfikghdVpN80UGqsCyot2MeeScvPvy0lhTpb1VxJhfDQYBw9u83J1ViYDrI4CfQCMVJKoH8E8E4AB+GzTN9tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792274434; c=relaxed/simple;
	bh=utOr3PIYBDRL8fXxPlydBuxhpOZwGL7DK1QbHJaHMSg=;
	h=To:Subject:From:Message-Id:Date; b=ZuEKL0b8bYOMKqsxpYjw65QbGL5ilw5UfZYaDz0w1kv5C+GWm5ws4yBQCVif7ShFFpGIu7XCuVkqVf1mF8B77qJAEabJPwTC6Az64SWHY6AI8ebjOappvUMOZrpoFJaw8XxSvqo4kFy78vU3l70Og4tuS+Nn+GFbDERp3hse51I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU9xVHrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU9xVHrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB18C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792274433;
	bh=utOr3PIYBDRL8fXxPlydBuxhpOZwGL7DK1QbHJaHMSg=;
	h=To:Subject:From:Date:From;
	b=pU9xVHrVpYMiDFUkGSV/CS9Nw+s6Xxc5nptYytTzQVd9xaXHNtEdYr6DnZ7fmhvMM
	 b9baW3NDGk0eTshWlCVoGsFAdHyBelN3oz7Mqed/O7hF9hlsk9n4KGOwM/RPXscF28
	 iGes7SNmGDXoK9L4khDstwpDGDLEvykwTgCgNzAzBHpQlWmfdpgzj5XS66s7s8xOhV
	 H1WISOZbkktdRiWSHIFGAgVz/PEUpue9IpOreuRb03w2FuOuiDDO0eIUc3Uh4ECKjk
	 SIo+jKUGA/2TYmGHZhUfWytrE2GiL0TWykD7iVAwLmnGxoFoLK1obooY20DS6Rn/EJ
	 knPfSzTVOgg2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3054CCF2CC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227443372.433.5840236228321240239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad820b7b120816b059a4c8035b615ddad97ccf1e23959ed83c40ac474d39e93d
Date: Sat, 17 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792274433
