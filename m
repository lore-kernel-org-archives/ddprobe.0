Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5521F9EC0
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752832194; cv=none; b=JzjWjHcz3ND+s50GcDH+r0m061UCsls9yY9LZWjgtYGLfFSTR3tcRm1T+lHvV8lOnWsxbalZmDWPQOWWK3e3VqbMQCNEcVbnDfUR1OdV+Ri4clXKPafvRIcw6lMdZE1BC691L8wqjWJMQ574bKPptwV3Y9mMG6PYreTZWHU3TSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752832194; c=relaxed/simple;
	bh=LYqnRarVixgvmOaHoxx2KEWM+TFOuBOJoCpC7fDo+ak=;
	h=To:Subject:From:Message-Id:Date; b=uADVdrKYlFIZ2oJeUuKYOnqiUKBTa8og0826JQDXbs9j4tok/dNwv7WUigivEh8L59ZV4j0uMo+NMpZc2Wql6U6ro3kTqLHUNFFCtVTC+hp6kLBwvb/kRLWwJRBPloLZf4LPnb92whGYIV3/ta027jHrue3JlBIRAY1n5yifjz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHAXoIbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHAXoIbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F28C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752832193;
	bh=LYqnRarVixgvmOaHoxx2KEWM+TFOuBOJoCpC7fDo+ak=;
	h=To:Subject:From:Date:From;
	b=VHAXoIbDaxx+1cK1/lSKrYnCXeMhljU5yDzm+EJ5HPfWx4yqe2X+qEY1DSW8LB9lN
	 cpm4J1y8287goxV+sFtcbqEaOsM2/PKw11xER4kLzSzrbbyK1GFaBPQUR8BES4bL30
	 EbLY5uf56HDYq3K0jO1cfNDI5KS4hd5mo0nBCEOlqsp44/VrGem5K3zVIPCh7YCxzv
	 Q6yjNzGPyiiTLMce1XHkD8iJwvC3eFbYEzBqoEtrQ85SHg8wo3ToLt6OhwLs7Y2U+y
	 EizRhrF6iBoU5utPnSsOc3dpuQqmwm+RHR43W99DJZeigpqf3C65mKFgA+klWoH3gu
	 BOfiF0BTv2JLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F723C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175283219357.1107.4837675464605210920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8799a59e94f636f039b7825917ffb7b286d237a901b132579ad0cbafa72764ad
Date: Fri, 18 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752832193
