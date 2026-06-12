Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF1235F199
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781304994; cv=none; b=jeWfzzp+3vJHsJH9b6El0yivhdZJBUuvViiUXn5uXp5r0JkOw6IkMq5VzfmrlVrZEjTw2Uyxle0M22Lo2d59pWJezcgxJlUVZSBiPRLm1lhj7c8ROXy4igOOnrrzACPvq+3IN7txhcFIaWkcHbbkob5S+FR+jjXo/KHTrYc7rKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781304994; c=relaxed/simple;
	bh=68aS1c8fzYTb7rJ6SsDZYbwqdhjiP6wAzIPwQns4YB4=;
	h=To:Subject:From:Message-Id:Date; b=g87nuJEXkzPMUTOCOzy8bH0iR6taqyQ8kRRazpeuWcd45PmBup+xW5q0B87dhKKSEoFknmgIELv71nuNF36cb7HIr2WdC2zO/7wk6B7nULEJ1EY1YLf6EAAezL5bfgLFILJ/rVsZIItDX+2U6uI6FgScEKlNq70iGAiWn7haHiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfTD4pbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfTD4pbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB41BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781304993;
	bh=68aS1c8fzYTb7rJ6SsDZYbwqdhjiP6wAzIPwQns4YB4=;
	h=To:Subject:From:Date:From;
	b=mfTD4pbG5TBHc9GyfaG0283CnD5n1oZ8faOwrcxAsY7cmboUdlo3xR10+6JXGYLfk
	 W45ux31TbSl/7SRxeRX40abU3DMN5n1WYTJBiGNHsfXbfovOvYEwFPIcksmHOlKi1X
	 Bnb9uevAhXgp8uBaTSyN1YrIbGwf3y8KOYy0Vo7N7miZYYmHtIZeQnx6if05KJgfsV
	 UiugVrSGKjy3R/4zq5RZqWH2ladQxvbZ6+clvVg0fFy6x7pFvNJ9N51f5q3vSH0yr5
	 2553Ot6NgKiQAapFwXIKHbqoWnYcinLQTANZ0bQqWRpuvdkU8Rghd4f/t/L9wyfotT
	 vHTOzwOL5Hz+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACACFCD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130499368.20648.18440311097772335322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca5d9b4a9815aeb54036ed63e3ffbba59b98be1e9aba87d2d70cbe3284b47af
Date: Fri, 12 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781304993
