Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5D92D1936
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759411194; cv=none; b=WBeg64RXFNyQosc7zb3VLSfa2bZi0ppysCG7IDCgfJWtyRjjn3VwMaXMt6JZi3x5dk/SZp2g5VzHH/tucvVoJ4vCPb+dDeXf1mhJfkJH9p5NUBHnEDdg2Aw+nROAl4ZZL56ZzQ4utMRVj/wMiJbEZZkBX9lmJmIYqnaNNktYIcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759411194; c=relaxed/simple;
	bh=ez/QRsUxhZHB1Mok5xRLVTJATgBPJV6mXo820HcaV8g=;
	h=To:Subject:From:Message-Id:Date; b=tpuA9JM8Qzq5u1iM55/ospRxP5geG7bw7yMZEqEhs4JQZxzDUcHVTuQ5tucYPQgYcj21Qn0xnfh68QIXOv6DLICOKigwv12MCt+ZEVHi8owHeoEi+nII7uklk8qsJQfqbXr89IBiJGIEVsUWOLMUqtu9e8kfys0kNojbcLMH0sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsBKUru7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsBKUru7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A401AC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759411193;
	bh=ez/QRsUxhZHB1Mok5xRLVTJATgBPJV6mXo820HcaV8g=;
	h=To:Subject:From:Date:From;
	b=HsBKUru7Dtp5mAMJuwVxbVjwzhvRi7Nm2ACHD/fn/8seZ8dTlJVVnZA0h787q0k2Y
	 96kZQx+AbFCu33aJRzVf6QZnQCY4DkDdiT3II5TBL/clishsYPCj6AfsmQekjiYC19
	 3xeiCKGnwIQNWYBxlrqsL+NZZhwvE1Svf/c8I644JeeXal/n8R53o4nvtHp+c2hhtI
	 Rjscz/EMBbhQptcJvl29EnkiXtPup0n2Z/yQ/bnQTA96y88ktvJfGumtxtVybK+5M3
	 Rdjkg/WDJS9XqXO+r6JZ8FG6YiXQNq6MXp0V5/rGf9F3bBsdYLuyHnSQwWA+ujVFER
	 3uw6Jt+QjZ1Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B23CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941119358.30615.12304395573218847754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa62e92c5021880297d75f4cf6e1c85cb28885f91d222e4460c27ab2f8cce295
Date: Thu, 02 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759411193
