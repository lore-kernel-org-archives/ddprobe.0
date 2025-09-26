Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07E9A1D5154
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758901194; cv=none; b=jozfQhwudyXffQWiqSaYegqVj2jFEzojn3CoFm33TwbhmbV4MuWMX8fq7OdtPteJiw2LY+LJ//HVjpQPC7MVKLWEDwnIR32YMXDVM7bz8rIpZEUnyzfaYRg3TsIrtJ0PpHC6odQm1t3jcR+qXrBG4LVrW2lpfT+TdSlOQq8aPio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758901194; c=relaxed/simple;
	bh=DCnR0KPWojIG1iEGNUEYgU5InlfLHuWTCq/IJD54Lqc=;
	h=To:Subject:From:Message-Id:Date; b=B6hYIBp6d4QRcvHGieLohO5zh/wX8+8D7nKJTnodhG6o38TMHOwbZg5e8CSp6+dysufJqOl9F6ezkiIcUc1EN99xljCLSzoVxv6DZd+e0m5hBR7YxyLRz7VJ7A+ksq4WhzeZV3gMTU9hqjnXTxphCnLLxA4BasZFg4Ajy+fvbJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHVX21do; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHVX21do"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2006C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758901193;
	bh=DCnR0KPWojIG1iEGNUEYgU5InlfLHuWTCq/IJD54Lqc=;
	h=To:Subject:From:Date:From;
	b=rHVX21do//rg4pD0TcbmuzC+4tks0mX2ZBYs4DOkzaMN2NisGf+1lw328/I7LC2UK
	 XmKp8wvjxUNnzEvt+sg4BPgQoK39yNHofmMBwORGGUXvxY7LzM/N6nCFhP5PeX4vaO
	 QUddAUj7Ij35bWRY/EPYWXEQBr1TyPZmYd+0Y+Ed67Pke9WXqss6QsP2p+WXMFjIap
	 YAW3auPd+LhLAwK3uKk9ZS1hTTud/QeYy8QahThjX5yxBzXI5/4QyjhdgzCGDDcOUl
	 AvqldmtEIpRZr7vhWQXRXpwtwl69GFiVOm3akIL9szBwHgqxRCU/OCiNcozRTR3bXA
	 /ER8GNkd2dD5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACACAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175890119357.15983.5642519219444020241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b125a8299034601fecf3c935b73932d9c5ea547573faf83be4edd59ac59be588
Date: Fri, 26 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758901193
