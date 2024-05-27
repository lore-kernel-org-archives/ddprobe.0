Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD9017B508
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716821063; cv=none; b=LNHDwLo94eQJ9hLH8vPH1uK24rkJKIWGehTXrZakX1ch5TtTGxAxGioX9j1omJ1iuz4mdoxF/pBda7XI1guPmIX8C7V/2z0g4bjiMMcQn9XQzdIFlFzgk/nCXuC+3Ud9uG+pFMGs//SdxEoNoh34eJp09nEwCaP730s6g37gI5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716821063; c=relaxed/simple;
	bh=c8+SaIjyN0gEn80FGVYcOEt7uEL/KkgQ4sbvVmeM9Gc=;
	h=To:Subject:From:Message-Id:Date; b=hytHSzOOCs3oDRZabeNO6TzIQlwzK61oxOc8+a8kRDpoDO3t+J5+CBkeXwsGBR4EU43tYdcFJOGXRL1vJa3d2JkXGpV9Z17+6J+jHG8B+loTVI7h8tpyTUiFbZ2T+d7M/FRkT4EqcSOX1kEYr8aNIOBSKsrsQ7zpLfgua0yHBMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEpcH917; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEpcH917"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE730C32789
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716821062;
	bh=c8+SaIjyN0gEn80FGVYcOEt7uEL/KkgQ4sbvVmeM9Gc=;
	h=To:Subject:From:Date:From;
	b=GEpcH917EH8wZsEl2a3cnirqvcc955MtE1P7V/p4xPk3LOhqOToLQmC7vEDv27dou
	 O75zyXMnYtodlee7HdglcQCvfWcOpO91VROkgwilwCxO8n+6f8P5FQpGOxlwTCBhMc
	 WvcN7HRDUkd4W0HuXF2DarZOi8RAmduOSx+apP1/pKn/NYLDwgHC88YhtAXRue2j+1
	 F1BT2LrwB3u0+rg4RUoDIdAUAlRjeI3R4amDUR9dCSaY3RiNQBp+lmxjydma0sDuwU
	 kMoeR5vhPKOEExdPbDq4mC3k4T+8betrsrSisPrd3GIXnFd8+jWQDtxI8Bi0gFLx6t
	 WqheqSywMoB/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3716C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171682106277.31665.2592651632320762404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bbe6accade22f1bbe385750012de2b39d6985426756cb7f81b6fee10d81804a
Date: Mon, 27 May 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716821062
