Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9487B3C6A57
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792308034; cv=none; b=BUHeWnQxbSMFn2vPgrss8W0Anwl1P/F8m7bAfoGQA7hJS4RHo/VtQUf/+N8ODYHVWN2XReD4p02KlHiLzEb9gE3rKxXnP8OT6/XHnnb8z5bWIAIN15vHtYeN4jxRnwvUaxpDTPlmzoOQ3zXnDQFfIJShcHLi6oOhKjiFQKCix44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792308034; c=relaxed/simple;
	bh=zQ5uu4E6g9rggMTNmxwwC8Q5YBjP38lRTpMJlaOvJcE=;
	h=To:Subject:From:Message-Id:Date; b=SQLaGkLeTMc+oHU8Ahf8XNQiGGoWtoEa/hCqO8khIKM5JIEDgky0YxZ+WTUmdtnx7QeBm54flO0FbaZVWMkqV7IYsccsdBKrlcxKxn8PFSiJbU4S+C71MvdBBXEnn/vA145iAB16lKon0g0WTOdTPk4672BTyzIyqYAwdp+HLcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFwB6EsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFwB6EsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B59C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792308033;
	bh=zQ5uu4E6g9rggMTNmxwwC8Q5YBjP38lRTpMJlaOvJcE=;
	h=To:Subject:From:Date:From;
	b=DFwB6EsY1GlkZKIX9i+MeFTRp2Tdfk7qTwXnPnRER/9k1jZ4ip4liNmQ4qUHjSfY2
	 mfS6jBqvwBaX/RvGMH3tF68gVgaX5YSsB5DAUl261gyJw19IwMC1N2nmbuCHmi8eOy
	 BdMcj//iOE2yrCIGAP1/DC33ZbgsVmWAcv+8WPgkKHOlLCmcAU/NT03EWyBEdWvP1M
	 St40dtR9VnluWupDKquqBfYEecynigQYue/IgqBRW174zE0B4exnFqeoo89p4H1N7u
	 v5MOpAziYoUC9TCsWrrHxpqsDtBU7xPDZI0U8lFNVjevsAmZlAjteIcXsx3weXZ/YL
	 vMNh9NMG76c+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF9ADCCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230803369.16967.15077215069280018319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d49ddef579032dd28e267b6ef3edcb938dea3468ce62e6891f0b826952499f2
Date: Sun, 18 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792308033
