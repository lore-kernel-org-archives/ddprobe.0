Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F9521494AF
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719307403; cv=none; b=hMsuQwya1o4f61Mjv6YaiOvjWIGYmtOcatXqWEfp9WzmBLVzCC2uSqoP6JV4Mw/c7XbWeHfKjIBDLqqho5aVxKpl+O0ttph5MIH/eNBQ4eXaXaNmGMC4pOd58WFGWiWHyznic6wuaSlRcZ1TOnCDL+tleyqINNVFx1DJ+4pm0EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719307403; c=relaxed/simple;
	bh=0UJQcjM+Tebq0qGBjNPdoBrfKyjqbY2zw7VeLZnX6+o=;
	h=To:Subject:From:Message-Id:Date; b=Oo0QC+TowhEVk8Hk1v+tFQjz/gjk2rF7aJgNu+DP+P1jjjTOaXg3s4hMJ2GsEMeLMp6hh6h2m/jkgR44zPRyVRQ5lOP+4Y4/rQLfEqGbS9zzuxerS8WM7j9DqEGnwg6rFlT04nDuOMmpwJckE7bc16I2GGqRcTa+zwdl+zE+fM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ycw1Fvdo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ycw1Fvdo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E018EC32789
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719307402;
	bh=0UJQcjM+Tebq0qGBjNPdoBrfKyjqbY2zw7VeLZnX6+o=;
	h=To:Subject:From:Date:From;
	b=Ycw1Fvdoa8csRhlzSxeUcjxCE9wWajAwO+oQZjWo9RAHQvNseSnrFByO8/c+MYoas
	 2a9Z9glzyzqaEP1hon5WK4CFHqNnoUR5EpNTAimI4mfppOxpi1QotCxH1jpLI+Zd7+
	 4h9IRGceyBqDoBionG+0YWo9plHLKhjmgTmpLYa/5xjsz5Bei47CYDx1Ig4lXJZb6P
	 cwZqXTSN6HD/CML12i1wL+wdra3B1tt+dDQ/45v1r6zWRnbiaOfQHJ8ryM66eyrvlB
	 7MYjmlVQc5uz+dxNVQjAZrL683PwaqdzN0Kmjnt8SzePuUKAprn9WEbLCDHDp1KacL
	 05fx3ajR2YRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B6DC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 09:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930740280.32514.12015330660558742023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5d4db23b47bbab8d9e45af7ce756c752936b3c0e4d7732f7add6a61ae77c30
Date: Tue, 25 Jun 2024 09:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719307402
