Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670693FE55
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719656063; cv=none; b=hD9SmXfv6gyYUvT2FaltvGqoxa5PTGBbfcBuDuHZfs1OUxQ5Cb8SvhwjkuSBuW6P1MIse3N5P/Wvq5SWQCMuAeAfDK5rfxdVI1BdUqiOkthlFvr16A0NPe5DbKAUf8rlxQlHGVqMcLNwerrc6UOCZWddeaZ9brp0bK1Zld++KnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719656063; c=relaxed/simple;
	bh=E70RFSCd5jjyqqE49GPc4YONPZ4udhdnBddfvRbTKw8=;
	h=To:Subject:From:Message-Id:Date; b=bqEVd/HKuP/IPqMRKdR52kDpwPsQnwkTRWhDzMAf3S827+qVfoYSTVuaI8q32if9gUeJTez8099fBCyPOZJXNHg3kJaWFzklMPoPHC7Pnnk/4MoC2eJ6coHU/LZB5BBMfjLpCHbydNBQmHD8ZgxJN8uxTc5mlUsp2jgxuRDQwnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9wbY7Em; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9wbY7Em"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C9EC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719656062;
	bh=E70RFSCd5jjyqqE49GPc4YONPZ4udhdnBddfvRbTKw8=;
	h=To:Subject:From:Date:From;
	b=c9wbY7EmwpFDvz41juktzkoy2nbBQF0PHUlIa2MhqDAqTngf0vNSOazicZ5OlUTFR
	 LYPAdJHJiAMChI9Zfw6a1Fv8MqbfujbbPtZYBlvPwvn8GF5r80NSxTD1knq/JzYGIM
	 Z+9BrqU4/Bo7mmBT2MqID8AnmXFiKH69iiMSICwGs5qBzDPaarE1EJgDOj33/z12QH
	 GamBc3ajcvqBiMhLqdVmh5n4n4RYtNm4/TC7bWlDoMigqozrvdhMKXx8HG3FmyzO7e
	 7WzxbVI4Y/oWPf3qY4h4+To5D9YNlt9zkwrVNTeWDUL0F71jDTwSJb0PxRy2/VhMVM
	 LpVdOfDQxHOKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1DDAC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 10:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965606281.18769.8968568848985132943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb03ce3f74a176f7cf25a0efa151dc79f8540a0215662601c345242eb81bed33
Date: Sat, 29 Jun 2024 10:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719656062
