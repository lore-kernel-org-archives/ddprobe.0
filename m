Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381DA3C10A3
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789119634; cv=none; b=nKslG4NvPEOwc102BhlxyzB3NrwucLvelvHz24u02+UZZxOzL9qXigaRNfkwO/t1j2bNS/zznyRjBMyUExC0pZ+kreML4xzE1IwdWgavWs1TIzvI9jZSG4iuU1TIE1glbwqAP0wJ/cn1lj96Ianu+HYd9uCkRP7UnZyOyPbrvC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789119634; c=relaxed/simple;
	bh=P9OyVpuXkZ0AZXM/r3NwdopqZSQoAyRiDgX2P9gn4+s=;
	h=To:Subject:From:Message-Id:Date; b=jkbTI15UC0zzTtffYokpNMJ8fQxwYLXk7yKhjrR66Y4bI7ZJBVD1lJ9CgCBZKfFZA+Wyrb7Hw5Yd75P5rmNVVAtiZAmTWufjtqNAWwqIT4j53QzK7k+GiRQgDQ8BR8X0bejOatDQUhnS/23Kw2VZ6dDCY4APrDRYp7NjhY8X+Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZKt1bWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZKt1bWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE10FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789119633;
	bh=P9OyVpuXkZ0AZXM/r3NwdopqZSQoAyRiDgX2P9gn4+s=;
	h=To:Subject:From:Date:From;
	b=WZKt1bWgHxQAdVMbV0bl9bS/0RCU5hTOdC8N/ih+Q102rMMWPUfdAIQC7DrTTkpNm
	 FIzmB7j2/TTVmmhCTkvD0faGKUg1IRkWwZYE8G4XoTH2ZJMVpW8GTmDiRJA+JwCIdI
	 EtF5DUllWqPNy5a8ymH/Z3600FtgDnN0VctUoGBQInbKeGq3uZD0PzN2NdfF/F7Hyl
	 NcE29DzzE9ukla+z29MKac3Zav+hOVbXHogPplymv5IwUpKdWTChQd7Gnzhcxf7vks
	 MBG+eosp13S0nFtzq2xMkOMFEGerL7ddWkpolUQygO75Jvo7hua2x1AvRVsEAqkia4
	 TeKXsUEsEoV7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB01C88E4C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911963369.6369.3151513693710925925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b6ed237fb49631800f313aecfb24ac690fc27c150d6d979615ab9d3a094639
Date: Fri, 11 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789119633
