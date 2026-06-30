Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A0672623
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782781714; cv=none; b=q82xWhBazdCylesOZNQ+LKxwr3P6gCE8PwrXMO9Dl1qvTf0+woClGLszipRmvsRZh5vF2sd3uueR9ZrCO7u6r/rBOIX6QUWCM1FnTJsACgyUplwR0vyWpCzr6uC8DvRrwaTPCkmpaQyLb3PGzERbhBlEmXelVXN7miJ3WR9RwWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782781714; c=relaxed/simple;
	bh=Bg4bf9H/c3Mo6GR4wcxfENjZQThx06DG/TyguZimzHk=;
	h=To:Subject:From:Message-Id:Date; b=EWiFfaHsDZXHTqGsPzf/da60S3KTL5peVtS3gb28qx5OoMaZA9XRnMgnPixMRnsMzmpi5+Trz2cmWnVCOKhbi1r7WxmiTDSmgFlZyQhEDSegDda9Ek0PxMuDCGyGhiXJVPUlzGn8BW+jBRSNB+vRW4Y1AXrPr/CcT42Yb7dCS90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+DaosVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+DaosVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E98C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782781713;
	bh=Bg4bf9H/c3Mo6GR4wcxfENjZQThx06DG/TyguZimzHk=;
	h=To:Subject:From:Date:From;
	b=B+DaosVpqIKBPltl1RaUHwr8ucFd/eH6C8Xe0Kvr5a+CaQ3pP74N9iV+BEER1zE4I
	 7bvwPBRLcY0q6vgh71SN9UHt8898hUY6glX59qC2sWg4V5G2pZO1KLF1fPaZvbaob+
	 uAHLVrZlGm6PKyhx53yjWAThDB0PfkINZARM7rHaoA3ClZxg1CF3YjA0yeqG4ZdD1L
	 xv1BsQvxoXa1mdfow3GQJWTouZegXAe8Wn362g1Olx1XewAPMus0tUalET0QVZb3Wb
	 idsv6PgZzl/fsvRd8n1cgWOG0ho8UXJYUEQkx3x17QxIxBt9l3/BHeVrD4fl7iTpqd
	 joAumaM/2IBIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93EDC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278171368.13902.9259236686545604054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed3454a2d3e7671d013460e1e4bb043b3bae9c85ea5c609cef169744207de60
Date: Tue, 30 Jun 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782781713
