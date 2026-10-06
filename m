Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E6F51F192E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791250834; cv=none; b=XJ3w/xH45igIwBgdtrGmEtZcoypDSgAMtdHa2n0XF+D7981boLAO29KZ4bjIXRbvdaY917RVb7NlTFgN4MgqK15ya2mSxUTvd3XRGA5gw+LKLyKlUhNfXgDLkQpFAZdwNlV4hvoP/KNZonv3ppUy3hUZhOob93eVUVahKWpI0Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791250834; c=relaxed/simple;
	bh=XvMNpP/n297M81m+2IpjLbpEpWRNz9n8YNH7S410R/4=;
	h=To:Subject:From:Message-Id:Date; b=rOsL+WPK5I8ue7bH8ZuQFEit8cz4HERuB/EPn2TY5s4huJFPhVEj91alreT7uk5kC58TIt5uDg7WRfQQxKNH+hMgr+FfN4AdNJdaaIuwz23uXXrkD/5xk00shlUjAYXrM1W+0+XXFj3aNzW8+jiax4iP7/lb6NrmIyNsmuyAHq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNkclA9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNkclA9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC649C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791250833;
	bh=XvMNpP/n297M81m+2IpjLbpEpWRNz9n8YNH7S410R/4=;
	h=To:Subject:From:Date:From;
	b=vNkclA9I2nJ1uQ3lM1P11myp7JVjO4Xh1uqPoDPqH+KgojiZsfMUzfLZu1ja02usS
	 k+jjkdZ2Vj/muFrNVpopOa7XqwrfQjQ2tlr6+jIvlh8Rw7bNIdVb4CBWYB8Pwy8nyR
	 5Mu5IaseMlJtzr4nqlaL1WT6MzwWn4jNumIDjRZaIQWgFVG+K+juCrHpwWx+pClpng
	 4CeJBng11gCINaWYKjhKmUPhqIzI4KuqRO9aRmq9A/Os5IuhIWdbU3zZVO1eREsFeI
	 sRgJl+hvoGdCDAJAOAomvoCKa4C2Fz2ho9eJNuSOVX2ndK69w5nt98nfCqzLuzT6Rc
	 dOV2ndyDTPL8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A2CA5FFE
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125083368.25711.18312270291863853059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0faf90bc909b0162d4922f4cf52db2e53152f768a9e5839cc9f9016ccd3f6f7
Date: Tue, 06 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791250833
