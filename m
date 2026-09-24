Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E9A3EDE43
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790230234; cv=none; b=I1xHglzbmEw6afF4vihM8if9Fyv2zDiT2rJb3lHcbyg3M4fzsOnOR1oHAB+f2OMrJUT5JoMCk5uxBbMuREQBkPPkG+5QXRHkdmOtC4WR5FNtN9hzYdbdvwffnqzkc/Qp9ZOQpQYLXOCJh/BwZtIyeImwwSWsZJEjrcYuTP3nDzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790230234; c=relaxed/simple;
	bh=QhV8VyxYC6q8Yu65LzR/0961SBe3TlLNRpNI3c3fL9M=;
	h=To:Subject:From:Message-Id:Date; b=AiqcAyZsot8gV3vKyUuO7EolZJJAEDjOaMR6e6eB2PKO0AqlYHiIOuaK1ZSb2XKiNOjBpyJHmvh7caH8QOjKAWw1ECZxxwcXKWMSlLDSM4s0OMA79O5Df4RhI3D0BbB+uM/J1uvikYDwHbMvBy2r8CXU3Wy2ChF0KXcJaoO5Jio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIiYSIdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIiYSIdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52D4C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790230233;
	bh=QhV8VyxYC6q8Yu65LzR/0961SBe3TlLNRpNI3c3fL9M=;
	h=To:Subject:From:Date:From;
	b=jIiYSIdOkGv9WU4XB7xGm5Yvsm6s7dmGPbMnogitNX6tMPZ6uHyS4JRJJUGaFLYIB
	 TYN2sNzjLQ7QPpXdzqZmU8+5qC8bCA1/2+6GQhVj9iwCZeVN4xwhbwQYPBjIFT2bY+
	 cJE1fiXkIttr7Rufb26tsROexSOPZsNw0PXgOoQlc+ijCHU1eIt/95hdjSaIVViSzQ
	 VXYnKiru8VsW9HQHkfLIgybE7mlg6EA4gq4MgQ48cLtjCBBbDa4iAdBPcRSS9cKRqd
	 hpTykr7mOXXtGQ9so2v4/XLR36ZHIumkr6mQ175vruLEaqwCTBIglNKEiIPBm087F4
	 8s0KvCvafcNqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B169DC98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023023371.4797.3559056140749403096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b62766080a73b4aac41e3e7dc9e15a7a1ac4b58d3a8c311b95f3652903df53
Date: Thu, 24 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790230233
