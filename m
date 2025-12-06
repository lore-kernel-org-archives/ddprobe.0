Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EBA335BA
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764997974; cv=none; b=TK0UEg3U7kCSG4W29aWMgePLkrv250XPkrEjF1FCeqwKhMByYTgrcmdA4yWgWG5m/shWsN0MX69iVeUZyTYMJrFwlJp8OUPhVsHp1Ld8wAAxuRF3gSPnSJSHO38u2BXSm40YDIB0mDOwCetI5QR7h/UcE/jFRJwL+u8avAFAqGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764997974; c=relaxed/simple;
	bh=UWo8pk/O0DbIA1bhtIjrsnvhQ5+wQwuYvpS1fAiPWso=;
	h=To:Subject:From:Message-Id:Date; b=GIlWXNutMasKSWTLOIgGoz4V0F44P88ivCdOkOXmtosYcV4b+0Fe6bRirhIbE+URLTej3rldj0ykvU5cxL4UY9B8WUozkvUYEUqbic1BRg+xn36Q2LuxpNeR16sl/Wh44hC0KPFznn0ZLCEY5+DUtor5EZLkAVM1iFmm7CsEZx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXh0eNA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXh0eNA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC149C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764997973;
	bh=UWo8pk/O0DbIA1bhtIjrsnvhQ5+wQwuYvpS1fAiPWso=;
	h=To:Subject:From:Date:From;
	b=kXh0eNA2kSXvwmWjmNb+nGveQnUBHgYncUUmtGE4dJXWMLtvU8fQzZoNH0o/xMMun
	 LKUiUJZlQP1JR395sdVqQY2vOzdqrWVOhd/04tPS1hwSnT4uthld54qqEDFK/86ZYW
	 ldlLq5RMkgaTG37QoqZAVKI0Z1hoI1xVL1XEFca1/CPnJSpG2opJlHAa3IGP7LccPV
	 G67wKvDXgaknnEVaoLvlzG8547RFYCOqaV5/+Mhptm6dUUXhY/5iJl8pcW/Bb3n028
	 LKSxg5gdRXQ6DxDX70dkM60QoZcRjCoIYFx277FWx6j8Ey95eT7imAUWK+L8LXzxPJ
	 ymaVL+bJt1uLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9900CD3ABF6
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499797360.22862.9544980917554756366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 004a0569f978bffbad941912fb3ea6fa51a77e2649950130220a3dd0e535043f
Date: Sat, 06 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764997973
