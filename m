Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A6C146A90
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718344703; cv=none; b=arIZ9CTckm+aUsHgUt/iW0PjvcciaxXVBL+ddiSairYb2MrbJ2iEO4AXr8k5pELEVIngKqnplw5VizUuK6LOQn39CH16tk0/hxv9E1JaH/F2FraFJH2eVP7e3ziVpSvRBkfMsJkWt7VTZ3BLb//jopERwAefvYf6UyaAdxo6AG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718344703; c=relaxed/simple;
	bh=aIhI7WGOw/yAaJ0uWO5dKeQ6brFcKqs8vYMJBK3SMKg=;
	h=To:Subject:From:Message-Id:Date; b=iI7oWZxwwOfKd6tKtXssc5M+ZSrmvGamkPDYAG820g1nnZwtVxAOcE0j0mxpGgR11iJ8wbGz6Opfk8dvqxHIPCMnwxDxWNv0WmVK+cJ80uIpLHwd9QjOSIKVVHH4w5nknkD9yN72WHz4i3S78MG82HCK0Hecgr3jCEQyfj4XbWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDbg8hvZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDbg8hvZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD07C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718344702;
	bh=aIhI7WGOw/yAaJ0uWO5dKeQ6brFcKqs8vYMJBK3SMKg=;
	h=To:Subject:From:Date:From;
	b=HDbg8hvZqF7HkdrYNGjR8l1qu+xyFCW0bEKbCl5UBhRTQAeA7kadTCrT2JCs4GfT2
	 etxaF/FOzb7t+hm8RSJIE3eQ44qclOS0C6U6ibLhuTQFKv9EhxXeC/XyhuLkVn+L34
	 luEc+1mJoSDxHcuUsbpA46tiPhTXZO3r0QEOQz5wi8ZIX8OgtfFqV+0VXm9hZsw4Dc
	 9TOAJouHQuVIQBpRYiRWmotvM7nwpCXFwkZ6ychTF3kPzOHcROMhUBh43uyTBLGPUW
	 CQJ+Hgr9bjYOXbVYa2d5GDTGFS3Oe9znghYAlMhPTaLn67OiQuaHopf/LhnlQSS/ob
	 reGosHGUr7ZMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA22FC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834470275.4074.16649641405120266318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43893bd4a4ca55f1176233c8aec1df983be55745ccf8766b2e4b6448dc2c5d1a
Date: Fri, 14 Jun 2024 05:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718344702
