Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C8D19E7D1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737149154; cv=none; b=FrByrRMqSts1sZK4W59PS08E+8XeWDUvSevwTZCSHk7kjyd1zu1HyvYK6qpr2KSQfB2An03gFLWJJeXEOGH0VQp5tVrlWS2eAFKVC3PtXVgvYXjVhVnelLTD3y1BMbtpmYsoP+V1XbHiR96/HCz1sOCRQkHCh49fUUbnGQtfgAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737149154; c=relaxed/simple;
	bh=4/qarL5gP6ZVVx03NK8jt/7aiccjH/jQ0Bqk7fdA0zk=;
	h=To:Subject:From:Message-Id:Date; b=jFBwgoHu5aatGClC4iBgLdvTBSonAxChT+HtN4pnw098qqlR7Ge2Xrcd6WihwN299dVBkGWqr91MYAMwx99isopp4pWh0UfP9GckKkayX43Tm3xnLpk2h/F8RjaA11T4E88eGB+aFvjUEaNOZdETjaQXuCxKSn8k3TMEI2LT7Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uazxg/zh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uazxg/zh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A600BC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737149153;
	bh=4/qarL5gP6ZVVx03NK8jt/7aiccjH/jQ0Bqk7fdA0zk=;
	h=To:Subject:From:Date:From;
	b=Uazxg/zhQ9kZ8zkL0b2hjLN97COv82Snkxtr3LFy84MoGhY+6u2q4Uy3qhx847ZXo
	 lfDUexeFW1B8SEBamNyq/Yhi5ZL6dX26iG2YRQGFZQ5FKhIw/QH/HCX4Z+bgzR12Zs
	 sMYvIb4bcnQUiVlQjZTyqnd8aMCqdMPPZ3B8lnsHM7kbtwjzA2FF+dYQpwIIuhRNDb
	 GXh2g+sefOYiE+q0pb7nsDicou/Muvm81yextxx7bRHTG+ctWDIy6lDRkX93wzu40s
	 VJgAeDB9FoUTu7fnY1y+XhTxdOzTKy4UGqXX24KhSGsWTXqYTMu3PpxAWG0uF0bUDP
	 DvMifX9b8pjxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE81C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714915358.31574.7132840703195083297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d3372597fb203a5bbbb892e178927bddd2e32b71185fc4dfe4cf235471fff95
Date: Fri, 17 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737149153
