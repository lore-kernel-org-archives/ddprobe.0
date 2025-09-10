Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B79329F08
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757516393; cv=none; b=m/NX3uWU4ynGmbChDRtJ4J4FQYWulMF6zujaGEOMsvcd9Nue+VZbYfsTYyqoHaUYUYF7F7TfpCVssJPKrtYC5YIqeb6z6DiL7Mv3TKJjR7j62xkXkKi/NLY5bB5EMjSKt/fknBYiyEAL05SWicsjmqd+93frbbosUhRJRKdFJR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757516393; c=relaxed/simple;
	bh=gh9/HIDq+Gtpq6IXkXkmSn3wTCoZl8rabxIXspJzBKU=;
	h=To:Subject:From:Message-Id:Date; b=mzmtVdHwQaYeSXWvceOiSUm3lDVeTV3DkD3av1OYNgyzQo35KcNMKnSd6uF/q8n3mWMF6QmwlNd5BrUWEBVxGxxFTnOc8QHrUevs0RVWxSQt47a6XKdKD4BUTOyVICEiHOmpLD3PYbIFoPFDmpVZlTTORGsNshEj5INkk2rTq1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mj4rGVaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mj4rGVaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A951AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757516393;
	bh=gh9/HIDq+Gtpq6IXkXkmSn3wTCoZl8rabxIXspJzBKU=;
	h=To:Subject:From:Date:From;
	b=mj4rGVaPiHwTsITNpN10HOn+PPyKEqLBtDK4u3MzfcBP3lNpAb7/zfwb5Ken3zVuS
	 cKcvQMrYbyQw2Q8j4oeQo28SFHLf/25ZBCSbJMWr8Vt4gyEqNvZUl68kaNVqoxxkY7
	 XxunnutJiJcR4yhqk9qIgTpnSZ8JwZboBf4ZLo+V5A//g2aNoun+32JZ38wRYOQisc
	 P4FFk6zRu7LoDnLI4cHZtkCkvj2XFJChRRScuZDerwfNbbHtDnprdWqVn+gQ5M58xr
	 oO0+WYeHL1r8e60EmiMywFeyOj+tSpn1OdX0V4LPs69EEMhoJrfxEPAIWyMbeFQuGr
	 kryK9MVa+J6pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A415CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751639359.5853.8279560417198385048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6582eadcda1c57be24e6018b62af38df7086523773df925b335c6dbef7acc7
Date: Wed, 10 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757516393
