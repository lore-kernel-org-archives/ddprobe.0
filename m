Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8CE1CA80
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 16:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716309803; cv=none; b=rkFleaYrlds3InTId8TioFeU6DdqGQK0SfNPTkbOKHQLzPrQIYixvLMxK2ePbH7dfa+n0L6xUJiSdaYnMiQDIXPD6HB0gVWhRTewtu3gelGjPYr2xym8G+Cmv+m6/4iUO2MOxPCOXoiYlAoTMqmSVOlWRypdwocnQtRdiDepu3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716309803; c=relaxed/simple;
	bh=PRfdWIIgU2QuOn3Al0IcxbHcDN+EC4VK2Fpyg3fFi44=;
	h=To:Subject:From:Message-Id:Date; b=P0J5yzibSbXndOfqrAZUh0P+zD326X75tVuWFxrkqfvZvUBHD1PJcFhmuRCBP+VnRQQSjmWD4EpY9ptG0622kQ8t+JcgZQvbkMNaitOG5eOmE7qUTl5SVFrJz2YWLWTkEalMwvgL/O3vTYruUtDtN9Qf1rz7kR25ak+0AFZfCj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzIhd7RA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzIhd7RA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4F8C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 16:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716309802;
	bh=PRfdWIIgU2QuOn3Al0IcxbHcDN+EC4VK2Fpyg3fFi44=;
	h=To:Subject:From:Date:From;
	b=jzIhd7RACSGGMzsvreG+w0tMlNYB3Vsfx+BPcTUibaUEs1yYdfWw1JguHwOAtn58Z
	 67xUJZivl/alqkF6m8txFdWtfrBVl1/HNaJpsMJNAkyXv6swLizzABn+Ub9VZ+ZKKj
	 a67D5a55Hj5nGfEsjO9NdU8V9J+0hUrl2TX/91hT88EO0zZhQAKdQ/EDJS0iH/IO6M
	 rityFcHMrGjpAxnve6ISMz4cnTGKSQE5qMFvpKcleEWPmxXaYfNPqN8AjKIfrR6kFv
	 HH+Kk2CnY4LVuM1/JWxvboaRqD69lVQ1RqGhyIKvT4vBxjrH3NcSP73rJaXd/O6JOw
	 /UPhz38PYvDog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9CDC25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 16:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171630980275.25324.1197380496722582386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07317314913f194946403f93b4b51b472983a09f43c354315dca8981b0b564bb
Date: Tue, 21 May 2024 16:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716309802
