Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50980171B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786579834; cv=none; b=Wc0qM23hFVDG4dkWNZlnPd1aN09JFApjQ+qxAqaM6GAc4vCRSEEouNDtrnA1t6XyjM1iXjW4ghopyLhGb8snGr+bSlwd/RShg2ZPamUWQAh98KBrxdOPRaZn+PwB86BhMfPWCGYWM+JjQK+oAY0SyP/5j9HjayX48Y746Q2Ktz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786579834; c=relaxed/simple;
	bh=9exnE2TKvdFPV0F9y6aMOpIScjtQu8xl4dBn89vS7uM=;
	h=To:Subject:From:Message-Id:Date; b=QZXeqagcz5W47uwjsPAu5OrRlrCHt2LhwuW8xgC/EaLqsQzkq7wmeHVLjTbdQCAJvzv5ZZIirIAIRLs/GcT0sysHvDKzr4olohTQiYz+HKTHLDSSBI6CR0igrv1uy3h82k0MMnGePVbbjaxDjsrwKMuS9ih2W5cXriyp5ZSeqNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roXTCYyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roXTCYyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1497C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786579833;
	bh=9exnE2TKvdFPV0F9y6aMOpIScjtQu8xl4dBn89vS7uM=;
	h=To:Subject:From:Date:From;
	b=roXTCYyRwTOdeWcqR4nUkZ/K/e29+CNprZVG7H44obFGNmqB+34N9AogLUTimA7ZX
	 SyK6BqBpbPqsp9+aUrtqPMrNd7tQSOClFivfpUcEtz/NFIa3rlVp/8gm5LutOEqJ47
	 Gp0dYLdu6JrDZmjarUYluQUGWsXM83Zs9GCmiPmfOyOZP6eFGXFPsSJQfzvGRFoebN
	 tGWgt/hy3xq+TkWwx1LiwwS7T7k3cexQsIpo/ZxlHpm05xGxoUqYRR8kN9WCP9l6uN
	 bel+XVThTw3UlHkJo/VPcBswZfrfZ8WlLjNIR0N6cGVEQpERsl3O/NY+6MBY2/7Kmq
	 XsnRuukI85UfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE02AC5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657983369.18460.9652629578851573147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805b2121a324fbe115e89ecb43acc19ef2f4a48e2cd7d47f0bc195f582386d39
Date: Thu, 13 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786579833
