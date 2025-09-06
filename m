Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2AB28BA95
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757154594; cv=none; b=Im4xe17BzlZLmt4Yi+lcgXasm4ukMDIaBCOnOG/WyjTnlZkkWvEuhkJqRRiMNsSel9YeVIRdjbfvL7ZAkj+Cdw5g4Nm0a7dZxDj4MhhgmvZoY7k2lKGTkYZ8dwIupFtLJGQfrjtixcV/DBwv0wRWrA30H+H2WUoqVZO/LNS3n4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757154594; c=relaxed/simple;
	bh=pLvDy5nvgZv22H983KCSwT3RfQdws28L0RVQ2u5llUA=;
	h=To:Subject:From:Message-Id:Date; b=sW/EtWq+cYOBTwdXU9CsPmpG+VBeNbmPYm6MdsExJNwUnAYOBnmo25hMpz21W3YMLcB4nzZ7kf3CRi17DmgVOX/GP73THpmxujePB648ZkY9nzWZ5HcpR6sfTqusbUTv3yoKBXeHxsljWsW/5OgSjgPQfV5y9RowNLja+sa/bY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tq8ZGP+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tq8ZGP+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C19C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757154593;
	bh=pLvDy5nvgZv22H983KCSwT3RfQdws28L0RVQ2u5llUA=;
	h=To:Subject:From:Date:From;
	b=tq8ZGP+i1b/ffUSLb4BGiaVtpUMjPNGNo0I/YWMwqcednxO+CD5InBeDOdUf8Hf+X
	 uE4hL6OK9gVJaQDfs4ofHNrTocc/0VW0gRlSxLoG9+hRNRCxrGQP5gYFyQmqs/2T9C
	 Fqdrym/B9G1gCUh4B8ksgaSJjzM1t5MFh4k5ICxbaSHKQUDA44XJLBE73FgH0iHRiw
	 JJe4JuQEynkr23X4uCU/C9OgZhg+shijpQXzV1FoBoEhxolOzc7j8AXqnGK/5UiCxO
	 7HIQz4oVIMuhon48WLJ9aAD+Q7+VdrxnZtSIb7nWJ/rUoYhXAwTZ/sVjP2ifO6OxZu
	 sGn9djP4MR3cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA4CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715459358.14914.16927411511071628950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94db25eef1af0394445ed6fabe516e4e518490ef479cb9830d907b8d1ac31427
Date: Sat, 06 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757154593
