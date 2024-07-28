Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3801D1DDE9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722189354; cv=none; b=IY9QyaAB0xLmB0lcTS6LQR1owlf38Yw+CdYmVteM8PyQ3lWQEwhKD1QP/SRSLpQI1Zi1k9F1vr649iFlybJYQ66XdGxFH48eRCPXpCD9gcTYHedNBNfR8N49McDjgIm87g9TwcJ03xCHxQ9fztoAB0BSNlz/Z5eYl/kCfbxYHE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722189354; c=relaxed/simple;
	bh=pCROo3fMUGEoLucEH04idLAXmiym0KklSPK8AwrBe8U=;
	h=To:Subject:From:Message-Id:Date; b=BgchtJJXGNq9z1LXB2750fyjsUuI+xuQn7OuW6N9WKPmTJzbNcZi3wPMGzR7U6SU+j9UFqZE8KOzUigKSq1tn2HAKjk0BWJNEIoGCyANQm/itggtbSmM84BjmUisiFXERhtMISguWKGRfflAyBz+Yj35amemMB+43+Vm2oRvHnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jU73f76J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jU73f76J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B96C116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722189353;
	bh=pCROo3fMUGEoLucEH04idLAXmiym0KklSPK8AwrBe8U=;
	h=To:Subject:From:Date:From;
	b=jU73f76J0o2rwazJkDF27taitNrDkdTUo0/798XruPYhkpas4qt1qy9KRFzyTUyNR
	 +j7oYgwZKq3gpw9bi1KzzTBuEwvgDxT8xyajAHxdf+Ctwd3yfTojCYrvdl8WR5vpHk
	 kMEr9q4S0pw6/LsrkAJCQII91gkOaiKtxp0R9vv3Siv9a9VOrxRRS6opcS3z1Z0vZH
	 JkY7+FdQuqSXk4F4J9xCERw37ed3LjRYvgQUG9+MiuxllWK18Vm8kFo/e50oaJzGhS
	 wQbfaYxFYi+K0iyAJHHTM3KNH4Lwbv906UoydLUbLW9TPqnqHvqtyUX6okJAw3+vE8
	 CWSZ2+WbeeirQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C3EC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172218935362.12693.10191863227308932671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16894e22f814d0e97699b7e89212ebfac67b47a77ed73762bcf9c9d28ae2a9ef
Date: Sun, 28 Jul 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722189353
