Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD2A357CE1
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782989314; cv=none; b=PMy9pC1pPa24yemzQ7RysmPRH34liJP1lPlKSpBMcvd2aGimxMOjWeGwS4cThRX7XPWdwERv+eyBUC7fyJbv931Ot8shNNazC5ZyJ2fYl80Bznwszh455EAUWW+KOS4+QxgfLX3LSgYwHNYFpTQPfVKZSyCSlEGP2WBP0wKlHnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782989314; c=relaxed/simple;
	bh=7b5yrSMQZahPD9Q27DeHVo7jsSm1qEefa1kpAqNvWLQ=;
	h=To:Subject:From:Message-Id:Date; b=Xco9EiXx9I2rTtGmaANebaKJzshkYJCpCi1wME6cu0+YSNyOV4PJVTvNV8v7hu2GTuhmnqs5AicWfg1DQ1xN2n0vH2E2GeenCotjsc0BDu9OB/XumN0g2DXE+OHAa5p839XdU4L5aE3osIKy2m47FaaVghohGDJnctjx6WvMI2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5lJrs7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5lJrs7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA6AC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782989313;
	bh=7b5yrSMQZahPD9Q27DeHVo7jsSm1qEefa1kpAqNvWLQ=;
	h=To:Subject:From:Date:From;
	b=l5lJrs7/XhEWxVnDHZ8MZaoqkyONrgmKXF79xCnfOXhdyQ24QVfr+juakq4NXJ4kY
	 JvsWSr1mNvIkuWoIpxX3ArcS5MaSuW3mlIh5cz6CcA13s9N2cKE94gg1fjYFvblz5w
	 R4xr5JJLX3LLfooIKi+kl8FBFDMhYCjnrVZClVmrj/QC8EEUVAkzbPXyhjW+QyzTER
	 1gDwWOgJEnx7DHvhUGs1QB3RFhuIA3EqumTtvyZCQWqkuOM/OIxfP/HHekEiw/6ADs
	 CjQroIH1Fx0szvKHyqZvUhzsaGyCi3cUwoBZ6JiJD/OR24BZNnBq4H6oH53gIrlGRE
	 OlTmhV//vWTGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85C6C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298931368.27378.577368789989024899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33005b5452fad876f6d0314905fe05035492229d6c0f790ab48be689c285dd7
Date: Thu, 02 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782989313
