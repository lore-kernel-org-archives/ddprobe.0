Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACE323A58E
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759776594; cv=none; b=M+MNkbSBZ21pykNqfkUgAbLhBCcJEASrJvPMXM9dGJnhXuzp0qpzU7a+JYS+xrqEEzZWj+spTGPLp3sauFJnoQp9MTbHa4fCKVnJLs1JXly8c4ffspEBCzmwai98mrLh01KLwOZXkUMHhCnfpZvk2zM8dN/AHwvuRn2uGeoTgrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759776594; c=relaxed/simple;
	bh=RxACckO/HpMaVILXrNwwczZQPjDidA/p3MwF/Iz76yA=;
	h=To:Subject:From:Message-Id:Date; b=SquhdWSyUWQ1bJTtaUrSpRVRHLFvOExt6zHmWU0WO1QBoNnlVzE8/qDlyY7N11zFrnADISAzwGrB2gbB2tgzAmzqcaJx54gpluuQKaWbs9wXatbFbyvnPD2UWZC4Tb1USKc2TVNYzI4SSlprECB24/z2jRHEBicDkOwywoSMB0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAmXGbIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAmXGbIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF34C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759776593;
	bh=RxACckO/HpMaVILXrNwwczZQPjDidA/p3MwF/Iz76yA=;
	h=To:Subject:From:Date:From;
	b=mAmXGbIajcwGebvhKUW3lSEFEncny9BfGM//wgCm57uC2IaF6qOIWIb3ZfQ5uXZd/
	 5zGl7jx67rMkeryrjJyMqBe3UgH2e0V4FtBH7+rVVi04q/julLRfzA4ms1Ie4zDWv/
	 KutPk+S5Ipcbrvprzw841HROrzQ61xMOCqeo9Ulamjl6pFTe7z36SCzTeLKQgW5YsX
	 RH+Sl6/z+PKKY1hGGUTxnkqLVZpAb36YQzMVU8eCeNAGHPEtcFbWMQdFw5gabLEkOV
	 U4WyJAJWVSZJjP8/5p6kpS26O2ZuYrW2BjrNRNVa/hH0FGfEaDelZuhHIsCrnYcc4F
	 +05EWU0zEIN5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F035CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977659357.10943.14110870944215539123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c7b99ec9f034801e890bf02eecb3426a1ddd9eee0b0e26cb8536529aa7e694
Date: Mon, 06 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759776593
