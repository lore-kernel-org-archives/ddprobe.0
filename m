Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE9A186A
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719709463; cv=none; b=mnVNyfirYGI6LgX00DuwT0basqTCvi/NU3Fed3CUamYKkj2pRA2AKvITYfeSgyHjQl9FIHlDe/yO7T3mTPDQ5z9IHfLU6Hs0c7YFeEhDmSvTPqOgduFuKrmgKkcI+6Sq8o9xY7O6fGxzr5tYNwok8Pu0aIGcSRmSKHB1VvD+lYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719709463; c=relaxed/simple;
	bh=YfzXt2i3pD+0lVPcgjiF4SbLCa/PdThQ2BoAnGDReZU=;
	h=To:Subject:From:Message-Id:Date; b=KqnFRZFaafIAHO4YmOEovwdPqPbUqom+PvQaIL8vU1it+hwH4vWnjgoGAn0cGCkjhw71AUwkc7cMPmykhhKtm8AesrMGZ315NQvtjvoJ78VShQJCoaGH2y85TVWM9/wshO3k6pXbHMEDSn1x+I2oak1dJghJL9zdeUk5ZPv0anA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mV0Apdob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mV0Apdob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF31BC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719709462;
	bh=YfzXt2i3pD+0lVPcgjiF4SbLCa/PdThQ2BoAnGDReZU=;
	h=To:Subject:From:Date:From;
	b=mV0ApdobI0ld+uE1ZiA3ZdwWcMdVekG9yPc+BuUhe8bMZ1CScXwCQ3oC264ISkJcJ
	 iUC8+4JChqWodcMozGBpLnoD2vjtRyiZjvfUei+CRQZmK02KQ4wsGIvwP81f7dPiNE
	 MGX0RE8+zmUAgRGoQ6ktg/+VCzlzWfr2PFbd/LspwjaYoeXapHsyfRttAKoGemS0ft
	 ZsvcXwIdUmvdGtzjJWqQpc8Bt5LnUTt7NpeqQWVxZnuwjLMTXqZPFaQC16OrJ5p1H+
	 LALRokTfOepUT40uGYiBVdbjeVYYb5xKWTamnwpVoCG6i4fofAtCAR7NJw18pTjo38
	 7id8lfgyClUhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B70C30658
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 01:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970946277.5452.2835180127803234575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31dae0b46bae1b20e1388f475f6ecf2fd018b95e7e485c9c4ed40cf8d0639b29
Date: Sun, 30 Jun 2024 01:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719709462
