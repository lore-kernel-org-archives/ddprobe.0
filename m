Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1220D1397
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760030394; cv=none; b=qbcz93nPdLgGgAra5I/J7jAa7vxFmfMvEgjZEWCLen++sWte6qU438PKMf9gIT5/6ibjL7UdEWvTWD/egSCgIqIjZb9ILwPob7xQyLDFl9ja0eVEhS/5eaZOj0COwjs3O9lK0c/rnK9B+lsk9AoenGATkOu8IzeN/mMAEqF/Bfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760030394; c=relaxed/simple;
	bh=olJmPhqboZmfepIaGl4cS4aOr640EnqSm3rmYBcpb1o=;
	h=To:Subject:From:Message-Id:Date; b=ZDGTgqS5VhggCVF2Ol/p9UPQyQLUyWkd0ENxht2HrP4qqXmBn0TPXGhczJC/J/UjV7NzqmhWwZdTFppIcIpXgGUWKp7bnR/LGvy6E4gKvKlxjeweXrIEpTFvxyaZPON0VoyYqi0CpL2fQA22BZMGWippm/0750G6S0eWz8+2wrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/RBVM8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/RBVM8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121EC4CEF8
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760030393;
	bh=olJmPhqboZmfepIaGl4cS4aOr640EnqSm3rmYBcpb1o=;
	h=To:Subject:From:Date:From;
	b=B/RBVM8o1fIS5acE8vH0FIDIaBpRcikQG+k9G/vh1jt49M8YM6N+MD5YjiTj0d0Ur
	 9aIdIULvSQNBdQjjuBUKRp1lEzSWqRuprv4OMhuDet+AXMgIpTNIxSvtXmJP+dl93k
	 pwkgGQ/NF7MtixmTQkmVhKonijOkx79Dtr+6JOnw6qeJmXS+xPAETUBjhRh7nQx8fN
	 wfWUVIACPSmGV3XOWAHydY84ii8Vzj4/sifDV485x/KgprHN0QGbu03KI2RjUkQHPe
	 DHqKMvEk2HENBV7ETruFfy1fE/g+q0ZFvHY9wc6do/K6+PcfXcetDskEoX4lzr6eEM
	 4s5Di5IMN0BqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9184ACCD184
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003039358.9498.10955821841773532118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 662972c54266c31e026ddf9957794e8b372f3903a830acca4c83035c5583898e
Date: Thu, 09 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760030393
