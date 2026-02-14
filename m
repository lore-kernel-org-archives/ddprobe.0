Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1881320C461
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771091094; cv=none; b=NNN5m4mpuoWpKoAgGBUq6cYj/LJEyuSJ0r6Y9sJB52+sEl+sZLVI+Qz2votr90k2viua5I90kTsigjIwCsv/E7icwaR/i84Lm/1MaST2d29YPvNl7QDIFP/LlfhaeHieDF1myQqfbWyVqctpHWvi1GB/lI9KM5GpxedcymTxFVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771091094; c=relaxed/simple;
	bh=IPw+8BNK01xBphQ4whoiJhvVdFIrBC6IO7PigKwNPDc=;
	h=To:Subject:From:Message-Id:Date; b=YFq9hvxeoqIZD+1cLfNwUJKP4Jr1oCyuEtkhJFXim/l3+8CfTHBtsPzrdPUYW+ly+rSVzJG+XA8fizzERkmhFdg6IIDik66aohfOo2bVznZx1PaWMKs/3nSz0bJ7Yhgg/eS255iNmPws9P478Ev8P9X0+M2i4lUg1wxapH+SyY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3pkVQun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3pkVQun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43E4C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771091093;
	bh=IPw+8BNK01xBphQ4whoiJhvVdFIrBC6IO7PigKwNPDc=;
	h=To:Subject:From:Date:From;
	b=D3pkVQunNwBEuAveBoZ+Tl9KnWkIs9CQ6uomdk8OYYWR3PYcmNLiXeXfnq08rsKEU
	 VAm1x6XTucqhrFJfMZTC5LD3rje75dd3DJBSn/AZibfUMeMQbX4JTYAN+oqcAIzH/a
	 Jgffe+2PZ19QuW9V+pvVeytQ165EHsI9EVE7itP01286hmkIWECYSnPcka1+7kQBsa
	 Nx7U9Z7FWQjXliLKEoe2nGZEc7txI8BJ22MovieIrcd+SOLRc/o8s5DyxWlf+/sJeN
	 rFyL1MVXZuNx22cn7LAW3us6OayFL3HLcXl9LGRdT/SyZRPz9pzos2aV180uUrYwyW
	 PdD1zJOXG5/Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C457EF584B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109109360.13264.473189270447741612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22242f3e10a013db54ac7b2aa710e2533d7724eb501148473d3914c067197eac
Date: Sat, 14 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771091093
