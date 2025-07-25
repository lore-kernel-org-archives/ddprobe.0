Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6392BE7AC
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753435194; cv=none; b=DijgqP6zwQKL9eJeZIazCzPdiyTH02jYcYDXYzN3QBNPLYN8F4z1KKNGeCL5AOmNaQ2gBpPDFg2v0gpFiWt5Qulj4SoU7HFflNQWQJuMZJCkjtgccfm+edsIsLI6WAAx6+lMnru1npvKuB1G5CcoSeBNVj9MCM6jqTkci+YYpZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753435194; c=relaxed/simple;
	bh=xAb891zyfM+VRjpC3sJfItjMaA2KeRscyvtrCMm90+E=;
	h=To:Subject:From:Message-Id:Date; b=PRYkcd1bV3Bij1eIAWtauxOg0RtilcBZ4iEXac6k4YpHZV43fdG9a/+H6gM6+wPxUIQo7aVqb26FCSKvHMOJUJjFcLmzspRROcEfyZDbiyO3ZXk5kmOwofBOSnkAJ2R836SffPRWCctyefj2AWRioJuof53ssX6MAKu/fWsxvgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1ArVUv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1ArVUv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7B7C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753435193;
	bh=xAb891zyfM+VRjpC3sJfItjMaA2KeRscyvtrCMm90+E=;
	h=To:Subject:From:Date:From;
	b=L1ArVUv74bfenPxpikeY0maIAQNa8xnpiMbmz3E0HvX22v2eOOmQv278nMbTdKk3V
	 o5ykUOQ509L8H43fUOBNWakn4k7hHQ1rw9yzU9oCgaODJtrLDOtJzwp7+BhoRro64m
	 b/c+1A17tV1kln2e0xqzJKfuxtueslx3B+rHpw+dYageH38ignfebcgJ4gJlhES3e0
	 8roy35JB1CI++Ge/Ta3o+vKQVr20OlK3/TGVQs4R22GmzylcmEPemzyRQd4SZYc/xg
	 1Q0zJBaJ0sSSLL4pS/yp9cJXl4LVVzhLWMm0w/3ZRQ1sZkRISVkX+h6FM2PMUSZUof
	 kzRrniiu6KAkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB04C87FCD
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343519357.2579.3444493216402045292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df8cf6e3d47b5b5062a245c4641af1f1bddda8eeccdc45d8570ee3263770114
Date: Fri, 25 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753435193
