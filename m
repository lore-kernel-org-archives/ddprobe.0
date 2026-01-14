Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01A93793B4
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768427034; cv=none; b=SOy7Ja+lM4Y49EF/ikAHoxLdgmJO0l7Ne8BKDbkcUefhk6uSnulR5e2MGx+oYaaFRs+zRzBvNWdlCyJ8BH89IRQbn2Q3z0Udc8Yulv9nJ+Kh0OGPj8EYEo6dR+DGi78FjsqaCbev8jRMUHL4ZfwqQq902AQAav6tejo4Vh4J1lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768427034; c=relaxed/simple;
	bh=t8guRYYI4fBuBLw3HLRGGopicxggyeUkOpuUm9hopaQ=;
	h=To:Subject:From:Message-Id:Date; b=E66RXsR+u0BcQybnReAujGsK2CYphIHYe+zBMoU2ba8oPE0BO0RjUOO4cB9BQ3rujfxTEwrOcI0NhC8KvUF2d2XB7OmMVokwDYv4PTZ5boecjFts05VqQOKd+nx+Dgxc8ZcX277SgLE6oR4k8MDadWviWeOfsoLP1Ysd0pyazs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ2aC6Gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ2aC6Gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB27FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768427033;
	bh=t8guRYYI4fBuBLw3HLRGGopicxggyeUkOpuUm9hopaQ=;
	h=To:Subject:From:Date:From;
	b=lZ2aC6Gxqn9T425PqK+2O04d96Fa/9kfd4iUP9Kmagz2Vr2O7t6+D3UCc599sxdTo
	 g+754pl3pozhmTyCexIgJgOK/mDgCXEkny0lVQty7pskGJoGSape9tuKmMrjm/Yjja
	 PjaBxYztec1NlrJMyw2b0t7BWbeWdk22W6XAdHS/Dq0BF/XK/Zxi+K4r5zM6oa8Za+
	 NHNMVwtDj1gKUSZWz6RQDTHqTAfokjU2BecFK0sUHFP64oitZ4xPjsJSy28CwDz9Iv
	 IC0TESEEi3eavJOWyz+mw7tQzVhRdfqBbjGGZEqwSZvzVsVQ5eDNOgNs2LL0JCgw8W
	 obPY9Yv18txpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ADED3CC81
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176842703359.7802.10888968481145361070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3d1208fd8a7bd10df925a80520642cc8b3b4d4cdf8e5a1e2e358ccb7adea9d4
Date: Wed, 14 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768427033
