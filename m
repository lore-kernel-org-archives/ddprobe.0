Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE2133B6CC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769436234; cv=none; b=cgDXBEC5N3wLsrmB7xMjkNC6oiUC2xcTYSrZxs3XNbWwXM1fLBiIl8YQi72NaJCA6C793j0WHAE4lXRLB14LEGPlbPi7+rKbgWNMXNvt+lgHu4ZhT5VJ3RVACiOJPFyzPRHBgfGmpsWUihxL5kTeADMn1v9vgNrR+sboFHkDsqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769436234; c=relaxed/simple;
	bh=ghd+ZxNUVNl2NwLgvw82uwmbpnaTk7/jhewmL79DzMA=;
	h=To:Subject:From:Message-Id:Date; b=tXbSSuDm5mMeLLOtrc3Rvo3ypSA2nd5v99eGFWxLnnnasgNh53l0guP1XMzd8NK2Ayku8enRjGq0MBs+WWemjOEN4QW4FhqXkIoKiZqUYcb5WOELNn/65TLI1BA4FVgcAebCkaTkhTV2Krmp6S7LLMm+0E/2PS2DbAzGQRnDjvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWtlZ1XN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWtlZ1XN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6FFC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769436233;
	bh=ghd+ZxNUVNl2NwLgvw82uwmbpnaTk7/jhewmL79DzMA=;
	h=To:Subject:From:Date:From;
	b=XWtlZ1XNR/Q/9VnFHNSXJdIc/n2TsCt2y0/eCIGQteNyKjCu6WkJPs8S7qGS6WQ61
	 1WfxvY6wXejUl4qcSkjchmpcXbP5shHhxMQUKX06a9ABRB/lC+TNk0nwCwzvQRvj5r
	 dT3JLkvrGGZalAbAoq/XkJ9sM1myYvHFI0Kikbb3+C3l/1+pHNk+scH9jSwK06Oj/3
	 nH2jrWS5fegVPI9BcaytMUGeMFBseZiPpc+HueAFoyMmvTvskv95lb4nBRSinuZSN/
	 2a/Bdf8+0v68BVlv8gDz1xOKQrOnnZ0Ieqlly6ndzXhwuDVEQLnCKB07Ag7RF4v/rS
	 l46pmKRg0JfDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914CBD13C1A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943623358.21081.6658070866613785259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179d2667c179e921066dd7762a6f348dfea8ace5e386539330fcc487b7c865ed
Date: Mon, 26 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769436233
