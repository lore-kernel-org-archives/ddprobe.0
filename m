Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703E910E3
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720746443; cv=none; b=BJvhkNXjOnk5VwtdGUMF9XGLnpEQI1HYQW5QDzOuwp8VweW2FCFFwTOHDNCJ7Y/MxZz82KlfAMFh24puwMUADNaDzSqkrg5Kya+os8i0OBJJgyoLY1xx1lFOC16nvaLXOAvnWike8cc+g6nD43Z6JjTm5KNSm1UCMd63QJ3EhoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720746443; c=relaxed/simple;
	bh=oEDA/nlTS5D/b1iEsRtUcHzVVCFmFJd+R6O/D57hAKU=;
	h=To:Subject:From:Message-Id:Date; b=Ww+oEeXFAWVlO+FX/ISoDQoiqO82woo/NiHT3OCMiAdNYMO0PUoPK1FRLb8rPbq8Jmt5ovuS2eW9yQmqpRYXWSCKYUOb2B0PP5LATbXE4KPq+wucyK/exQPNLBadh0LlEJcWLaQXfFK2mxfzeAlDSFqYWsbnNEm86CQF7NE4xj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtCdCfZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtCdCfZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD417C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720746442;
	bh=oEDA/nlTS5D/b1iEsRtUcHzVVCFmFJd+R6O/D57hAKU=;
	h=To:Subject:From:Date:From;
	b=LtCdCfZsN7YJES0+v0/8QHqGzY7261jlQ6UK7eA9AZBLjvJ8VPJUqpG54XxceHRhz
	 Y8pG98rDYmvyH+D4ntkwmyKmdbtiVdX4Rnm4bcboeCCM7o2bgbOjZvJyjynZGZLi3a
	 caELc7rKIoknyTFTXrVWXEoy1WTmmUO+DaMJMzAFl/KERSfrZpcjlSDGMTb7KOx3eE
	 HZErQRebZC/xDUWSBgbI03d+f5T8V3JL3ARoSygYHox+WKDz++jevD3jGr39S3l/cZ
	 iMeBhHD0cXHrzcN3MM0iZKYJBqxPdC+SStd+PdSwn89Ani+dblDGqg6Fi7kuI8oJk+
	 xfkMQZojeeKQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C9BC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074644276.28388.15623124472846930486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6edc5e68509eae731f46b11734539a54e1938ae93b1ac544e3afe5eaf60b01c
Date: Fri, 12 Jul 2024 01:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720746442
