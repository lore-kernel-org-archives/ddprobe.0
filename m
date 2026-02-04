Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CAC3594F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770183834; cv=none; b=fGPqxXnqSq6mP6x9L2ElLN+b3bW9Ju5XEO+NYSPjbSm7d4qeDqALEAvk381RU9AizWllOWgkS1tb7EE5q36b7d/R8eBzo8BEmy+Mz00DB6XyBPvP8zyA56VlSUX21Y77V2SxEDnLyzGttYJCrxSTFGD1QkOMvZNybXX/jJWQ1cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770183834; c=relaxed/simple;
	bh=xas9Tfwoyo1DocE/kSaaTssEGVra7MF5kylzL2IO+K0=;
	h=To:Subject:From:Message-Id:Date; b=CTLGflKbNgeuNN3Fs3iIitOd+dtq0V2CHXUZL984Q7MpyBD4HxsCvR8VX1sUcgN0askOvT5QbNErPO9RSbPySB9lRILY8GOWDIgIJD6IelIB+37DhjgAhhMY/JQtdFp/N4I9I8SD7oVyg7/OMmIOdIgEFeX/At3MZ+6S2OD1k5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3uDxRet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3uDxRet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770183833;
	bh=xas9Tfwoyo1DocE/kSaaTssEGVra7MF5kylzL2IO+K0=;
	h=To:Subject:From:Date:From;
	b=D3uDxReti5GG20QKlSie7DPcnRARVRdxlaH+/RHwFAkulblLhNIEPl7Gw4dNi1OlE
	 xVTdPH89oUerl2GH7h+EJ8VuODIwC+5UdNrcUWMtcl5ZX7Ov+u7jRbvzPV6+Cg7fXe
	 RcXQPpHvb7y2a0JXeQ04XVCz7XUHNm8K+ZATnRSzWda/SdAfF+zqygRsskKAxJXt7f
	 JvHIsR0UWtjjSU/55p3/XfCjYoYL9ooyKHWiF5vH8hfMSyVKsATCJwm3ernbX+sMpE
	 aJ24icAEPyUPOu1Q7WNXI4pS2AD9GjAQ4Q6eu6XzuEZthYGI4WcJ/FWsYWCcY7UTe5
	 yQB02pgwbmiag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8DE7FDCF
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018383358.31223.9917533034974713166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67aa2ca964b94b2ea6495f44267c13b4d314d6c7b9fc40cd2bc7480cd75c8999
Date: Wed, 04 Feb 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770183833
