Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538E01946CA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717580783; cv=none; b=NXiXaUxxOpCUTrm8nR1dWCoV09UYRM3j3T1H5X1hzKkcx8p38Q/Aslyvr4o8KLAQ25UAi6s+2PmXBYujn1op+ZnPfbHJ/LuQ2qBEttr0+WB/EHBa3CPCQGyAXdqAB5w/LdL9sQjVDx4rVWgcMtazwQWyJL76aomcqbMI0oeD6bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717580783; c=relaxed/simple;
	bh=YI5C7+Qa9xVbw38L37djF3w1QqTIrGfUo04z5ofJuXo=;
	h=To:Subject:From:Message-Id:Date; b=mHRWySNgSIaJjUHNH9vIaRm7YpOU5k2ug32HEsB4WsLN8JOLAtUGsaWZuxnwj7lmgExflFPMPPRlNzaCAd5M3cCLwnpUEYvd/OKKOGLn8ZmD8AdUEWm0sDi6l+kkbg2iWY3vjK68DI+zhy4zD4HwK+NhUDjiB7qzBefY30DyaoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i17LWpXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i17LWpXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA8CC3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717580782;
	bh=YI5C7+Qa9xVbw38L37djF3w1QqTIrGfUo04z5ofJuXo=;
	h=To:Subject:From:Date:From;
	b=i17LWpXKsQtYhoqtYEfWpv2WuYChi93+YbtpviCSmtNj5dbHT4+ln3hiumMsWnjAC
	 KkvM+yPCRKB9oxXEGGxEgYmpXQW0nA3IX+pmfm8k4p/m/oVxa7Mhls4/evYGgIsJel
	 SUYyjV+VPY8YbWF6EkodJeT0J65dpFVJhczJwF7tXhzfQknSg3Rw516Ah3KMn0+TLR
	 h97m1SYot3LkS7O4zdjZzkjuXEz7ax0UzWylV4btAaEwhoQxcXowhwMoK6kbRrFM1G
	 Z2iYkFlhMPbISRUD8UebtdjmwtXJYQzHJcs1CFj1ilg7pAWTzUHK2setZtQUs8ONUm
	 Bj3sGPzmRsleQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C665AC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 09:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758078280.24644.7862102117117295855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db790dd02fb1efa34d341ab0675ed70da4b1e2e5f0800c18ad391c0b77fc12e4
Date: Wed, 05 Jun 2024 09:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717580782
