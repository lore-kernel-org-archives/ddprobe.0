Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4433B7741
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784621914; cv=none; b=g1iEwl6yskUiJunmra/irCqnS1wg4aYqcP+/snAM/8VRjpF+oVpKSkXHWVC288h1PQlAQetrmGN1tTSxHy0LDZEVEVk1dHjF8UUr53L6qe6pbV0HAN7WF13SxavQkFOtV1IK/2fMLDWEZDCtQxah9O1XhmG9oCb9K/ITo0MWxyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784621914; c=relaxed/simple;
	bh=99+0mQuexdnlyj8CRfc/a96IFWyWSSLoMQ3I2scXDLc=;
	h=To:Subject:From:Message-Id:Date; b=Ua+dm0Kh7Mp4fUidZ9+BQb1qJ88kEV9xMr8VyOsl66J/m3lB19+Avj3Mi3VWaBCm8DZJPOkSUawSd76O7vI0xj7BUgVed3nLdbiRKJKFXA+jGPGPLjesuLlj9DcIv/4Q0QHuZL1tuJQQE5mhUyD/J0vizl0wR9HC9fP9E6dC/Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJNKSNHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJNKSNHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC134C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784621913;
	bh=99+0mQuexdnlyj8CRfc/a96IFWyWSSLoMQ3I2scXDLc=;
	h=To:Subject:From:Date:From;
	b=fJNKSNHbzwHhOLS93cDaSr+jXZmwiDx4hrhUs7AClNJYsZf4b6zKTralIz+QxVVFc
	 EVl8uSNU+7MAVtTy526GATAGqyQI3GuhKd+mbepx6QUNkXJbvRgDJNsbgjaoZsDAut
	 trdOzu7qbVkFz7kgjEc0V+LZM2fk859i56SHNcCrj0givVntNkvRvGh+Kz83ITbX0D
	 74QCi6XSsg2KN+exJuGPnQyIUV67HM/ePYoLnHPK8FcegJLFTdTQvH4actCQRdGFny
	 I5Ls4eK6yl7uTO3t0F3piGPcBTsskrUw0gzv3ymMPgczLE2TzDSkPth//i7YYZ0GVq
	 xm8P7tjH6Mn7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D3FC4451C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462191368.20310.2566438309386620883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f1734d963367a9054d07846d83814b95b31fdd299e31e6c37a1b9b5d6d8a3b
Date: Tue, 21 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784621913
