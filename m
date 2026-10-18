Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F0F4AB1DE
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792333234; cv=none; b=UDHfYwdq+J6x7rbaHln7e+JY7vttu/xSK1Bfh2iYyTsX0j9ZqWNk5+qTgmuWhW4Ca02TeLOeRpatob03JdHQA72h+trlow/LPZd6gfKSsTzDoueK7wals9nh//SeNahk2O+vp701PuXVWS2CYNhrL8FE7MhUuJyUY70wvgyHguY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792333234; c=relaxed/simple;
	bh=AnXknOdV03gce72rBqT0HYzaC0p2YeJCBfiKjhk1xXw=;
	h=To:Subject:From:Message-Id:Date; b=P8MaQdxSLvKfJ/UrXxp0Co2C8AUeY8W/5kCdtsPrBaMziGuwpSuT1rDoOsaon2Mv3x/rYtLyRbxS1js+1QAsNgcRxsiAqnQaOuTZ1N+QNgIrLi/N8Lp/NCby74/FPky+gJ/LQtDQWSYq5WuPpqrAvjij1H12cZmIr++fYfspXVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmAXgLPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmAXgLPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E46C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792333233;
	bh=AnXknOdV03gce72rBqT0HYzaC0p2YeJCBfiKjhk1xXw=;
	h=To:Subject:From:Date:From;
	b=gmAXgLPTUmJDXsaDp9HEmpZhvTiK9FWRi1KdDWSs7effcIzvyPursKNibVb8jQ2e+
	 KMeq40H8uPRamUPhfMiPp4GLYJr8GdFwRgR9+e6QtUTnDN2bNk1XvY3O4iSK5HXKRH
	 Iotyhl5zyLPMZGNz5BTb4a/621qeASXOyHQZYMPGxe/tWHjWbGL9b/wBAtLmFJGt4A
	 n7NohK8SsbQDbOHDfkxjaL8HuZBriMwUB5D4Z4/rCEbzbLmgvjlr7qCIwLFX4WOEND
	 5spQTLa/R59+gmk8yFvFvsHMAs5QvL/el+wc8f38vCMFJrEXNsRQyJrs10zFDDSpvy
	 8O1xcuKnjCPAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC162CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233323368.5365.10069655789674751310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4a787921283acbe0a8d026a0449c9db89e71e57ffa8a87791527f644af0f3a
Date: Sun, 18 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792333233
