Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F110DA34
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710806897; cv=none; b=u0yUWrZlreu/5WxNrfx9FWAxuurJB4g53Wx52UWVMLSooauokpI2yImu05wMV+jpAWZ//E6/1faQk643EYuJklsy7UPq4zcNYOGeceVQWyz8/kCoDUI54g32hMilAVQ3Lqqtu3ioFtljoT8/P3Oyex+nOaYVwqdMlaqvoFl8bq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710806897; c=relaxed/simple;
	bh=ty7aC9U9LIhOPZnEzs/eb8pH5hG5Im19vjVhiShxdoY=;
	h=To:Subject:From:Message-Id:Date; b=BsPH242KtpFqGRm6ZmJqbPh9nZkiw6IXdLpxktdSoKdRKkawq/tibknvOgKrxv327gSS86BBGbqsrD01pAVK1oZbGoEzSNUY0HXCjk9LSsE0frzPLChDnmBHapn2FocWIvw2Tj/FRhhNHjAV0pWBs5XEYiGbrGZD2RPKl/Gc7oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6SLjxCn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6SLjxCn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774F0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710806896;
	bh=ty7aC9U9LIhOPZnEzs/eb8pH5hG5Im19vjVhiShxdoY=;
	h=To:Subject:From:Date:From;
	b=X6SLjxCnjZ3mO7V4XwySSefwPTE1lNFhPjCQ24KV/eSxFHjKDEiDt7dEFHqXSiTqf
	 TDe1IVTXGfnAWV48s19gPDW0c0SeUmubqNZxK74LJ+ZmBmSwA1nnblpv3kthuuLfOH
	 Xv/38YVIsZ24V0/1Ik8H0MQbg1ux24vVGkcxavNZhwkFhiXfA2uy5QoPSRFxExKBhZ
	 UWgMtC41oYDE3UPHAcUVnJLBfPHK2zGsHUJ87peM90lkPijZ4zmd/QYVUmRo2LN3Ah
	 ErBKaOYZJxLZGsJ7vwfovm6f7K4KQfXwIlh6dMmgAAMTuAztahIak67nuYJTmqkL/Q
	 S+B7t3hvhfaNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65059C54E58
	for <ddprobe@lists.linux.dev>; Tue, 19 Mar 2024 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171080689638.5510.11326027962381966120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b67882819171ac498517d645bc54f542b2502e30bbde290924be9a032d0d813
Date: Tue, 19 Mar 2024 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710806896
