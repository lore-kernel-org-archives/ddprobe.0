Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2386AEEBB
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764634374; cv=none; b=XF+deF3i2DeZZM7s7aiecnuF6vW4r2A1cbKEDmbBp7c4oBU5fyutp7r2F8qqGvMuRMlV05d0GyBdjXzZxybZxg7d3mOheCqqMjYal39LnVXKGdby6dYSIVuv1fdvZEBnNf4Zf29epCM7ODLDRuDc4TToJnWJIpAKpWnnQOwbHQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764634374; c=relaxed/simple;
	bh=XcZIqbcezyl6DMcoGfWPXSURj9MpP6yMNKTU5+7iIP4=;
	h=To:Subject:From:Message-Id:Date; b=nALjiiH8hHFE03gwk/ANKB9wAx7Mg2Gezj7GYXnfAJE8JfqNsm6MZKIsvoUoGpHSdBKleT0jxbxcrSdRmy20+kCHG+bEClkqt8792rNvYd9q54NEfwS5aYxmANatzQq/gYod8uylBPYHMG6Jlavz0saLJyzdE0/ahylt5DgRkAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DezqDh7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DezqDh7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC9BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764634373;
	bh=XcZIqbcezyl6DMcoGfWPXSURj9MpP6yMNKTU5+7iIP4=;
	h=To:Subject:From:Date:From;
	b=DezqDh7wASNLbADv1y64DedttIRYmA3apqD/2akQ6rmc9Jj3r6I8JMS3cGI6OrnYn
	 hMoaIvMrvNCJHxl4lQaCg96D+Gu/kSdNdCzCEJJepRKrDWQ8EFgkFRFgr4w03mA3pJ
	 KpzjOOw2h5E5ztj8xPEVRXo+SS+47bNoGPqrcHuxlOmXx7iJry1VkxENDmPMcQbrWu
	 R9L/SAKnkoTL1wlUTcUg4DFEt/j4hLtmU3JlftCNQNgbds0trIoJzIEUbpcRyzAOa7
	 8CaVUwrWNvjPMl5S83IjCFEyUKtn3/fDnEW7gXicgufRdxdG+Gy045AiVRJSVQ0yv9
	 fvNxaytOJ1Gbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97944D116F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463437359.3934.9095511640038759461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7a7d8652c46dac377dbc61363cb07a7f479a94efd2bcd4bdf61b785a4be9e8
Date: Tue, 02 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764634373
