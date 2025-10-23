Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB312EA159
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761215994; cv=none; b=kc7FGDeSAnLdLJZQ8SSiUvur2JZFRfSVWdvKZ4RwOIjhnQW5vkYvW8zc3Ai2M6LhrPUQL4Bier0u4AHAUTyrHjem80j4phgYG/5pY2q0kGIK4JeDaZ4r57ueMkJOfRwZy2iSrF9fn6iRw3PSp6Ta6EjYTB0BBJ3u44fGlkGLjmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761215994; c=relaxed/simple;
	bh=79JLIk4si/DxCqnYpIRhvM+wHsj1lbgHzBgzDfzRrdY=;
	h=To:Subject:From:Message-Id:Date; b=WRaHqBCR8zghwGFUCWMukTYbxDrNENPiYRTTTVIkYM0gAX6RJPYOIYlEi/sa+8Uhww/PDG2ES/oT6JSzilbztDjnqBGD9F8fIywWgcZYZ4KwXDfl033vz4T2GYwHHJ62Lhq3SMfmNhcjxWRWXYXBL4jIrU1fTAAU43YbQ06KUIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqK5WaPz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqK5WaPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55F9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761215993;
	bh=79JLIk4si/DxCqnYpIRhvM+wHsj1lbgHzBgzDfzRrdY=;
	h=To:Subject:From:Date:From;
	b=CqK5WaPzBByFQg7DPKpx6HcorkVhBeVjOwMCqvpWXaVqm9eEsA9TiE4gevHlLRwoR
	 TCfAleGhKEjfZX2ERTxJ49p+VA60sjxQdVL3fTeLYJl7URx8lZhf1G8uhP50oUwAUc
	 jbTPUUjXX+2PFAQfRWeG+8p+zKg+Xm4Y6sB/SOVuHcmj103OEmenXAKyBcDdB30AoC
	 E8DxoDG/EwfMG5aJDXDITXs7dsZAgvwDDGixkRnXmDh922uOL7xZH5SF5NpFt+jPS5
	 robv2hdC6SJ4EGBqgj2dlbk3loRH7FktkBTeDUSvH7q4/9g92EBBqp8mVFkbD+1eMe
	 yBMFjrSMmpUtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C4ECCD1BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176121599358.26497.11360274101716848216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9682342aaeef7b932b49567316dcf3333439ed8bc70bbf884522ccf4a6b0b948
Date: Thu, 23 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761215993
