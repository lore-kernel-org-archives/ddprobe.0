Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4E32147F4
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738684554; cv=none; b=MrFDN59nPxF8rwTCFJ2O418ySYINQoGhXlFW/17wG7io9j4pYL3fCp0gLoYmem0s7cU9w+gbaVjBtDttpxTFr3pVksKXCH6q1wJkXy/MAo9YOvGwMYhtd8EA3Yq0oy8I8cog6/3BXkP1ZnFY4J3rrvyYzrwPxql0m5sCgg+YO9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738684554; c=relaxed/simple;
	bh=AFuL0SJpzB72j0nfYiqym99AN/Za07qDxpZxPxTbCUo=;
	h=To:Subject:From:Message-Id:Date; b=XGW1kCmzz/DW0EFj5RQM1LxV0RPWhkrdjWpK/y4Gjs06iz/8cH7hpPgt8pj0ubh4EE7YZU089Gk4+1H1y9NnN3LfOhxG+r+kgEUsi1HtjWGs5MRCxO8/pmHsG7ayyjTz2nIl1BW2C8Z1x0GNi8ZpTedP3ik/Nw2eiQjtau+T9jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGntT0Hv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGntT0Hv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B704EC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738684553;
	bh=AFuL0SJpzB72j0nfYiqym99AN/Za07qDxpZxPxTbCUo=;
	h=To:Subject:From:Date:From;
	b=SGntT0HvMsm1oJ5MQdmUmNL1Vi+aYp12Afp9cNmBj2JrMmEu01E0NgLCsPep1FLMJ
	 fjWrRMwMBcqUZHFxr+xmq9x7SppWk3c7dsNZe/fql6u/0X5jKLo4WziPyepMgP/tqY
	 3adpFAQu7PQ4CR2vL74PHruPy4MMZWhij9EUDs46JN9O95oL7VgI3B/IkxV4YZutMY
	 H/LsRKF9na5Ju+V04nYATnanNMTBMhYQMFFzAHgtOjqqb7UUM4AbAv3ezMe/bvXvyU
	 AAQURMyM7NgrWBOTiMoC4jff7eIALlYavUaYWPA38aJxi0lm+pUoRibSXb+PRBbTRe
	 kuA+G7tkVFIeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F608C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173868455364.27303.12163126143143617220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51b95921ed135c469806279444408c18fccb642b1fb677a676c7f683b74ddd11
Date: Tue, 04 Feb 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738684553
