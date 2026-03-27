Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101512DC359
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774638294; cv=none; b=lYswOGPQ8jCUfgg5mOktlopdgtiaYS4D2TUmX/ZA8jpJVhtILkhcRKnsSNzbmZknWUR2fMfkNVFAv+lDITSV5tGtlnIFoUFApSVV2Z04mxvR2IqQvRaBYPsYJLA3ZlafdFDQ7GsatGECGs5fpW34gCZA8ZHXvRVcX6WFgkHduuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774638294; c=relaxed/simple;
	bh=KGxeyqXN2MdhQo2wAbw7baLHYaZBMXnKArrUmY8BuI4=;
	h=To:Subject:From:Message-Id:Date; b=DzbjTZ9arcIVNKz+usowYGa3TPNbIOHdIFnaoRg13hcmLBMGWwXp18VMV5Fo1Gjq9bonr50Sz1furddQNH8IlrIBk+QMYcDYJ/lbvb/bIXmIfjLxSuQr4Lp21w05gqJcXGC5zv33uRA3h8nGNYNyO0lIAg2k9kbe7/Ha83jUPmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWVT4id2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWVT4id2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63B2C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774638293;
	bh=KGxeyqXN2MdhQo2wAbw7baLHYaZBMXnKArrUmY8BuI4=;
	h=To:Subject:From:Date:From;
	b=YWVT4id2acr7lsq7Z//iBfyY85IO1tQtWcRG3oEKYLHR0vPzBbp5jASZ7k5u1yJXk
	 fTRRrAXKlQxvbEroRxWyUc2yPq9ST2xbaMb95nVmEKFkvdx7QxvYXHdSmRvVH6SZzW
	 IpJwJ0aHSg8vdpg9BoPena/2m8PO7ZdIaJOw7SKmhmmHsZTBD2ZiS6QuDrDM8oBIMF
	 WCRuBgWH7mbJm0IrNdktH1t+s/+N8Po+QAiy06h8dkGipb2xhN75qajiPb/2/G/PST
	 0RVz6jfximpYqyzB7xyqggWXeIm6tzGwmvpNVA3YNyZ+dyCtb99V7QeFaZEcZiKDSE
	 kG4HOo558gIVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9200410F2867
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177463829358.8005.10385881548911587706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09fe0c29a06c429ced60f725c96b672ac59302182f10e02cc8cc5301d0a15e73
Date: Fri, 27 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774638293
