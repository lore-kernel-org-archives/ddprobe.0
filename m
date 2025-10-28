Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5250025F998
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761632394; cv=none; b=e5o0x3CMk8wQNBiCMtD4GIzWXvVW/oQFdj6Wb+kM/RhSsOngfe8E84fWAwGNnHJioqGU4hH+jupWDHGRiOswT++eTINNaAVfYtnORi3k7SNjD9cNkRSWNNpzPOvie+aD7+dbAXr851URrRkIAhPk5u0sdIgWO1812cnV8ieerN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761632394; c=relaxed/simple;
	bh=mooYcpArDUMaEpWt6rmCQ5VVWaLFque5qY7UUdGdpHk=;
	h=To:Subject:From:Message-Id:Date; b=CxQmqq1t3CQiHFj+Szf/RXBOeiSs8aX/G3Y+mZgb4FNGypYzaGNnHJbMgdSGLY0mQ+WnQGQWSlaBFnwsPmvcHPbS8lmdNL3cKH0/ixrzOC+7C8E/6LsCIV3sJmIMWtD/g+ZDVmyDWJvu1OFHwhnHazLCmsnttHuCODYg2rdhpqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HveTQuLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HveTQuLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6562C116D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761632393;
	bh=mooYcpArDUMaEpWt6rmCQ5VVWaLFque5qY7UUdGdpHk=;
	h=To:Subject:From:Date:From;
	b=HveTQuLIo3KzMq3cKgrQcF0UonaDgyZksP0sOlw92uZxDW2UNfkwcN2lXekfIoFpi
	 SAQpmyptga3d68RyjncDbIseFOP6cVband+41OosanQ+0J95kazJ6xzsiC13Buz7bI
	 0mX+jgyZHqhop9Bxj9P+h+IeCuCJapniT6OQ/2A9K5eJuoI2sMYduglLx8tnX4Y9TG
	 ULqrlHH0mxS1Me74YkYnQGH9fPYQQ86qZ5L9NRI0jbw9AUJORyQvp5P+TaBjFROvxN
	 ayODdWzsyF4qCxS1pC4shMedtbAL8HO98xbw1BUDmUl52l4aCTIsbExoZtXYBOJra+
	 7/k6iOcNjzBZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1262CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163239364.19663.3271810294964509686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23846222130aa979fe8bbae8d15ea9d1ab5c7309de25e9d6729b37d08b055d9d
Date: Tue, 28 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761632393
