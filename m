Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF06024BD02
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754426394; cv=none; b=rP1DFZYVaKou3n2x1PBEVKGzyIwMw6P5LcLFKOVCDwnednHy8z4fu600taOP6gruirFuXXibmNQ+KWE8FbcO0lMRLbCr6WKIVBVkE0q7LN850nGqFT4Oceu9HTNYnUuUhz0zQYBNmfgJvkqLfCYQwUgQDB7pF10oeyqLvv4MvcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754426394; c=relaxed/simple;
	bh=qkX4bCNtUtk3FIP2WxMOesz/VA5kfexW+/U8f/gNViQ=;
	h=To:Subject:From:Message-Id:Date; b=Xh/uipmLrjaWaB6goYTgtTJjTvSMOn0kPoEYH0/Op35ULUJ0GpfM+Ji9Wa3q2JZozMksaoIQAWwx4JmObJOkb51pzKHl0sYbOzikjzFBITgB03S4SPIo3XhwNq++tdCzNFrxfxnRKo86KI6SBFuGF/x78X+GD6D8lPWGx6qa8mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbWcW1a5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbWcW1a5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7233C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754426393;
	bh=qkX4bCNtUtk3FIP2WxMOesz/VA5kfexW+/U8f/gNViQ=;
	h=To:Subject:From:Date:From;
	b=qbWcW1a5m/e8tqF+13PE1NKsYqlDB30c/BafKXGkvW0NNvm7XP3t5xapTYzAIQakn
	 UCY9J5mjRFAjiaFXaiksKHEXRAUmngNLbnMjqrt+NIwFwSr9B8mgLmYmG/xaZZlY92
	 HNOXyssR9tuWBGOQEgImldVPKSbpAsDBPaFkxWhNfux1eZAm3SWvaEgfP+UZb8XDZz
	 oCcrrINtXLzuavp2UFoWTmHumuz2UtYz1bBR7AAA9uS0hLXMoIhWZ+fX4H4wO7hZ01
	 Tm1sxxQDPxyGdLXAVqpyNKMBVIvRXXHWCwYvc4FbcUJlfQopJWCLYzGNoZK0U2CJTI
	 Pztvq5EtV1Vjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D586C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442639363.11132.15993359556199148777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7e1d18aa7fb3f5833b860f810811922762cad1a2cb7320b652594739263507
Date: Tue, 05 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754426393
