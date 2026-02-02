Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338112877FE
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770018234; cv=none; b=OiqmnZ2x52EkWASpLciYi64F0hoetwNdSCSZ3d5NtnJGJD5uZlZKcCWdvOnN59gg0CCHzRwdj5mQYXTlQSP5lq1fxwN8SVwnWR4wEJt12Na3U0AVahjEPijXj3x14M0+6JTOVIIQ4d5Vk1jZAq15MAlJmNhAARPhS3MBJymn0yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770018234; c=relaxed/simple;
	bh=FC2m3CDYmsyYY4RyqXBz3OXFCA+7qODn6/C3SiFOd1w=;
	h=To:Subject:From:Message-Id:Date; b=FnyG0b4tz3m4ngOCXzebXeFhWC2g+IbfsLqWnMH8MNxC0hQ05hyRoD72X4xUf70ErrfDTu2XI/uinMLqspHSJdO8JiB4u7njHy0oIuO/6xIpHnLiNJBgP0nXnYri10uEo/2/OCtWoGvDFETRwrhJaIdED7dhJH8EpXZwg+/ImNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SM1CHqzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SM1CHqzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC362C116D0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770018233;
	bh=FC2m3CDYmsyYY4RyqXBz3OXFCA+7qODn6/C3SiFOd1w=;
	h=To:Subject:From:Date:From;
	b=SM1CHqzmuxQ47i3+xYJPeQ+hcITWlnEoKggWEhn03MYYCBzftcEOPURpnl+wCUNyO
	 xZIcLh6KOmcG4AHTvJndsR4LUMJY2z4C5l1pjYbdyo7fO3IAOxWGQI7IqC8H02+Bd/
	 w3HvwXVxdU9naHEkgenn+CnpOT/tytNbuVTv1GR9fkXK66U1JA+UtqDfaf/f3TLYL5
	 HpfGvGUUlYmGn5F4a47KdvVH28LEDsAtLHgSFvnSQLbkZ8OlN5tf3AWJcr1jyduiLt
	 KZeg4gcjtYX8le6b3Wc+v3EMU96+3PIeRjpqu1FfBObsrpiRNNDMjuh6LbGaq2IqsF
	 fH/Wlb6l57mJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6593E7C70A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177001823363.2913.1638905919790104551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375a8abe444494e68c10b3ed7e595ca09d0f7c01897573aae8386fc22b6c07fe
Date: Mon, 02 Feb 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770018233
