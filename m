Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A278272803
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767977634; cv=none; b=X0CgfahjF5CtF9D5ybWSwqqr0fsBf6Cao7T9WBVRmVwCPnTh9X/JwxxhdD0OjDGT0LKrF0VRtUSv8HTFjMZQihd1NLJNWxAURaudFHSSquc591QVqbSys//Z86I+gTKKeePK3jT7+wZD6zpdC78yEqvDCkk09dmJgU16JX1+Yr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767977634; c=relaxed/simple;
	bh=WoW9cvF8QIAtYslpSCv0f2ZHqRo8+rzJTkMY55Vyw4Q=;
	h=To:Subject:From:Message-Id:Date; b=OcaQk5h/kRHxlnOJ+f4SEEyrbq8w27RVazNg7ONdIHd+wnNx6DapYbL51QgB1Tbput7yOQ9ja7tfA9p3rBkcvPiNKPwyO5jn3J2Ld85Tbn+xaTJZxIJlbWVn1THVqs1QNH/v4ldDkLmYhFfHXj9guNatppfLXjSip4+BgmIOTow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUcuescp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUcuescp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5447C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767977633;
	bh=WoW9cvF8QIAtYslpSCv0f2ZHqRo8+rzJTkMY55Vyw4Q=;
	h=To:Subject:From:Date:From;
	b=pUcuescpgq5kXeSgeAkqxCUnS+dtKhnSW1N6B1GxatHy4Bhp6d/P7WLOYC1kRsA7P
	 /CtaNDoeSwV0iheLz562NwAiPYmAOEUQ4gu3UjNbByDxZkqD5GMJMEWZ4ovUA2UemS
	 gpLvRR5sedH7CqC9U/zG0SfkSyVWyUJ0L1hwL4XVSc+MYS0uWYUwIPNYf5bVTJMMyb
	 nTGTqHTssXCli/s+7md+tjMsErJkUJS7hO1qlq6HZGXnAZ0o4peAxmtFztT6xGFG9o
	 4O8HfQipRomF4ZdFM2uyRmq+tz3b+xrtB+3bBU6uWIqu/SW8R2msHk3qr/as90na4Y
	 j4NE69as70hOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930E5D26D71
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797763359.6398.5904265833261219440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104734468c0ab73947ca04e571a6735fef777f8f707f34eda4830655940f79a5
Date: Fri, 09 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767977633
