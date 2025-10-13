Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5672EC56F
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760353194; cv=none; b=HFLmWg+d+5nXM3MYquLjm1vgJskVHsE+oth3v4ubVLk5bi+Wz0QKTfjSJUZuJnXOEextU2YSHeBcTWEPvayUvGnWfqx5o52mEBm3tQ2wg16SFtkar8kJjSyT3BNKbIaBNiTJDyqqJran+f8mtTwDph4JkNn3AjX73wK112f4VvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760353194; c=relaxed/simple;
	bh=CrCG6a2GUSgyl2clugD8xKoUDPollzD0guPcyp6xYl4=;
	h=To:Subject:From:Message-Id:Date; b=iFF91ovy1Bh3enfr4CfU4uME3tluP4PHeqXiUXHhPlhtZ7YbJvh4rMe7kXFCuIRMGZQ59BNCUCsELtwiqCzVDQxuI5lMiD9uIP++MfWELhsDSG2F6zEeoFNHhm6Vp33iI5HBnpghpdKO/nLLccSSuynJS/YgWUC+ivEyngsMC6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2v4/4/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2v4/4/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C27C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760353193;
	bh=CrCG6a2GUSgyl2clugD8xKoUDPollzD0guPcyp6xYl4=;
	h=To:Subject:From:Date:From;
	b=L2v4/4/fC8uE0wlFCrgfd4yXR8Q69Jg4NvAhALmLOwv7chCGSTjboi/8JtXIi0upT
	 3Nrw+cLMfaKNJ0A6oMU3vRQpY7zub89sZ/nhBDR90N2G6j7bFxVaHr1sZAiVlWeSen
	 SPMoypweWGSf0AKZ4Ew0pwvuZEVvad8xJdj7B78pQCmzsclUgpbGHmJRNKfXWC+gD2
	 F7JhHqTCyrTUW3gMkmd8sZdasv0kk9X5vwcpE0fK1LHLA0CpNk3mMeomNVIXn5iaA2
	 VjRokhnLBQfQ7rfHqUjkrsGP6v4bJAA+ThOnrpfIL/0wW8fUafYiFP/U5AV+t/81js
	 BGVd9f6JwkCSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB7DCCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176035319357.16455.1727343630735750592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc129d909c7a5b0e6979e4a075f5254682d11ff21a28d751f3a991db55660053
Date: Mon, 13 Oct 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760353193
