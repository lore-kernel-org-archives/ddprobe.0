Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC2825A340
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762789794; cv=none; b=c03pEcrVOo/7M5K+5G+1hxNeMC9FXGobyqOWrQ4IycAzwdK2/LNj+4Suxr2wp5L4Pv1Ugn+0NGC5TABn8OOa49V5YcxVRGxX3vQ2Rjgv6T80dbjcV7Zt/lZLIf6yqCqOIZjeqexgnOcTdUBzSaPZmaJUr6r+fkTv5JeM4HMdICc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762789794; c=relaxed/simple;
	bh=UQ2GE2v83lARPXYTruIE+947izeKCoqac91wncg9kis=;
	h=To:Subject:From:Message-Id:Date; b=uLE19HwI0510NgwSnqAL4nH/IrLNJdOshSS+xXHHnAN72xuDJ65u3SqlpT+EBqmcpYHvnkpG+7q/AHX+rgZ5k7sjB9rhjDDOxIDWREKMVeXuQHPRXAjnj9KhWq13KuwePT90/L53eszpMLmshuEBNdOyc7AZCa/zDquQvj3u5KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Le2LkqYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Le2LkqYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A678DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762789793;
	bh=UQ2GE2v83lARPXYTruIE+947izeKCoqac91wncg9kis=;
	h=To:Subject:From:Date:From;
	b=Le2LkqYKYVRCW6K7zH5buYlLxsZYbUJuytuLRxSvnKmT3dB8W8UN61u2MBLHTBgps
	 6X2iwALmgq7PKSbOf7bliIz4RYVSSYMjhBpQb6k3VTX8g/hhC0Gf0h5jfGQXwmzyyh
	 Rs3C3yEnEub1IUfQq9L7K04IcLiU9Mt/6YG5vqGPd5f2JOfpBss4Jd4U668uyGkBxV
	 MxtCbkxFvX3yxUYaEbQiuP02f9LfxWFrArUr+gXYZWSNC/vaIQrlPUSbBvKdGNtVy4
	 0huwAGVKcaVxHtql1kbt2PNWnpSEq1Wq/9fz0zg/KM8M6V7jSveH6s+5X15Tp6W+6K
	 O9GCFAz1RwcSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D97CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278979358.5459.13305012489244314587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a2dfa1ed08950403eac61d34d449ca3af62d80ffb45b9aefcab37978a950a7
Date: Mon, 10 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762789793
