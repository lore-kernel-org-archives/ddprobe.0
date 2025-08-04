Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C091D8DE1
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754273994; cv=none; b=MjEnbpib/Z1Kp92bxZVENXFPG143Vssen9+skbexEPk3rMB5AhFrw0ZqJdoU29b4REt35xgns9QQlKZUth6Zh2EHlf61B59Q1Hj0noE2VWNbUR1nwYv70esV4s+WyJ2AKkYTAem5Ahl/efq7pi0xGeFxYfTPbAqoYv4JJKbxiB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754273994; c=relaxed/simple;
	bh=bPQFV079D1ePwFiE+0eDWbp2AMpl5gx5MmQIJbb1Nws=;
	h=To:Subject:From:Message-Id:Date; b=pVCO6uCdybWgj3qkFNYKEOjkv/nc+badFuFyvk48Ox8zs0kZpluK7cdn8U+ZEmr9zvZOzHhFTMnb884lZ7ZSvf4n9I08DnQjb1wqU/YECkY270djepCxJPQJN3QsxDHWhOBTGO2Te8Q9Z5oQQjKVn/zlQM6Z5AikXOWg5cyfUJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mc+7jFGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mc+7jFGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D32FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754273993;
	bh=bPQFV079D1ePwFiE+0eDWbp2AMpl5gx5MmQIJbb1Nws=;
	h=To:Subject:From:Date:From;
	b=mc+7jFGXfG6BH0yXlA4x6VKDPsVIiLwra2QgPOhO4TVUgIaAj3XcmRWeq4uD2Q4Nr
	 atAQ97ZeFGTRrE8lVi6rb8fWldg/ey4PVRgHw9UlWfORdvIXPw2Mt7+y+tNgCFxPct
	 sGsScgIfU0S0wVSxf92twRHxGP59IjzvefAdyyvZhOQLEfKEEQwxWDemRB0AR9U3on
	 /RS3tr4cwVfDinvsTqy+5fdZ1qO+ESfZ1oul04kdn4bxUaA+n5zJ9VM6GV0eJYkXJP
	 RyrIZ4Ou+MDJSntPxABRS5QXY4fU9VnXpuo30m39fE9gZAJekfgfzQgeBwe53//hs/
	 RipZcPjvQY9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E482C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175427399357.12550.18163996584328057878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a0c043fbbfe86b326de8edc246d456d764961b179891b376996bfea286c9a5
Date: Mon, 04 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754273993
