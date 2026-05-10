Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2646B257452
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778406034; cv=none; b=X6pmzBZQPah61wktRsYjgY5V+ma+ex0JLRU/gPNzmdQZDNgo6wbMzz3MQcFyJJsjmThzrPBkcktSSyaVX7Q5NVdqu8qxOLJT4eIym329kxKqgUvK/uaAml6ZDZsLNiRQBNn84mOZTDmM4ORMKSdjdwhS9v4mJnXFZQLRhDdEzuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778406034; c=relaxed/simple;
	bh=iStLMqitnjREFMz0N/pSuYLFooQfucDXmn/0hdYo4KI=;
	h=To:Subject:From:Message-Id:Date; b=AeB8Q9ml2P83LWZvcvDZagYSdPadsfUFky4YMU2I5HtU7QcZq/4IVAy/dbmAcTWjKravSBrjzP+hAPKGkSoXhAZTe5j5kmH4OZeyc9NdM/HHymfEemHxXzxifyD2hHHoktj1TyXH+IYc/i7nD/AU03uNRfOvV7kJm/HququGgi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXNfq0Jq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXNfq0Jq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBD4C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778406033;
	bh=iStLMqitnjREFMz0N/pSuYLFooQfucDXmn/0hdYo4KI=;
	h=To:Subject:From:Date:From;
	b=AXNfq0JqWZ6+KzZZnnR2MtONsnygIzvhJBLThCHdn/a2bUbEJzoVTZmZY1AvRuagn
	 HodkifYaJV3qkWtj5w89fbMH9xjTywytdO+HTtcI5xPCPSB2vFzKI0pq5SHn8g24sr
	 gKKJfLViIJyIn6CDpP6vHe0nbDqGBA7UWikDmukt2mplG4ky888jM2cJx7OUANpwBB
	 yAsHO0icvg7MrbF5L1j4TM1lc7MJruPNRkpNhDd+X2M2cWHZ6J1Esv7COzzfjPEnAt
	 UUztaWZ9C8j2yyN197aZ1Wf9BjgdM0STB57WdPzB+ETFFV8YJnPvpKi6kDa9YD9GwA
	 yDZyMVxH1CWrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCB7CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840603368.5134.5860274554288242533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8765fc6e60daf68ec790d5152a43f137ce55b2f9dd84782b5f77619e26d3ce54
Date: Sun, 10 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778406033
