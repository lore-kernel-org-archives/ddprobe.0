Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE94810F2
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752357593; cv=none; b=RnKDm+fjMqigOIjFrgjaUQLFaEaY8wRos2joSnvpBg98XKbXROKkHEvvpwYXO6l7ZK6X/ArZEEBogRonVFih6+Nc9E3VtxIL8FiPQiuIoXJxaKdWwryzp/K0T+y3p9jcbvLFGfe/89FoUCp0fyuFKqvXoCW9HfOEtlftvKq0Sas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752357593; c=relaxed/simple;
	bh=eeV0k3Avf5huIPolTrIefFirRcjY6xJfvK7BuLejmXI=;
	h=To:Subject:From:Message-Id:Date; b=lTxWCcv0jhMrRHdlejjK7BFKA0j/aIzeGWSEieIsiV3swyVUaFY28tjnw/vzXkY4oAYfnQLV3ZBxs/bpnWtLNtebkWLZRZEshdYYG6YCbepuKNQN4DtUwxi1bHScEuUBCAEYG2TXpPcsD9ornSvpelsb48ghrUR/5wfihg0NU/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8vBYOfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8vBYOfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B13C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752357593;
	bh=eeV0k3Avf5huIPolTrIefFirRcjY6xJfvK7BuLejmXI=;
	h=To:Subject:From:Date:From;
	b=C8vBYOfujA3JWis4kNigi4tOyVEuqQxSolyeQmevfxdYxCQHr6kKlnUpVf6SWYp6T
	 cW96XDR9q9jZJ7xQBfWu4rlMKN91pT2Gwr0AfMoVjD2fcwhXDBtGhDvuqptm80wVOj
	 xSxyhmuHW6JPkWR+L+G9oYYUO8kKSXwanuE/0Icu2pzpAt4Ak4XvBene3IAZQfixYw
	 sJ2WaMejXePo/a1hluoIp5PBoLBS5Vo8VjohXXae/Ol8D2gHGDwldZlNZEdQisHN4m
	 0HBwroaAZhY1v53QNoMtEL4xHTTkU95TR9fjKiS3Spznm3L2Dpj3BGZgPob2jnkbJ2
	 U8CqCKkSpb/vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F7CC83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235759357.24963.17735191767819627769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d4f69b44cdd5958c65e9fb89ec50759bfd06bb8df26207bb0ccda2c0beac8f
Date: Sat, 12 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752357593
