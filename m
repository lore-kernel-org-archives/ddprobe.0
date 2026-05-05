Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179232EDD6C
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777987054; cv=none; b=erubeTjuwAoHK5ZiLuU001tuolEwpLqJ2J8VWKGupjJh6TV6aOnPMEazgVezdE2nPv4gVIxjwrRx0Po7Xsm+/EfvXiJBQkkxf0viCK+mclR/J/ldBRAs0EP8HbmlJ10rJpl02FzDTyJpx1DYruwMAR+CQMenKFqb5HFjLHxCgwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777987054; c=relaxed/simple;
	bh=4Ou/jqylJaJEZq0eGeM1dpo6R4FvTNnEg/MeM6/PO3U=;
	h=To:Subject:From:Message-Id:Date; b=bSXV34clUR3uit7Xbu2TPHdS1WDuzfatLjNr+zIo0ZCKLlMQh3TkfIYwGjBoI+B5wRHREFztTNZlGKWqGm9wy+ZxTyT9bt4GiP8rENWrgc8vuu6jln2gRB/W0UwBqKmPQggLRpxSsolEYzIEEZEc3XzA0EQA8OpDh70c2QbQC/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fdbi2Ron; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fdbi2Ron"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD28BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777987053;
	bh=4Ou/jqylJaJEZq0eGeM1dpo6R4FvTNnEg/MeM6/PO3U=;
	h=To:Subject:From:Date:From;
	b=Fdbi2RonKkY3ax06Oo2ajo4tequ1/hbAGZu/khCUTeA/CD8bwy2oFqnT49XEWfsvo
	 U8a20Zdn6yGVSPcLMKPt0a61Um3fNU6LqSC4Vg0qLEI4NuNgp+7gohqSOwAZdg/2Mx
	 ad+ABIM77pSp9czJ8Z8FhG7hIZn2W8UrucFHsBlMAgrNr/pAptfkDta1gKM+0/I9iL
	 7Gb1rWRIpQmeBvSYx5qJjV6uMpuaS8Tl9MXOPbl1ll229PFrcW8ZEXu4MsvPkhOoMQ
	 m27RkJX54pQZ+h6t+VKln1fQWeAl9gcsG3zwj8rikLY/3hBRLEGL380Rd1LVgVeepj
	 tnab0K/Y2ekXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4CDCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798705368.9508.13252959317787720964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d179591c309d3ffb56084400fe9b23fdccfa6eb38467e3a149cfe09b03cab7e
Date: Tue, 05 May 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777987053
