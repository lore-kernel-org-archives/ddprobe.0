Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E05DB15E5BB
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706902097; cv=none; b=gWs2YaS86dNu68UyMSpaqmZgDPAnnNsFHRru0/eIjat2WECfA9RuFfheHQ+AMBaF8wS33BYBCFBoCXn/WHRWpV/cQYU+cSA16Au0AhgFFJdYK8dsqU+yVXXoFnN+fcVbvJFRVE/xsO6XHDfGWfiem+x+dvBZbzJRXGhBRBNZPkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706902097; c=relaxed/simple;
	bh=CgbzvqwlB3glaMuEUhOKQUY0Z6HU2ybrG2pyjQKLero=;
	h=To:Subject:From:Message-Id:Date; b=Xpp508GE1o8HQhrUUkcG19jR+Y4PnZDFCCtXPMsXvUB1XCRqRqdPCPyPlVKk6aqmhJAhmYO61v9lA5aF5fnG6uyZG5VePQfubmC2CApmYRy/m+VTLVL6ql5eGH5TD2VIEbgSDQe7kny6BxOKaPIZYclAMAaENfSRXIafeoVvvks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RiBny8rc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RiBny8rc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8328FC433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706902096;
	bh=CgbzvqwlB3glaMuEUhOKQUY0Z6HU2ybrG2pyjQKLero=;
	h=To:Subject:From:Date:From;
	b=RiBny8rcOskRWMrZ+6EjVAFDkJV6a2LMDnLQsHtoozb+l5wGn2A6d9gmQ6+8jHtRW
	 seThuyD/wWdr+qQLKrW5HCWUUT8vqsMOu6SS2qTt3oXf++6WX1UcgB8eEnIwwfRMCC
	 LDZbYsKxN9KsKlgoo8KRevRl/HslTbEsj+7PaChetHfF81WHOszRwfk2rSoNycbux/
	 S7eVBlqb3ML8zWegTBd90iTHWgjrLWU4evqRXqG3mW3NFTRtT268fhB6c8QwkKVLXf
	 cGFFX0/ErVB6EjFcgaaerYXUGv9pnqgHcXhxtCbp44BOlqvMMVbwErBBunQRL/nDIa
	 TAcPWpF+8KIIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67048C4828E
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170690209640.22220.3220425698904565456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c03af6b40a398320e0590b617678d764d3167b132b15735bec53e7d7c637b40
Date: Fri, 02 Feb 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706902096
