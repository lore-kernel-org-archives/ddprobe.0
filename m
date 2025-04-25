Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3587219D8A7
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745577594; cv=none; b=KhDxwZFka9Pad9isSWnGi/MrSCP5WRSW6l09dB5rJengxJwT1aghg5qZIzbxkLeDiezWD8IixSN1I7kJu2Zjhm6fTp0SauvVmm1X4HJVCpgCrZ99/AadXikb//roDtcnLtK7nXJm41vtWGNnDCgJFAqxZt+WIjRiZ8qJFJ7pNM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745577594; c=relaxed/simple;
	bh=3IT5mnNx26X62flwWEjnRuRmRurBEzvD8X0FaYY+fuo=;
	h=To:Subject:From:Message-Id:Date; b=oqtiSB+sMdSSeLa8hu10q25d1p/4n9hk6rr+DFvxDrbQaqYNMuQ281bJA3NqMQxg1ZP8g2o1VyWBNYJf4pFWFnssafuRzH4YiF9pB4p2eBCrtcJU8xhcYJZVcFvyiUxITsDFDm/xAQRDQp0QIa/c/6TCOYUPVMpkSYJViqN7ctk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9BspvAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9BspvAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFE5C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745577593;
	bh=3IT5mnNx26X62flwWEjnRuRmRurBEzvD8X0FaYY+fuo=;
	h=To:Subject:From:Date:From;
	b=N9BspvAOaes1oZPoRk2/WRHxRGGtU+1uWSmBKmzucXqeAWJqx3f/x237+xsrWTzff
	 oW8JWSSRHJT3leXXw0l5N9pIgS6rJ6Ox7AqOBKyVCWlQmJChmtzH3kojpt9oxrW/mu
	 7pXcD07IjPtL515boDn8C1dwO4+vDqWiGNfDobg4jKirYu1hTR0ogPUOzhayBtleHm
	 /7d18ci66azJSE4/9LbzqrDTqyjcaqSziEfOL23EwWbyxr/Wc+PEanudfYEsi04vuO
	 GDpJ/cJ8nkGW938IEiNV/7laqQrGgCQXEm7PwqCXmOgLtoITKKab3gKo2hlzOmwS/Z
	 weHfdlnbRI+Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB2C369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557759357.32329.9315649226488662670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f496908393483b052d909aaca0c9e33ffbbda4f7bdfac0a084c97a19c95aa8
Date: Fri, 25 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745577593
