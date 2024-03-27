Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9BB28DA5
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711523897; cv=none; b=PW8IQCI42Ij9kx9uH4nfWnwDfjBrDul0oXHhz6fbe9k4hYbvtmzKvfHHbE7g+tZZlxjvBd2uq2m+N/ZtQJJC6YwyC9Jt6zLU5/EP2tnfLXM+VH84CefHwoWQliqKZZk3F3Rlsf8WrFRgAeSop0kfqvAnIUytgjcf/iOgClkGY3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711523897; c=relaxed/simple;
	bh=g7KY3S00qSRSxd+sUIfSR72M9jhTwOxlsji2N3ZjwVs=;
	h=To:Subject:From:Message-Id:Date; b=ZxTvgWfth8mJ8EaEnwoV99G/Wbo8U2Rl00gbKoSYG4StWf5hMWe2upG/leAa5QDPUjQ3wkN9ObsHWPjBzyz6nfQDxTjmiHK1ihAvz01lxbk+xSb85AjRx11Maaya7ywLNyBQ+ZAoHjIyVeTl4LyucPgFDW2uQhXNuyl8ejeKfI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPWUPw02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPWUPw02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75054C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711523896;
	bh=g7KY3S00qSRSxd+sUIfSR72M9jhTwOxlsji2N3ZjwVs=;
	h=To:Subject:From:Date:From;
	b=aPWUPw02fk1G7WNZmNUOZmeGUzcvGroEyXpCPMw/pKj4mp4AbPgnMdYSjA7QvCStN
	 +zye9/0V+1e9prSsR5FpenlQFIuFE7AH3tuZv+y+qbMc5mjOGuCd9xYK4725fevbcE
	 PXjhnembDAo70pTG+SKfK4r1y5il/E796UIvGSHULcjL9Rr+BhGUHXR3Ow0G+e33Gr
	 d6Xfo1RvTrsC1/SpDv1VpGRWDjxaeYgmu8Jf8H/dn2n21ymF61ea2y6+unkloVmsAw
	 BjPhoLF61zse2NUfPWY9CJikXPLwudfTLeqaQDbU3LS2JVGcl+8Bxt2iSrLd0tslr1
	 0b+BqEHc42zCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643AEC47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171152389639.24557.5906081492823451461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bed8c9ffccae9d6663d4d942af78109c78b00c919383525172488d6a561542a
Date: Wed, 27 Mar 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711523896
