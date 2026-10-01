Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA883BB138
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790841634; cv=none; b=AMUQNn/1GjaOnkoADf0DiDAY7C3s/EbRYDAQRbBBzWq2fxi+P76fTSLAwxXSVEAg/sSTfUYL78HnMpLxB3QwBJNrSVc0FC4gdU5pby6pZuzvDzqX/4niQJN1NeXIT9d793CtrtJr4RH9vOcnE9eiVavNcz8Sa7Sbn/QeRK4l6nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790841634; c=relaxed/simple;
	bh=G9+Y2wREiFpD2KKHX0nuHSc2YXwIjqYmzJtICFB27tM=;
	h=To:Subject:From:Message-Id:Date; b=eYdVGaw7fosUZ/jEKy+ait6LtKcy8ruFLWsU8h8vEdVTthmUbNyqjoNy5PIT1bgdg2jqixalL3+7iTeskNeQCWplg9918aAXWjtCJ6yZZeCQbnOY+4mbLI4f/HctFq+dKyNu713OUMKZM9gvEpAtuFpMW84zjP60zNCmGvZba1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oA+Y9Y0G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oA+Y9Y0G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA339C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790841633;
	bh=G9+Y2wREiFpD2KKHX0nuHSc2YXwIjqYmzJtICFB27tM=;
	h=To:Subject:From:Date:From;
	b=oA+Y9Y0GSTO+MS42NqjrOo+Qtvr5TYbSmaow/DaAwf0t6o2Q9YpgCPjLn4RFCBUv8
	 Ul7jsF/9Vl8UfNLFuN6KeDG+xfyFtNTqeaWIbyH1ATozJvlpnDhiQ2EYBUaVc4WWzM
	 jr6ks5+WTbyEDqbk1ASXihzhdIphEFsMNBOXH+vXaXHrdgVKF7KfNDYoCPLJjJ9eIb
	 LEMyJ9SXl5UyHdu/mp44jENS8FAcSH2/wYVRa4ibpDUWaXZ+cjRa8efDXhPbubMB/E
	 QUfaOqqQpi0GEbtN9YPutoslnbQBYz/isI2S8pFHimhqnTkC6Go/nkHmQvqmtu++AU
	 dm6LJERX/Y5kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF01CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084163369.4238.17896250257842708990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8788639ceaadbdced99c2a225447b8641a42ea367a8141bfb6e71c50f9dab960
Date: Thu, 01 Oct 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790841633
