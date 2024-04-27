Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4BE4EB5F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714224743; cv=none; b=UHKf6btjQ5dSfetXVvfa2Jr+2CeRlSFlUenZTKSZwwutuuRpqNTgHQfxI8j1D26nYMeCltx71zIpCO1YwfrYA9tuT4E2Enm7c4PABZAxjKiYB50SwjUQNWCdn8bCxD16KDfB1AeMOe+d33G2R8jO7Fj0JaDzeSHumG6Fk0j2Q0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714224743; c=relaxed/simple;
	bh=aHOka+LOk5L4Z8jLO7XObrnZZQrLKVxNPKp+G2w7oGI=;
	h=To:Subject:From:Message-Id:Date; b=aG4Be/ZPBZTBOIcVpuLY6F59OGACwFa7M6ZTXJXA1HcugNVKLJEbLIzxVBMGeBVoDDDrRoD0Ba7WeTvbcMsOpdopyeN7E//4ZgDZAtpyrDjQoZRMEE+RH1c2YJPlPXvzS5GOFnXQriwKd5ZcSHwYGN73Fu1U4TBHRejVn68MhSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Szk3P9Yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Szk3P9Yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA3AC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714224742;
	bh=aHOka+LOk5L4Z8jLO7XObrnZZQrLKVxNPKp+G2w7oGI=;
	h=To:Subject:From:Date:From;
	b=Szk3P9YzQV7/EtIC4BXDKYJS2tNHbiAxlRlkBFixruCJeXVEnNOTRho8aX1gG3XoU
	 7fBCyKYXwTDmCuYwq2+YnENtej7+pRk9qRVSR3oKESx0JS+K2j2GBvp0i9oesLyBqQ
	 spJL+QdgnBDRmqoKm9iLHAYF1iIaObaMLksrh3fwMvQgKeT5lNfY0gHgrz6P4Hhnu2
	 0drrt3fWPxu4HwaD2tdYn6ULO2kIhlMKeXoxmRA1QJ0P8bDw7KRp2AD8u4rmJxlQb9
	 Uqk0Sp9hsiSZB7bF7ahXs/eca9yDKHktHOI+iy04Wwoz0AqQW8pGxYdBRa8BeqGvmL
	 /xKSZGh6HHg5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26B5C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422474278.12053.16957555805441326788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500cebe775963f5943fa62790cef34bfb51601f38ee263673a52f2a422a3aa9c
Date: Sat, 27 Apr 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714224742
