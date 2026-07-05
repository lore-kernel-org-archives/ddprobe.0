Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CB6347521
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783281514; cv=none; b=s6rkVvB6eBilpfRHYlx9BXoAvOVbsA8RRz9/wbBYkkJn4hLyHOQlRYUlykIvQ1hKHH71IHWVTOLJWkYQdCLdgBEU4BLOUbYpofQp6dL/YTvPujL0JwN5rGu4wr7F25PmVi2z/hN3sD5n+s3exuyPbbVehnvZZbNQau7wBVjdL0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783281514; c=relaxed/simple;
	bh=UXH+A3sQOdYc2eL77snh1ECjBMFGaLTm+PSECFVqsIw=;
	h=To:Subject:From:Message-Id:Date; b=PdXJMRfWQoHXYVpRATDUJROZDUO0EIlCvkWj5cfrYhPBLYhl+7P4oYeBVvsa/sQAtJwMC6AY2zo2FsPxRl0HUGUXljq5ktJ0FHJXM9xqw//UqnbwAdsEZK2iUzzbbLCoI+3M7AnUTDKwomjchm2BCyUJuwxttPv1Ig+vk+VH/sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNCE/NIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNCE/NIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AF9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783281513;
	bh=UXH+A3sQOdYc2eL77snh1ECjBMFGaLTm+PSECFVqsIw=;
	h=To:Subject:From:Date:From;
	b=TNCE/NIKQvqyioR+N4rEpjA34QpjykwsGTM1wSahoPfOtv+m5skOVNKGSBZeJhGIf
	 GAQnS4H0j/90OuAWZh3ZkBBzi081I85kLnzcNnNBULaWIKZgKjoAbUkzwhmNkZ+Usr
	 IazwDveKnt+VDYZndWPMHN05MJMaZc6TQblqD0Ud8fJ1u4orwTSWGHV5rm7/NNXLb1
	 KBiQKI1hS1FlyocnBanlsHYbHCj9C74Q9XagEVj5jW48iBBuE4yKP6U6iMbY/r4bmd
	 C1jZJoacSLgEbLPUqkK3LE1FerXtadrfwMHQixyqBaB2JXQcq/hqSlW4yOhZug03dt
	 9kqI+OYjV1vFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD717C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328151368.30810.7808455240916130138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce5a950dae36bb1d4caafc44cde8f924bdc33c1bfa47f6d3f1c10db4700a803
Date: Sun, 05 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783281513
