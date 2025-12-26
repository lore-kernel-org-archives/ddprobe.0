Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205A07083C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766771034; cv=none; b=uXkApI/v79JZRxbLR7l9BDMbhbhjvCHyJs87hA334Boa55DmPnX1HhQgDEA8PY8QUR1oGfkbQ9IquigGk5G6aWt8+sQwDIwcQN6DauhoQ8eWDaPHYJRcJTgb+dhp9GhrKOGfApxPXo6tU9ThMis8fzM9PXvbBYDpFAp3ZPFjhAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766771034; c=relaxed/simple;
	bh=z8dPhGaue+JD10sWnOvLHnfZClO4YJdd/v+ixhuXL0g=;
	h=To:Subject:From:Message-Id:Date; b=HOZyYjsPhjnd7rWyle1nOZpn+hxcfBcJIKqsVwU+oLeV1QoLmlEfPJT4OPM8F7qS/dCrs3XKTJK0IjWkd48L2nlgxx+oZEsVOHaBZg5FszOsUXMYVBWBuFLvrTfKSktn2GDVLkr/KMATEeUxE3+ztODtQ0uWu1yHTNosSW/CdSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGvEfml9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGvEfml9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB3AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766771033;
	bh=z8dPhGaue+JD10sWnOvLHnfZClO4YJdd/v+ixhuXL0g=;
	h=To:Subject:From:Date:From;
	b=KGvEfml9hm1AP2UAlJEc5YvJ4oUa5jEOaXweUFXR2G+igtyJ8GdSe5JYkmjSt6O5X
	 RJxfBgKkAqgqsgyuEIpD2vk3I09pCW8BnCkwxf4zuRGDdCvm1bKtoRoGSdwmnCse93
	 UZnm4y111vvVt8Bo7NUl7c1kvFyBlusjRyQxMrOnLQkB0P4auxg2NT7supZ+Oi4J2V
	 4afdhSTY13FtTDP0w6IJFO/ALW9W5wExHEC/q/1fgZZ5uCQo70UahHbHGDzltLUoY4
	 dJH0+TnMtZI6V+S4LDmgQUbES3k8hJnHVWZkjJLiGoDAuUz+B2NZsmODCguVzol9nT
	 xDYaIcMFYKJNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A788E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677103361.29009.10742237748031503259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afeff9cc69a819472deaa99b4511522244aab5be1f34899c19dfafe0c7f6fdee
Date: Fri, 26 Dec 2025 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766771033
