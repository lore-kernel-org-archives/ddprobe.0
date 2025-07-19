Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B013FE4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752953394; cv=none; b=KIVExDwAyZFTRg4YyTk0H0xaCDd4bc4Fbd6QLBUp5sHwn97lKUNX7bAQeS661cOaKEd7sDJoAjv5bFWejUoQvcTOIb5hUb9K6QTrZoddJRsY7An6u77GnIxkG0IhrwGZiAuQB7zT0zi/xDX5kPxkcLD+UndffkByCduoJ0HXo/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752953394; c=relaxed/simple;
	bh=TqCy4E94Ztd163e3hSf7En+cN1eOgSV+7cK85SjBecg=;
	h=To:Subject:From:Message-Id:Date; b=RzdTtuFyBk15OVaAIBs1Jml1ALjNGYi6t2PTIkQtPL+MkJZfSxNR6kQ5pXj3DeeJSn6X+ZdCjAbN/vK7vxJlzJ+s9ZoyVUqQIxaHVApz9TLiLrGrygT4+n0VtO+yT1F15qfnqgtcJufwJeXTbBfOFOqD4/4tvOIu4owZvNCNEf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TI5waXCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TI5waXCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED4DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752953393;
	bh=TqCy4E94Ztd163e3hSf7En+cN1eOgSV+7cK85SjBecg=;
	h=To:Subject:From:Date:From;
	b=TI5waXCTEja1VkX+i3ZqMK+iR9f0qAjo99gt3u7bHA98LvwSD9o4wnvbTyleajNIT
	 +CoU2lyX5gRSYT40cqp8DNaJzX6UVjaNHphuAZmfuQefxISRvYDHqoTv+hWzb1qFqO
	 bukcvmKoQO6GAiXzW4tqxu2UDTTLSNiiR1vV2XgsvdmlOG3iUkrulHNDuYDJ+OOkCM
	 KYtc5fDOEhyCo7U4MYGJubt9VwBazLjGgk1h5S5zdyNBllaSUe8L4p0DnKotZ1xRMX
	 pJWdN3+RswhvdVtFQQrvnS3g/DuYawi546LnpmeXbA1QrusIRe7XNev0/5Gff10Mft
	 tWTpEno5bbuoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2FC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295339358.27230.10404638393234839271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a674aa9808163a48f4dda0d6b854515c7647fb8630dadab19adecb8f0e3efd0
Date: Sat, 19 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752953393
