Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDDF207A32
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751238594; cv=none; b=Mtt0ADaahKZTCHCWvkAAYKfC6VFvZOxZhO1c/gZNfb6H8m7ArMYWRzD249fqX2lA9OIaPSrzwNZDDPufLe6kgrybWVsgV3yoqGlLY7R6arh3dtvtvxAciE+JpDL/djkR6iqxlbdbTz8JWs9c6CBPdWzVzkPUHY4y6sYOBlJFShk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751238594; c=relaxed/simple;
	bh=V7S1LNkUXGrmjsFqL6kbOSvhjrAwzmyDi1nB8Rr5XoM=;
	h=To:Subject:From:Message-Id:Date; b=tcB12IGo+6WHZ5m0iIgtMReEgMMxzQTU18spx1Ca3BIS2Ej2xVhsVnRDgkSRz9frPX+KplghRWkkiTO7hoH8cZY11tfR3TR4C81RYzO43fh38foE6zZgim/bhPmjRsQxGjRN1+r5uaJKICxE0o9m3XWz8AnaumnNgUV8uEqEXaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROiYR0He; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROiYR0He"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E2BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751238593;
	bh=V7S1LNkUXGrmjsFqL6kbOSvhjrAwzmyDi1nB8Rr5XoM=;
	h=To:Subject:From:Date:From;
	b=ROiYR0Hebvj1SShZkQwEQIUwCLMIExjXADeJzyd7rKZfGgNDnNQMuP4KXBRm3iQzo
	 tsde/eI/s/q5PB4g6nDGcFoDmLgW4ZiYwskhV7U1RI1+SGf9PztG9iRO0t5FF/n6xa
	 NGhIfoPqku0F0oRbT2JxpGIFLXMAaBx2FNqdB+Uc72+kCOcpDHyVaZQVR1Pi0Al2dj
	 +5r3FEjBDbElkQqFwE7+kAWiDnxcIIbovntP9rwVx0oT7C1ApTabC57hluJqckhpx2
	 ElN7BvEMHhFGsoZ2xMdAD3EizzC9g60hGfeY2L0LlcnmU5rUAn2lE3tiC2lpfYvB/J
	 EIzjehVRQfYkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F513C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123859357.27196.17552226758450327609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e708125fb2e2c926ee6c0cca24947c4f92979b5248bf8cf34d16b5eb6e5d64ae
Date: Sun, 29 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751238593
