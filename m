Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6DF3D9E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729992954; cv=none; b=ET+yYhUaHTlq4F6YRpd9IpkFcembdAA9QyCaWvOpLNGQP+zDYGGb8Il1QOWLu6QSZpoSYI8dyNPprd+8qZlR6Jtj4YIFlZ1Gcfnp5qf/Evb52cvMrBZnNF4ZsmMiz6o/swHnbz9wkhyP7oNfhWg6u18hmycOlBxPkvkRL8Rqy14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729992954; c=relaxed/simple;
	bh=y9INVb7yZuAYcv82SEqiNua6K+fSbjgmIRcG16cOozk=;
	h=To:Subject:From:Message-Id:Date; b=jUN3kLk2IQZI1SkkMj/6kJ1L9xg6Ei71vKWN5U9WzVTmXxEBuRTkOseqDdOZCvgxBqXSN98qCplHtHZWDXunjZqdfVRlVo69ThKslGaW5DCu/VCtXr30hVgmAJ8YQusiJp9w/VIhwRIgRu/kJpoAcUx2WKlFrq79sRp7JlqRwA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IvzThMJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IvzThMJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE12AC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729992953;
	bh=y9INVb7yZuAYcv82SEqiNua6K+fSbjgmIRcG16cOozk=;
	h=To:Subject:From:Date:From;
	b=IvzThMJPZ2HGi31lloQvFGT9mkWrtm4os/HRSXQpo8nZX38nR7qU+DkLieSVYqlXj
	 GlKM1RJUkQ9VRG4XJFCIFYKxPglrE7s2tIAMSUdCZl6AmLo3RVJJ3zMbuAqlZSC0Wd
	 HpqaNnMefAJ/HkGrcLLJItDZAj3ypCx1gcEzRjp7oAan+DJEALranNrNM/kc1IeLVk
	 4YTFukkF9nU5HFSCJK9aXAiu/mdSmN5gV3eIwlo2pOd+DRUlkELDkb5kG77u56y8Ly
	 VdKtVsXwEYc1ZBupd1SKQIh/fWuj/bit9w/X8ssVOVPmds4kpyAVBGpYRoUUf8I+mc
	 +way/79xT+nYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA5ED10C07
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172999295360.10658.8704482175147226892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79123c3e84479471b7d3c55bdc0d59213897522ec695d567a2e462ea3eb2323e
Date: Sun, 27 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729992953
