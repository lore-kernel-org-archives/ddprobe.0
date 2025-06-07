Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2232E2F3E
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749319195; cv=none; b=K5yZT5NaA7zruk5Hwawivpdq4p7ucqw/DEI3b504GnqK5siD7oGQXRJn3HkjRNFqwcOTT7Y/s5Ajnx15T+wQ0T18qv4WjjBA0B6Oij8FoXu/Zs8togAd9TfEvlYRamQKTGQrn/vqSakEkFEtAdVbj15LAWUtkXnGN8LsLbG7KZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749319195; c=relaxed/simple;
	bh=IzP8deoKfPpfQhXZAYzYtLu+zVw611ZCma3Sniz7xKI=;
	h=To:Subject:From:Message-Id:Date; b=GRkyjxs/g9DOEnjwRUJ4ippZel9x1i5NmHmvg7cc/tbGboIpAcGr5k2toul4lSM88WpylzIuxQi+wOfhBidXYPa0RkAZAELXhnG7CyvMmX2WSOxy13tGia9+SRHsX1RB+QKxagoqpAfSM1nnLtRSwhnTOBO4hZ6s9zp46iGX4oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKQbhChW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKQbhChW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E75C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749319193;
	bh=IzP8deoKfPpfQhXZAYzYtLu+zVw611ZCma3Sniz7xKI=;
	h=To:Subject:From:Date:From;
	b=OKQbhChWDk3CL0yVCxAZhuhOiKm3vnVHYpsQEK8SZbPMydbO3OfnHxQvO+GrGuCLc
	 TqMmii93usTyoc5FXnHKpTvHxTWhXPHfVoslL6eH15evCZu3KCbHB0yTbP1XQsiy+n
	 P8+LcWE/1UPXwECyX/Mk+KEiOx98XqeOpA7Mpe2JRls5ze2HYLYOSnsm3rJAkPikLA
	 tFxv67JyCF4Da6WBAwezYfstw2L7+dGr0UbD3IkRGp2PuIwoAJc8wCqmX4KqVYHnMH
	 1TIl7KvLeJhXmJHsdA/9O3c9q5Br3e5flbrQ/8eegittvBVj7Li9qSGQIYrzK3pFqq
	 BKrEJs7vWqIKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950B9C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931919358.7737.9534083922579427388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237306084e44d1cea82d50aa9cdeb953e4de8d14d33f28ab3be7d156013cbe1a
Date: Sat, 07 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749319193
