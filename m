Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34205B67E
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727483154; cv=none; b=oeiYwsfgEjU2gxltsN9AqRQKh891R3sYbnErqAdP6fIa9K2iG1gQecH466cG9CABMjbEex+7+3jiLN1cCMnDhVWILDx5IF3OyR1mMmhmFH9BjbYHv5pnLMblW749OO/n+ubG6Auodd/J/wyC4sCTfHkWTVlt7G9YbYIidFii8EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727483154; c=relaxed/simple;
	bh=IpnjKqPsV8vRf/x0al4Zd4i6Ox0p9qe0lumeHKFXtS0=;
	h=To:Subject:From:Message-Id:Date; b=bORrvmlZ3rprDVx17IgzEREwbcmZeilYVZ6QPap8wzs3g9yoCf6kBqXkjiwxI96F50zzdJhjQCzOIuyWjYHFBaD69NuX1CWjSA9h9P0zJkoCT2LI2+B3VDYoALTwWZ3KjRwnJDimAwZ2XKtdEsJUiJ5XWC1azcWxj3st51NdWxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qs9EhVem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qs9EhVem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A442CC4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727483153;
	bh=IpnjKqPsV8vRf/x0al4Zd4i6Ox0p9qe0lumeHKFXtS0=;
	h=To:Subject:From:Date:From;
	b=qs9EhVemQQI9uuUUN+DlTeqNOPpEFkKLw4kaKNaxopKjYqfD29lrbRf20x6RjOSsK
	 L2/QZki8bYahwiP4ZCzLAnFfz1prvYBBuQ0r6jzWS8sf7BhszXphT/2avlfihyZRpo
	 3wT0b6yAmR6ZfFJFew3r1zc6IdBa964I0/H6SA1+k7KOH/tQk6Gb1yWMWMjLeDl3+J
	 uJbsDi0pJvgxE6DDAEJ9qIcBwrivOttMl4uRXZEmIIrj/7FtbsiKvsme8YjFZkRlp5
	 hgO60lhz+53EpncFWoSkHCPJ3L6HAdGLmSoxoAXlx1DLD+cFxXjMfYDezJ+oJKf+Ag
	 t9M7+THKJBrsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FB7CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748315359.5036.1255885824923534211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc5c00f6eca41b97cf6c8f239dd464cc9cf197c70c552d40730d73712b507f67
Date: Sat, 28 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727483153
