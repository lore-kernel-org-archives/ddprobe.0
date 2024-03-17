Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BC4208C3
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710712097; cv=none; b=Hj633XEoIYi4vR5/M7RxqpmGCN+lJgX2T3AEN0fqI1j0E8oXAgPW3CBeCxbQvta0wHm1RTMRGr0UrQVbbpIchMZ7Bt6ir7dypVhnL6R9zGQ6aHpC5RzJ8aqRvXlCXo9wDjPfuJBgnM6Fo+VQSXJyfI4AFUZ1q2/Qt0j5ai7TzjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710712097; c=relaxed/simple;
	bh=FWGNpqZyS7PHbHcPOkBiAXnQ9AmDUFGk4y4VVdFth14=;
	h=To:Subject:From:Message-Id:Date; b=rL/Oc93VlLyQuYEm7Ll/xTPZn/T/MG45HwYQ6d25qRFXV0kOQnwrdZhBOuhiChXL6wLBWPr9ovh681TK6KKNHOZOOA7HD4MN6u1JFvdbDtnv05i7nKlvJG/JxIEC1Z98qUiaIHbNo/hnYBqQl7PYpM3cIumcO9ld8EJXnxwtNTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L72TBMm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L72TBMm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFFDC433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710712096;
	bh=FWGNpqZyS7PHbHcPOkBiAXnQ9AmDUFGk4y4VVdFth14=;
	h=To:Subject:From:Date:From;
	b=L72TBMm8lj7JjU3g4OJ9Off8tAerl7uSCq0xyaf8Xy//2BlZeJddhne2Pa3pwHZY5
	 KqyfErVEudQlEqVJuknUfc281LnP5JILO3EhLLgx5BxCYN1qbnoteHrLIz74yKJQkS
	 Nb/b1HCPK2Wu0WUFX2y4L9eoFft25+dmECNUBoezbYhKq82XEDoQHeHqtCrmOXEe8n
	 QU8mag8RmLz9wKF8XTmCL2HP+BoyqLXOjRqR+ABktWO3FYwxuOvl4ehmWsVjTkDHZ/
	 LvTk7w/gXwK7eudKwQWKYln3s6xR0ERxgn9219ev0vgIvp7vyJAo4aDdgfWvnwC6Nx
	 XCDhLHUl3a6tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6662DC54E68
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171071209641.24619.9088352270922227050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47c595de8e6233dd1936833285ee56d84c0ec0623e0a7aee2e55e4ffb3dce46b
Date: Sun, 17 Mar 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710712096
