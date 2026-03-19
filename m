Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04ABA2DCF74
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773909294; cv=none; b=TjUFVNqmdCOLR9IargBxh+P3PxeY7bxbDUvfCXweFqVVHiHF1YzkPgg8ldcF/WS2dDyn3wtnwDoWyXtwdOWyaLeGvxtlIKpx0We+sKD1A3upl4Ho7sHMyeX6MkEuSlAIjYCyY05G1/7IYdVX1w9NtYWPIFE+ACldav7TG3/YHaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773909294; c=relaxed/simple;
	bh=/z0QN1MRRKswviZOjKm2wijWT3Kf6k6mKD9GRA2uTDU=;
	h=To:Subject:From:Message-Id:Date; b=jtiBBO0cgP+/bnQzS+N0oiSnCIOMHy1ASW9GhUc/mIzz756bhv/s2dwOjd+bTC++mwJ0ScEZh48YJcVCcfypBN7L9zReuiEw21+p2NWoTsc1ytjQKN46Se1IhjzKaI9FGwVzxljzeK/uIDC7xMGpvaE9iUyzPyxgdG+jf7cT/aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nv/nWliF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nv/nWliF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A39C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773909293;
	bh=/z0QN1MRRKswviZOjKm2wijWT3Kf6k6mKD9GRA2uTDU=;
	h=To:Subject:From:Date:From;
	b=nv/nWliFVMAJVdTNhmDNI6XTZFWovObC6f29/BhiLPkYH/J/4ml7SEL1QuVx3VTwD
	 fIz2flf0FK/qWRG8CTB83LMbT6E9Qbbr7J6qTkajo5HKltCUbEV2/ggqw11hJOY9u/
	 IbjZRn3208ytHc4DMaHRys1XSyaqUFGc9n4BttP6kqPGmrO4ZoXEuoDrC0HHEp/85t
	 LUla/y1szuehfcML8isZM978BANuNjNJ6s+h4xxcfaMKbY1KngjeOv6W7Of38efpK8
	 ZixyQPZ7xnbOFEk5IyOCM55vvmjyPxsozrR5UHq0u5ydPHDcpx35i3fbapqcpfFzG2
	 OanHZPviiVZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F841075276
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390929358.18235.8230232258654974772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce2c07616a04071790ab5bcd58ef4ef8386ef427ba1cebc223864638def6fff
Date: Thu, 19 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773909293
