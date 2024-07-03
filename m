Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401FC17A920
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720027523; cv=none; b=MUBhlWk+bUe1RZLfgIecwdiGxpHPIG9dI28gaibqsgRFtdNw66jQXnZBSxWu0JmSh2g1T39dbTV4vx44EFe4j3KWL/xhBZAWiP/jMuCA8niViK7O2tZwpac4JpGesWY176rmW18fARlZyxqN2zyn7+cGVifqRnGxTgZN3ZB3p8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720027523; c=relaxed/simple;
	bh=ccCwiwq91H75reh0CD15X+NY3ru27HnV///6L3m/kGE=;
	h=To:Subject:From:Message-Id:Date; b=m4m4o6smdscJrWcPt1127mvmuDCR9frIOw9m3ZKHG3/bcJ9SMNhx8iUHPUD9UbvdKoCYl00QYzBz8fQMRLjzHj3ZiwhayiWDqhHW9471UVPIpG/wksfoBszQffZ/sYrroVYtqpqwCEthFboRPPaEJVET8M933oPhIWRPS5S9/6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f/vUZN4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f/vUZN4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC12C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720027522;
	bh=ccCwiwq91H75reh0CD15X+NY3ru27HnV///6L3m/kGE=;
	h=To:Subject:From:Date:From;
	b=f/vUZN4YZivVQD+6Pk9MzRkQHmyzaf4PCVuOf0Nvx9qo23cqFsoxKDBfLxbo8ak2M
	 otPdZ6SYIQ9pv7Axho/YsMqecrSmtvw0SVSFwKbfYBpwj2CkgY2268aZDVGpy1v3vu
	 QzXaLoIjRWH/txiaSWffXJtkv45Itqqp6082/boBAo5JDkkoXMjPvcdC+NqLf0fWuU
	 RraXyehHG3vTZ/0GoJAYcfnfqP2e3a0ocIXzt8J7CBxgibZbgMDzBH+98jzYzqa1vn
	 jSL3dUSDQWMTeg/rw5gz2AahZ8s8/4cXq4RD+MNM/CDAC/aeiqbBtjSFrXpmFXWapM
	 xz+WFrmywsNGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9ADC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 17:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002752277.24270.3330965532356974489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9444c42691b75d170bcabda3c32f7dd45df4bae8f3754d86de0d10e0250e02e9
Date: Wed, 03 Jul 2024 17:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720027522
