Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319062AE69
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726078554; cv=none; b=pfkTSdXVHI06P4OCV26yjrZtMF6BaNq54I9rXlSMagYzNnHG6mhowtwRFzFAQ4+I1b3LrN23miina+MOK9J86nQEY2cMosS+QIT3+5eWqf+pMtrSNB7H1om0NeqTmxuuy14jS7wiqfVTouFV64oP3jkkmbRPChmZ5ScYv/MDWVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726078554; c=relaxed/simple;
	bh=ykueng7D3AuFWBdKVT4Oeu1bgcxitjOu/rQpt40Bqag=;
	h=To:Subject:From:Message-Id:Date; b=GUqSx3w9giGAdBR4OWLL0+9RgzDoCJjq2yHyu5I0yHJqoOsVN8PEH/Dj+qN/uJUZHjVLmrmPIEgbr42Pm7g1lWQwqfc/0yu8Zon515SgHCXG2VySTm0bIOa9mmwcMgnCMe9ZSfoqn8poC2AkW2zCKkm3UEg8kt8phd6GjRWg53I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJJo/VI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJJo/VI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACED9C4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726078553;
	bh=ykueng7D3AuFWBdKVT4Oeu1bgcxitjOu/rQpt40Bqag=;
	h=To:Subject:From:Date:From;
	b=hJJo/VI3ncMQq1SgDBDXsw5Ag5/NI9HCXP5d196lvVqzZCqmp9N+iuttTofqRJR4d
	 oJT3jg/k+IqbnNH5DnqJVcjtCsIXbUHDcpH6Pumu946Q9+EvbPEYlx9rw6AfEioaUc
	 h46YF36+fF7GfLO/E4Lr6fhXvAOtswpX+mu22WtOgAfjBaEjHOFY2Qeys6mdP4lMKa
	 0deRpNRTvegRdqj4GLyJZC+VdwJgQQoIipOZNALdZTFab3Q94fPU2IH8Q9V3BAjJhd
	 PDAO0o0rm66cm5qAI/BVcDqRzLeGcDY2TpipD8XY+Ul1G0oD/2Nx+kqYCbizcfJp5o
	 Kk/Va6QHrrtyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BDEE499C
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172607855359.19368.4304399755467636823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b064876036641e1d72de0b11366a678f592dcc2f26fab3e3dfb8865ffb6786af
Date: Wed, 11 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726078553
