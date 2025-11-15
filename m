Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AAF265298
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763230254; cv=none; b=tHmghCrFzgZpKp8dQ0/YOZ9RDUsEggwJVaVdE8U2NCeUC9N5XYc/cOAA8mbEkHudOov6fbH2fJrIenHED1ls/WbiE71dIU4UmmlSeaAavFd/vTxHCzkcZUou9J28M/kTj6W7Ef0e3Svzt85n4SuO9r5GzvbTf6pVsNjjVBzeZ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763230254; c=relaxed/simple;
	bh=deGgw5cPoWRJc5BJWDAVhXyVbwVo5vcRBNGRcHB/qGI=;
	h=To:Subject:From:Message-Id:Date; b=omhiG0wzvEdcGEIoRtvvhRh94TP0ald0wQgIsPdE0dRcDCj3g8PbLZ6ikmv3Psov6MYE8IqRfqy/0Ms8RpMtjAWwtjIKpYRW8jMGxnU/mbjUXqO1ZTkcu354Kuywat6tummrrpEhGWTRrTfjcCWvsQvZexiQ7CdhbXReT98YIds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mv2k0RU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mv2k0RU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A748CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763230253;
	bh=deGgw5cPoWRJc5BJWDAVhXyVbwVo5vcRBNGRcHB/qGI=;
	h=To:Subject:From:Date:From;
	b=mv2k0RU5uu/OnBmC9c3qM09RPHo2SH0tKtBZNNXFuQwKiECiKAJYrKIleg/wIZVtM
	 r5mMq8HsX0qTsDCb8CPWH322oYuqIvqqkFuBDqB+4jFxMqtXAqljZ8eOQG+ic6pDID
	 WUa6MBR4i7ePb9HRfTTWFOs5dZ6hLcPZlowPhKic83ATwhhFDEMKpRrsfwD6ypj+mi
	 3c4kmnYVZl1KSur3q/aXq6t7cfJ6PT3zQDOe125xlLKmvW37BxkVEiLvAdUHJ1R4hQ
	 eZttOejLpxyDxtB45u7HFqUZWRnT9wD7nDb1IekfEPb/KKnEnnBJLCyXkklxAuQtnv
	 hGoT4/3sDLZtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CD6CEB2E4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323025358.13604.8612961585457982753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a048c4fddb36dd62c23bf150148ebd71f90bd605ccfc38ebe35b0235c0f6e1
Date: Sat, 15 Nov 2025 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763230253
