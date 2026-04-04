Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C2F38AC86
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775289335; cv=none; b=Fe/JuykeUJ0LSZvMRoH/kIwFw/VtWDRpGWqrW1rgGEWLmUuqhQ1bmkZnX3tluhRWQEgyy6fc+f9osY3aBddgu9eou4/+K7BjEvHvJg1T7wDZPxAg4UDB5JZ6nly96KDyudxw2WtZLtjEMjHtMCKDisTOdClaCiK6mc3UC6WT7nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775289335; c=relaxed/simple;
	bh=k0uzY+8iL0wIe7bK9tDFha/wgUFuNEnQOgu1iikIo8E=;
	h=To:Subject:From:Message-Id:Date; b=Pcp1N74JWKxSvRW8PqFJoExlvjDcUeZF+9ozvzTediWscCZk2ugDI9Ivf+Lob1z2koEHkH/rBZB1tFRqoI8P2UzuKz8jx7ONVUtr6p/5679X5+T7WFT24AWmmeatzVG5YICpD1pLLPwz1AkuDNxpvmwocC2zh8eWEVZAPYFCBGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilRl97p8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilRl97p8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC68FC19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775289333;
	bh=k0uzY+8iL0wIe7bK9tDFha/wgUFuNEnQOgu1iikIo8E=;
	h=To:Subject:From:Date:From;
	b=ilRl97p8uPfBAZcZBiSqME5FXtFXzgLwRvQtmN43r4R1qAfm/B/4MEzUAX5aBh4l2
	 LNaYlYlSYLRXD+UPE2MN2Bcglvc+3mP23P3wLBtN1f27xe+lrXg3dSIBlDBBei9tfi
	 LN2R47dc3TADN0yEa1Tz3LouqPbS/Piyg0PYrMKEX8EiXkyj/pcnhhxpW3r9kkRnBN
	 NyD8S2CCSR8d6EYuurK8tiTyjLSbD6bTKlv5dGFHbhyA8ZP5s8LaRizMIwbprfq9P9
	 oflOSS4IflQXNgUWrbioAVRdYswNdZlEI8Voz+DI41WVf0f+y9s4Ezj3mnOxcQ+CZt
	 K6kHq1nlWykbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC2AE88D88
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 07:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528933368.15225.2339070865058477213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255b6a1cf275324661b912cb9bfa96d31724ac9ed6312a1d89a9b8fd7cc2d5ce
Date: Sat, 04 Apr 2026 07:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775289333
