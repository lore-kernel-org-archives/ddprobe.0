Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4781634C802
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774070694; cv=none; b=hbaPVAR+jxfHaGFEa3wNbvD5GcsiLWf9APZxwIG7Q90emveypSCkyvJrEwqy1U+rZGVvqj9T+r0md5EvL8OtyslY/0so8qLoPZEmiT9/n4FlWQZcGrH2TKqjn7hvnbhNGOsfOYjnR9B/JPjPErX9+BK35yU3fMRH4bYH8EiJ75w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774070694; c=relaxed/simple;
	bh=ythWZfFhSJjugwVzfq/wInkUyTKPxVo6HuvWmDgiUAo=;
	h=To:Subject:From:Message-Id:Date; b=uRKYwRaqd71wr67aQrlXaPDN8BbC9jAwISu4BUuj0DWINEfTMXzYUuGslYibDZ9ysk6pZ9wU1v1XLqW53IMa2A8HeKi5wJU0QQy4yheYlRo07pRYsFrZwY/Vwp2xWwO5yBfZDqszewFD8CUsu83Uc+GJP8Y3IfbkW1PfR3gEwL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nt74dMas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nt74dMas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F92FC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774070693;
	bh=ythWZfFhSJjugwVzfq/wInkUyTKPxVo6HuvWmDgiUAo=;
	h=To:Subject:From:Date:From;
	b=Nt74dMasAYhJs8XnAklsKZ5yXBf6hRvV1XL7W+vPjjHy9POHFA42Wro3gWch5B+HA
	 1f1tX2ZaWVLnWiQnTnMdycztji8BlP1bXMuTsH7Kfn5Bv9AfpVrP/jklxNcapVhKIt
	 0LZpcF/TwPPP15m+lN+ZMWVRKrRpwJM/pVozDir8jrDab+V0xKzuErt+rWhBcSCNAw
	 +fPyvJAzclyazaou/rdXEUHcyj+IAqXb9P27QYIoDUIfYU25ucJgVfC43aOjuqL6Z5
	 +C74hPxb9POvu9JzCB3NfA/4+UumUHnPlrk3Z7yMr5YqxThZafG7XSpMW9OtjRFV5O
	 bZp0IVlakaFXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F91093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177407069357.16786.18288483860505046970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436a875aef77d885893cf3a4c611f9e5ab1cb7518055fcff9849827d83b48cc5
Date: Sat, 21 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774070693
